//
//  ViewController.swift
//  Calculator
//
//  Created by yudonlee on 2022/05/27.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textLabel: UILabel!
    
    private var inputString: String?
    private var isOperationNow: Bool = false
    
    
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var signToggleButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController {
    
    @IBAction func didNumberButtonPressed(_ sender: UIButton) {
        if isOperationNow {
            inputString = nil
            isOperationNow.toggle()
        }
        var appended: String? = sender.titleLabel?.text
        
        if let inputString = inputString , let appended = appended{
            self.inputString! += appended
        } else {
            self.inputString = appended
        }
    
        textLabel.text = inputString
    }
    
    @IBAction func didOperationButtonPressed(_ sender: UIButton) {
        if let inputString = inputString {
            Calculation.calculator.pushNumber(inputString)
        }
        
        var buttonText: String? = sender.titleLabel?.text
        
        if let buttonText = buttonText {
            isOperationNow.toggle()
            let calculationValue = Calculation.calculator.pushOperator(buttonText)
            if let calculationValue = calculationValue {
                textLabel.text = calculationValue
            }
        }
    }
    
    @IBAction func didClearButtonPressed(_ sender: UIButton) {
        Calculation.calculator.allClear()
        textLabel.text = "0"
        inputString = nil
    }
    
    
}

