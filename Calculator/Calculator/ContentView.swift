//
//  ContentView.swift
//  Calculator
//
//  Created by davidjia on 2021/11/4.
//

import SwiftUI

struct ContentView: View {
    
    let scale: CGFloat = UIScreen.main.bounds.width / 414
        
//    @State private var brain: CalculatorBrain = .left("0")
//    @ObservedObject var model = CalculatorModel()
    @EnvironmentObject var model: CalculatorModel
    
    @State private var edittingHistory = false
    
    var body: some View {
        VStack(spacing: 12) {
            Spacer()
            Button("操作履历：\(model.history.count)") {
                self.edittingHistory = true
            }.sheet(isPresented: self.$edittingHistory) {
                HistoryView(model: self.model)
            }

            Text(model.brain.output)
                .font(.system(size: 76))
                .minimumScaleFactor(0.5)
                .lineLimit(1)
                .frame(minWidth: 0,
                       maxWidth: .infinity,
                       alignment: .trailing)
//                .onTapGesture {
//
//                }.alert(model.historyDetail, isPresented: self.$edittingHistory) {
////                    hidden()
//                }
//            CalculatorButtonPad(brain: $model.brain)
//            CalculatorButtonPad(model: model)
            CalculatorButtonPad()
                .padding(.bottom)
//            Button("Test") {
//                self.brain = .left("1.23")
//            }
        }
        .scaleEffect(scale)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
//        ContentView()
//            .environment(\.colorScheme, .dark)
        ContentView().environmentObject(CalculatorModel())
    }
}
