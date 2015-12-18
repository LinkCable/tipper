//
//  ViewController.swift
//  tipper
//
//  Created by Philippe Kimura-Thollander on 12/18/15.
//  Copyright © 2015 Philippe Kimura-Thollander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onEditingChanged(sender: AnyObject) {
        
        var tipPercentages = [0.15, 0.20, 0.25]
        let tipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        
        var tip = 0.0
        var total = 0.0
        
        if let billAmount = Double(billField.text!){
            tip = billAmount * tipPercentage
            total = billAmount + tip
        }
        else {
            tip = 0.0
            total = 0.0
        }
        
        
        tipLabel.text = "$\(tip)0"
        totalLabel.text = "$\(total)0"
        
    }
    
    
}

