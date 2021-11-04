//
//  CalculatorButton.swift
//  Calculator
//
//  Created by davidjia on 2021/11/4.
//

import SwiftUI

struct CalculatorButton: View {
    
    let fontSize: CGFloat = 38
    let title: String
    let size: CGSize
    let backgroundColorName: ColorNames
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: fontSize))
                .foregroundColor(.white)
                .frame(width: size.width, height: size.height)
                .background(Color(backgroundColorName.rawValue))
                .cornerRadius(size.width / 2)
        }
    }
}
