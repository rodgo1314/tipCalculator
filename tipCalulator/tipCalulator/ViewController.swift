//
//  ViewController.swift
//  tipCalulator
//
//  Created by Rodrigo Leyva on 1/8/19.
//  Copyright © 2019 Rodrigo Leyva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    


    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Tip Calculator"
    }


    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    @IBAction func calculateTip(_ sender: Any) {
        
        let tipPercent = [0.18,0.2,0.22]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercent[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipLabel.text = String(format:"$%.2f",tip)
        totalLabel.text = String(format:"$%.2f",total)
        
        
        
    }
    
    
    
    
    
    
}

