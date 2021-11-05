//
//  CalculatorApp.swift
//  Calculator
//
//  Created by davidjia on 2021/11/4.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(CalculatorModel())
        }
    }
}
