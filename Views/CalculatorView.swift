//
//  CalculatorView.swift
//  Calculator
//
//  Created by Tyler Wysocki on 1/23/23.
//

import SwiftUI

// MARK: - BODY
struct CalculatorView: View {
    
    @EnvironmentObject private var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                displayText
                buttonPad
            }
            .background(Color.black)
            .padding()
        }
        .background(Color.black)
        .ignoresSafeArea(.all)
    }
}

// MARK: - PREVIEWS
struct CalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        CalculatorView()
            .environmentObject(CalculatorView.ViewModel())
    }
}

// MARK: - COMPONENTS
extension CalculatorView {
    
    private var displayText: some View {
        Text(viewModel.displayText)
            .frame(maxWidth: .infinity, alignment: .trailing)
            .foregroundColor(.white)
            .font(.system(size: 100, weight: .light))
            .bold()
            .lineLimit(1)
            .minimumScaleFactor(0.2)
            .padding()
    }
    
    private var buttonPad: some View {
        VStack(spacing: Constants.padding) {
            ForEach(viewModel.buttonTypes, id: \.self) { row in
                HStack(spacing: Constants.padding) {
                    ForEach(row, id: \.self) { buttonType in
                        CalculatorButton(buttonType: buttonType)
                    }
                }
            }
        }
    }
}

