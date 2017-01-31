//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Sierra 4 on 30/01/17.
//  Copyright © 2017 codeBrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // variable declaration
    var firstNumber = Double()
    var numberOnScreen = Double()
    var operation = false
    var opertorTagValue = Int()
    var result = Double()
    
    //lable for the main screen of the calculator
    @IBOutlet weak var lblMainScreen: UILabel!
    
    @IBAction func btnNumbers(_ sender: UIButton)
    {
        if operation == true
        {
            lblMainScreen.text = String(sender.tag - 1)
            numberOnScreen = Double(lblMainScreen.text!)!
            operation = false
        }
        else if operation == false
        {
            lblMainScreen.text = lblMainScreen.text! + String(sender.tag - 1)
            numberOnScreen = Double(lblMainScreen.text!)!
        }
        
    }
    @IBAction func btnOperators(_ sender: UIButton)
    {
        if lblMainScreen.text != "" && sender.tag != 11 && sender.tag != 17
        {   firstNumber = Double(lblMainScreen.text!)!
            if sender.tag == 12 //for +
            {
                //lblMainScreen.text = lblMainScreen.text! + " + "
                lblMainScreen.text = " + "
                opertorTagValue = 12
            }
            else if sender.tag == 13 //for /
            {
                //lblMainScreen.text = lblMainScreen.text! + " / "
                lblMainScreen.text = " / "
                opertorTagValue = 13
            }
            else if sender.tag == 14 //for *
            {
                //lblMainScreen.text = lblMainScreen.text! + " * "
                lblMainScreen.text = " * "
                opertorTagValue = 14
            }
            else if sender.tag == 15 //for -
            {
                //lblMainScreen.text = lblMainScreen.text! + " - "
                lblMainScreen.text = " - "
                opertorTagValue = 15
            }
            else if sender.tag == 16 //for %
            {
                //lblMainScreen.text = lblMainScreen.text! + " % "
                lblMainScreen.text = " % "
                opertorTagValue = 16
            }
            operation = true
        }
        else if sender.tag >= 18 && sender.tag <= 23
        {
            if sender.tag == 18
            {
                lblMainScreen.text = "sqrt"
                opertorTagValue = 18
            }
            else if sender.tag == 19
            {
                lblMainScreen.text = "log"
                opertorTagValue = 19
            }
            else if sender.tag == 20
            {
                lblMainScreen.text = "ln"
                opertorTagValue = 20
            }
            else if sender.tag == 21
            {
                lblMainScreen.text = "sin"
                opertorTagValue = 21
            }
            else if sender.tag == 22
            {
                lblMainScreen.text = "cos"
                opertorTagValue = 22
            }
        }
        else if sender.tag == 17
        {
            if opertorTagValue == 12
            {
                result = firstNumber + numberOnScreen
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 13
            {
                result = firstNumber / numberOnScreen
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 14
            {
                result = firstNumber * numberOnScreen
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 15
            {
                result = firstNumber - numberOnScreen
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            
            else if opertorTagValue == 16
            {
                result = numberOnScreen * 100
                lblMainScreen.text = "\(Float(result))%"
                numberOnScreen = result
            }
            // scientific calculations
            else if opertorTagValue == 18
            {
                result = sqrt(numberOnScreen)
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 19
            {
                result = log10(numberOnScreen)
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 20
            {
                result = log(numberOnScreen)
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 21
            {
                result = sin(numberOnScreen)
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 22
            {
                result = tan(numberOnScreen)
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
            else if opertorTagValue == 23
            {
                result = cos(numberOnScreen)
                lblMainScreen.text = "\(Float(result))"
                numberOnScreen = result
            }
        }
        else if sender.tag == 11
        {
            result = 0.0
            numberOnScreen = 0.0
            firstNumber = 0.0
            lblMainScreen.text = ""
            operation = false
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblMainScreen.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

