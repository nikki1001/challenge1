//
//  ViewController.swift
//  Challenge1
//
//  Created by Revanth Samavedam on 11/8/14.
//  Copyright (c) 2014 cornFalkes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
// Outlets for Labels and buttons 
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var buttonTextField: UITextField!
    
    @IBOutlet weak var sendMailButton: UIButton!
    
    @IBOutlet weak var messageLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
   
//Shortcut function to resignFirstResponder 
    
    func resignfirstresponder () {
        
        messageTextField.resignFirstResponder()
        nameTextField.resignFirstResponder()
    }
  
//Send Mail Action
    
    @IBAction func sendMailButton(sender: UIButton) {
        
        if nameTextField.text == "" || messageTextField.text == "" {
            
            messageLabel.hidden = false
            messageLabel.textColor = UIColor.redColor()
            messageLabel.text = " Enter both Name and Message"
            resignFirstResponder()
            
            
        } else {
            
            messageLabel.hidden = false
            messageLabel.textColor = UIColor.greenColor()
            messageLabel.text = "Message sent to " + nameTextField.text
            nameTextField.resignFirstResponder()
            sendMailButton.setTitle("Mail sent", forState: UIControlState.Normal)
            nameTextField.text = ""
            messageTextField.text = ""
            resignFirstResponder()
            
            
        }
        
    }
    
//Reset button action
    
    @IBAction func resetButton(sender: UIButton) {
        
        nameTextField.text = ""
        messageTextField.text = ""
        sendMailButton.setTitle("Send Mail", forState: UIControlState.Normal)
        messageLabel.hidden = true
        resignFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

