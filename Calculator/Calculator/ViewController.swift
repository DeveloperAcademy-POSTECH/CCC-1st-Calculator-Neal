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
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var multiButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var signToggleButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController {
    
    @IBAction func didOneButtonPressed(_ sender: UIButton) {
        var appended: String? = ""
        switch sender {
        case oneButton:
            appended = "1"
        case twoButton:
            appended = "2"
        case threeButton:
            appended = "3"
        case fourButton:
            appended = "4"
        case fiveButton:
            appended = "5"
        case sixButton:
            appended = "6"
        case sevenButton:
            appended = "7"
        case eightButton:
            appended = "8"
        case nineButton:
            appended = "9"
        case zeroButton:
            appended = "0"
        default:
            appended = "0"
        }
        
        if let inputString = inputString , let appended = appended{
            self.inputString! += appended
        } else {
            self.inputString = appended
        }
        textLabel.text = inputString
    }
    
}

