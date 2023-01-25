//
//  CalculatorApp.swift
//  Calculator
//
//  Created by Tyler Wysocki on 1/23/23.
//

import SwiftUI

@main
struct CalculatorApp: App {
    var body: some Scene {
        WindowGroup {
            CalculatorView()
                .environmentObject(CalculatorView.ViewModel())
        }
    }
}
