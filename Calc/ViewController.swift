//
//  ViewController.swift
//  Calc
//
//  Created by Vesko on 1.12.18.
//  Copyright © 2018 Vesko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    enum Operator {
        case plus
        case minus
        case multiply
        case devide
        case percentage
    }
    @IBOutlet weak var display: UILabel!
    var a = 0
    var b = 0
    var op : Operator = Operator.plus
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickEquals(_ sender: Any) {
        let result: Int
        switch op {
        case .plus:
            result = a + b
        case .minus:
            result = a - b
        case .multiply:
            result = a * b
        case .devide:
            if b == 0 {
                display.text = "Error"
                return
            } else {
                result = a / b
            }
        case .percentage:
            result = a / b
            
        }
        display.text = String(result)
    }
    
    @IBAction func clickOne(_ sender: Any) {
        b = 1
        display.text = String(b)
    }
   
    @IBAction func clickTwo(_ sender: Any) {
        b = 2
        display.text = String(b)
    }
    
    @IBAction func clickPlus(_ sender: Any) {
        a = b
        b = 0
        display.text = String(b)
        op = Operator.plus
    }
    
    @IBAction func clickThree(_ sender: Any) {
        b = 3
        display.text = String(b)
    }
    
    @IBAction func clickFour(_ sender: Any) {
        b = 4
        display.text = String(b)
    }
    
    @IBAction func clickFive(_ sender: Any) {
        b = 5
        display.text = String(b)
    }
    
    @IBAction func clickSix(_ sender: Any) {
        b = 6
        display.text = String(b)
    }
    
    @IBAction func clickSeven(_ sender: Any) {
        b = 7
        display.text = String(b)
    }
    
    @IBAction func clickMinus(_ sender: Any) {
        a = b
        b = 0
        op = Operator.minus
     
    }
    
    @IBAction func clickEight(_ sender: Any) {
        b = 8
        display.text = String(b)
        
    }
    
    @IBAction func clickNine(_ sender: Any) {
        b = 9
        display.text = String(b)
    }
    
    @IBAction func clickMultiply(_ sender: Any) {
        a = b
        b = 0
        op = Operator.multiply
    }
    
    @IBAction func clickDevide(_ sender: Any) {
        a = b
        b = 0
        op = Operator.devide
    }
    
    @IBAction func clickZero(_ sender: Any) {
        b = 0
        display.text = String(b)
    }
    
    @IBAction func clickPercentage(_ sender: Any) {
        a = b
        b = Int(0.01)
        display.text = String(b)
        op = Operator.percentage
    }
    
}


