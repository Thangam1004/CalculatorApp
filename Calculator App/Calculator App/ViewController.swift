//
//  ViewController.swift
//  Calculator App
//
//  Created by Thangam on 10/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var calculateResult: UILabel!
    
    var number1 = 0
    var number2 = 0
    var numberResult = 0
        
    var operationSymbol = "+"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        clearAll()
    }
    
    func clearAll() {
        calculateResult.text = ""
    }

    @IBAction func allClearTap(_ sender: Any) {
        clearAll()
    }
    
    @IBAction func moduloBtnTap(_ sender: Any) {
        operationSymbol = "%"
        number1 = Int(calculateResult.text!)!
        clearAll()
    }
    
    @IBAction func divideBtnTap(_ sender: Any) {
        operationSymbol = "/"
        number1 = Int(calculateResult.text!)!
        clearAll()
    }
    
    @IBAction func multiplyBtnTap(_ sender: Any) {
        operationSymbol = "*"
        number1 = Int(calculateResult.text!)!
        clearAll()
    }
    
    @IBAction func subtractBtnTap(_ sender: Any) {
        operationSymbol = "-"
        number1 = Int(calculateResult.text!)!
        clearAll()
    }
    
    @IBAction func addBtnTap(_ sender: Any) {
        operationSymbol = "+"
        number1 = Int(calculateResult.text!)!
        clearAll()
    }
    
    @IBAction func resultBtnTap(_ sender: Any) {
        number2 = Int(calculateResult.text!)!
                
                switch operationSymbol {
                case "+":
                    numberResult = number1+number2
                    calculateResult.text = String(numberResult)
                case "-":
                    numberResult = number1-number2
                    calculateResult.text = String(numberResult)
                case "*":
                    numberResult = number1*number2
                    calculateResult.text = String(numberResult)
                case "/":
                    numberResult = number1/number2
                    calculateResult.text = String(numberResult)
                case "%":
                    numberResult = number1%number2
                    calculateResult.text = String(numberResult)
                default:
                    calculateResult.text = "ERROR"
                    
                }
    }
    
    @IBAction func doubleZeroBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "00"
    }
    
    @IBAction func zeroBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "0"
    }
    
    @IBAction func oneBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "1"
    }
    
    @IBAction func twoBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "2"
    }
    
    @IBAction func threeBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "3"
    }
    
    @IBAction func fourBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "4"
    }
    
    @IBAction func fiveBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "5"
    }
    
    @IBAction func sixBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "6"
    }
    
    @IBAction func sevenBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "7"
    }
    
    @IBAction func eightBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "8"
    }
    
    @IBAction func nineBtnTap(_ sender: Any) {
        calculateResult.text = calculateResult.text! + "9"
    }
}

