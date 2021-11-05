//
//  CalculatorButtonRow.swift
//  Calculator
//
//  Created by davidjia on 2021/11/4.
//

import SwiftUI

struct CalculatorButtonRow: View {
    
//    @Binding var brain: CalculatorBrain
//    var model: CalculatorModel
    @EnvironmentObject var model: CalculatorModel
    
    let row: [CalculatorButtonItem]
    
    var body: some View {
        HStack{
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title,
                                 size: item.size,
                                 backgroundColorName: item.backgroundColorName,
                                 action: {
//                    self.brain = self.brain.apply(item: item)
                    self.model.apply(item)
                })
            }
        }
    }
}
