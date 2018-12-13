//
//  ViewController.swift
//  coursework-4641492-calculator
//
//  Created by Sanood Welagedara on 13/12/2018.
//  Copyright © 2018 Sanood Welagedara. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numonScreen:Double = 0;
    var previousNum:Double = 0;
    var operation = 0;
    var performingOperations = false;

    @IBOutlet weak var outputLabel: UILabel!
    
    //Buttons for numbers (0 to 9)
    @IBAction func numberArray(_ sender: UIButton) {
        sender.animate();
        //checks if the user presses an operator. if true then prints the operator in to the screen
        if performingOperations == true
        {
            outputLabel.text = String(sender.tag-1);
            numonScreen = Double(outputLabel.text!)!;
            performingOperations = false;
            
        }
        
        else
        {
            //insert text to the output array
            outputLabel.text = outputLabel.text! + String(sender.tag-1)
            numonScreen = Double(outputLabel.text!)!
            
        }
        
    }
    
    //Buttons for operations (-,+,*,/,=,c)
    @IBAction func operations(_ sender: UIButton) {
        sender.animate();
        if outputLabel.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNum = Double(outputLabel.text!)!;
            
            if sender.tag == 12
            {
                //divition operator executed
                outputLabel.text = "/";
            }
            
            else if sender.tag == 13
            {
                //multiplication operator executed
                outputLabel.text = "x";
            }
            
            else if sender.tag == 14
            {
                //minus operator executed
                outputLabel.text = "-";
            }
            
            else if sender.tag == 15
            {
                //plus operator executed
                outputLabel.text = "+";
            }
            
            operation = sender.tag;
            performingOperations = true;
            
        }
        
        else if  sender.tag == 16
        {
            if operation == 12
            {
                outputLabel.text = String(previousNum / numonScreen);
            }
            
            else if operation == 13
            {
                outputLabel.text = String(previousNum * numonScreen);
            }
            
            else if operation == 14
            {
                outputLabel.text = String(previousNum - numonScreen);
            }
            
            else if operation == 15
            {
                outputLabel.text = String(previousNum + numonScreen);
            }
        }
        
        else if sender.tag == 11
        {
            outputLabel.text = "";
            previousNum = 0;
            operation = 0;
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
}

