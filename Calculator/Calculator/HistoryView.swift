//
//  HistoryView.swift
//  Calculator
//
//  Created by davidjia on 2021/11/5.
//

import SwiftUI

struct HistoryView: View {

    @Environment(\.presentationMode) var presentationMode
    
    @ObservedObject var model: CalculatorModel
    
    var body: some View {
        VStack {
            Button("关闭") {
                presentationMode.wrappedValue.dismiss()
            }
            Spacer()
            if model.totalCount == 0 {
                Text("没有履历")
            } else {
                HStack {
                    Text("履历").font(.headline)
                    Text("\(model.historyDetail)").lineLimit(nil)
                }
                HStack {
                    Text("显示").font(.headline)
                    Text("\(model.brain.output)")
                }
                Slider(value: $model.slidingIndex, in: 0...Float(model.totalCount), step: 1)
            }
            Spacer()
            
        }.padding()
    }
}
