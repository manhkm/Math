//
//  ViewController.swift
//  1
//
//  Created by  on 4/7/16.
//  Copyright © 2016 manhkm. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var usrInputting :Bool = false
     var selectOperand : String = ""
    var targetNum :Double! = nil

    @IBOutlet weak var displayLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func inputNumber(sender: UIButton) {
        var displayNumber :String = "0"
        
        if !usrInputting {
            usrInputting = true
            displayNumber = (sender.titleLabel?.text)!
            
        } else {
            displayNumber = displayLable.text!
            displayNumber += (sender.titleLabel?.text)!
            
        }
        displayLable.text = displayNumber
        
        
    }
    @IBAction func operate(sender: UIButton) {
        
        if usrInputting {
            Enter()
            selectOperand = (sender.titleLabel?.text)!
        }
    }

    @IBAction func Enter() {
        
    }

    @IBAction func clearAll(sender: UIButton) {
    }
}

