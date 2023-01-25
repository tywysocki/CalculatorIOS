//
//  Digit.swift
//  Calculator
//
//  Created by Tyler Wysocki on 1/23/23.
//

import Foundation

enum Digit: Int, CaseIterable, CustomStringConvertible {
    case zero, one, two, three, four, five, six, seven, eight, nine
    
    var description: String {
        "\(rawValue)"
    }
}
