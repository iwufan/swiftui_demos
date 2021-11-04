//
//  View+Extension.swift
//  Calculator
//
//  Created by davidjia on 2021/11/4.
//

import Foundation
import SwiftUI

extension View {
    
    /// Common print method, print log while previewing
    func c_print(_ vars: Any...) -> some View {
        for v in vars { print(v)}
        return EmptyView()
    }
}
