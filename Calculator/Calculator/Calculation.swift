//
//  Calculation.swift
//  Calculator
//
//  Created by yudonlee on 2022/05/29.
//

import Foundation

class Calculation {
//    SingleTon으로 계산기에 저장된 값들을 관리한다.
    static let calculator: Calculation = Calculation()
    private init() { }
    var numberArray: [Double] = []
    var operatorArray: [String] = []
    func pushNumber(_ element: String?) {
        if let element = element,
            let strToDouble = Double(element) {
            numberArray.append(strToDouble)
        }
    }
    func pushOperator(_ element: String?) -> String? {
        if let element = element {
            operatorArray.append(element)
        }
        if operatorArray.count == 2 {
            let calculatedResult = valuesCalculation()
            if calculatedResult == Double(Int(calculatedResult)) {
                return String(Int(calculatedResult))
            }
            return String(calculatedResult)
        }
        return nil
    }
    func allClear() {
        numberArray = []
        operatorArray = []
    }
    func valuesCalculation() -> Double {
        var result: Double
        switch operatorArray.removeFirst() {
        case "+":
            result = numberArray[0] + numberArray[1]
        case "-":
            result = numberArray[0] - numberArray[1]
        case "/":
            result = numberArray[0] / numberArray[1]
        case "*":
            result = numberArray[0] * numberArray[1]
        default:
            result = 0
        }
        numberArray = [result]
        return result
    }
}
