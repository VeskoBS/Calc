//
//  ViewController.swift
//  Calc
//
//  Created by Vesko on 1.12.18.
//  Copyright © 2018 Vesko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var display: UILabel!
    var a = 0
    var b = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func clickEquals(_ sender: Any) {
        let result = a+b
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
    }
    
}

