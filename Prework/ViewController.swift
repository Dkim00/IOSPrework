//
//  ViewController.swift
//  Prework
//
//  Created by admin on 8/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let defaults = UserDefaults.standard
        
        defaults.set(0.15, forKey: "tip1")
        defaults.set(0.18, forKey: "tip2")
        defaults.set(0.20, forKey: "tip3")
        
        defaults.synchronize()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func calculateTip(_ sender: Any) {
        //Gets bill amount from text field
        
        let defaults = UserDefaults.standard
        //sets the default values for the tips
        let tip1 = defaults.double(forKey: "tip1")
        let tip2 = defaults.double(forKey: "tip2")
        let tip3 = defaults.double(forKey: "tip3")
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // multiplies tip by tip percetange to get total tip
        let tipPercentages = [tip1,tip2,tip3]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        //uses tip control returns an index based on slider, then the index is used to select the tip from list
        
        let total = bill + tip
        
        //updates tip label
        tipAmountLabel.text = String(format: "$%.2f",tip)
        
        //updates total
        totalLabel.text = String(format: "%.2f", total)
    }
}
