//
//  CalculatorModel.swift
//  Calculator
//
//  Created by davidjia on 2021/11/5.
//

import Combine

class CalculatorModel: ObservableObject {
    
//    let objectWillChange = PassthroughSubject<Void, Never>()
//
//    var brain: CalculatorBrain = .left("0") {
//        willSet {
//            objectWillChange.send()
//        }
//    }
    
    @Published var brain: CalculatorBrain = .left("0")
    /// 点击的每一个按钮
    @Published var history: [CalculatorButtonItem] = []
    
    var historyDetail: String {
        history.map{$0.description}.joined()
    }
    
    var temporaryKept: [CalculatorButtonItem] = []
    
    var totalCount: Int {
        history.count + temporaryKept.count
    }
    
    var slidingIndex: Float = 0 {
        didSet {
            // 维护 history 和 temporaryKept
            keepHistory(upTo: Int(slidingIndex))
        }
    }
    /// 同时操作 brain 和 history
    func apply(_ item: CalculatorButtonItem) {
        brain = brain.apply(item: item)
        history.append(item)
        
        temporaryKept.removeAll()
        slidingIndex = Float(totalCount)
    }
    
    func keepHistory(upTo index: Int) {
        precondition(index <= totalCount, "Out of index.")
        
        let total = history + temporaryKept
        
        history = Array(total[..<index])
        temporaryKept = Array(total[index...])
        
        brain = history.reduce(CalculatorBrain.left("0"), { partialResult, item in
            partialResult.apply(item: item)
        })
    }
}
