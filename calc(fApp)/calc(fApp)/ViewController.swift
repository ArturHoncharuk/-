//
//  ViewController.swift
//  calc(fApp)
//
//  Created by Artur Honcharuk on 17.12.2020.
//

import UIKit

class ViewController: UIViewController {
    var numberFromScreen: Double = 0;
    var firstNum: Double = 0;
    var operation: Int = 0;
    var mathSign: Bool = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buttonAction(_ sender: UIButton) {
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
            
        else {
            result.text = result.text! +  String(sender.tag)
        }
        numberFromScreen = Double(result.text!)!
    }
    
    @IBAction func logic(_ sender: UIButton) {
        if result.text != "" && sender.tag != 10 && sender.tag != 15  {
            firstNum = Double(result.text!)!
            
            if sender.tag == 11 { // Divide
                result.text = "÷";
            }
                else if sender.tag == 12 { // Multipl
                    result.text = "×";
                }
            
                else if sender.tag == 13 { // subtraction
                    result.text = "-";
                }
                
                else if sender.tag == 14 { // Add
                    result.text = "+";
                }
            
            operation = sender.tag
            mathSign = true;
        }
                else if sender.tag == 15 { // Count all
                    if operation == 11 {
                        result.text = String(firstNum / numberFromScreen)
                    }
                    else if operation == 12 {
                        result.text = String(firstNum * numberFromScreen)
                    }
                    else if operation == 13 {
                        result.text = String(firstNum - numberFromScreen)
                    }
                    else if operation == 14 {
                        result.text = String(firstNum + numberFromScreen)
                    }
                }
                if sender.tag == 10 {
                    result.text = ""
                    firstNum = 0
                    numberFromScreen = 0
                    operation = 0
                }
            
            }

        }
    


