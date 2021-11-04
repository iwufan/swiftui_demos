//
//  CalculatorButtonRow.swift
//  Calculator
//
//  Created by davidjia on 2021/11/4.
//

import SwiftUI

struct CalculatorButtonRow: View {
    
    let row: [CalculatorButtonItem]
    
    var body: some View {
        HStack{
            ForEach(row, id: \.self) { item in
                CalculatorButton(title: item.title,
                                 size: item.size,
                                 backgroundColorName: item.backgroundColorName,
                                 action: {
                    print("Button:\(item.title)")
                })
            }
        }
    }
}
