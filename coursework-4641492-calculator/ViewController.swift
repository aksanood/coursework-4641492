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

    @IBOutlet weak var outputLabel: UILabel!
    
    //Buttons for numbers (0 to 9)
    @IBAction func numberArray(_ sender: UIButton) {
        
        //insert text to the output array
        outputLabel.text = outputLabel.text! + String(sender.tag-1)
        numonScreen = Double(outputLabel.text!)!
    }
    
    //Buttons for operations (-,+,*,/,=,c)
    @IBAction func operations(_ sender: UIButton) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

