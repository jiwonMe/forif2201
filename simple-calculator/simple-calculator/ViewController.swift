//
//  ViewController.swift
//  simple-calculator
//
//  Created by Jiwon Park on 2022/04/02.
//

import UIKit

@IBDesignable
class ViewController: UIViewController {
    
    enum Operator{
        case add
        case subtract
        case multiply
        case divide
        case exp
    }

    enum Action {
        case number
        case operation
        case calulation
        case clear
    }
    
    var resultString: String = "0"
    
    var firstOperand: String? = nil
    
    var currentOperator: Operator? = nil

    var previousAction: Action? = nil
    
    @IBOutlet weak var resultDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapClearButton(_ sender: Any) {
        resultString = "0"
        renderResult()
    }
    

    @IBAction func tapNumberButton(_ sender: UIButton) {
        guard let title = sender.titleLabel?.text else { return }
        if previousAction == .operation {
            resultString = "0"
        }
        if resultString.count < 10 {
            resultString = resultString == "0" ? title : resultString + title
        }
        previousAction = .number
        renderResult()
    }
    
    @IBAction func tapFloatPoint(_ sender: Any) {
        if resultString.contains(".") { return }
        resultString += "."

        previousAction = .number
        renderResult()
    }
    
    @IBAction func tapPercentButton(_ sender: Any) {
        guard let number = Double(resultString) else { return }
        resultString = String(number / 100)
        previousAction = .number
        renderResult()
    }
    
    @IBAction func tapExponentialButton(_ sender: Any) {
        if previousAction == .number || previousAction == .calulation {
            if currentOperator != nil {
                resultString = calculate(firstOperand: firstOperand!, secondOperand: resultString, currentOperator: currentOperator!)
            }
            firstOperand = resultString
            renderResult()
            currentOperator = .exp
            previousAction = .operation
        }
    }
    
    @IBAction func tapDivideButton(_ sender: Any) {
        if previousAction == .number || previousAction == .calulation {
            if currentOperator != nil {
                resultString = calculate(firstOperand: firstOperand!, secondOperand: resultString, currentOperator: currentOperator!)
            }
            firstOperand = resultString
            renderResult()
            currentOperator = .divide
            previousAction = .operation
        }
    }
    
    @IBAction func tapMutiplyButton(_ sender: Any) {
        if previousAction == .number || previousAction == .calulation {
            if currentOperator != nil {
                resultString = calculate(firstOperand: firstOperand!, secondOperand: resultString, currentOperator: currentOperator!)
            }
            firstOperand = resultString
            renderResult()
            currentOperator = .multiply
            previousAction = .operation
        }
    }
    
    @IBAction func tapAddButton(_ sender: Any) {
        if previousAction == .number || previousAction == .calulation {
            if currentOperator != nil {
                resultString = calculate(firstOperand: firstOperand!, secondOperand: resultString, currentOperator: currentOperator!)
            }
            firstOperand = resultString
            renderResult()
            currentOperator = .add
            previousAction = .operation
        }
    }
    
    @IBAction func tapSubtractButton(_ sender: Any) {
        if previousAction == .number || previousAction == .calulation {
            if currentOperator != nil {
                resultString = calculate(firstOperand: firstOperand!, secondOperand: resultString, currentOperator: currentOperator!)
            }
            firstOperand = resultString
            renderResult()
            currentOperator = .subtract
            previousAction = .operation
        }
    }
    
    @IBAction func tapCalculateButton(_ sender: Any) {
        if previousAction == .number {
            if let fo = firstOperand, let op = currentOperator {
                resultString = calculate(firstOperand: fo, secondOperand: resultString, currentOperator: op)
                firstOperand = nil
                currentOperator = nil
                renderResult()
            }
        }
    }
    
    func calculateResult() {
        guard let first = firstOperand, let op = currentOperator else { return }
        resultString = calculate(firstOperand: first, secondOperand: resultString, currentOperator: op)
        firstOperand = resultString
        renderResult()
    }

    func calculate(firstOperand: String, secondOperand: String, currentOperator: Operator) -> String {
        var fo = Double(firstOperand)
        let so = Double(secondOperand)
        switch currentOperator {
        case .add:
            fo = fo! + so!
        case .subtract:
            fo = fo! - so!
        case .multiply:
            fo = fo! * so!
        case .divide:
            fo = fo! / so!
        case .exp:
            fo = pow(fo!, so!)
        }
        return String(fo!)
    }

    func clearResult() {
        resultString = "0"
        renderResult()
    }
    
    func renderResult() {
        resultDisplay.text = resultString
    }
}

