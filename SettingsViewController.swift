//
//  SettingsViewController.swift
//  Prework
//
//  Created by admin on 8/24/22.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var setTip1: UITextField!
    @IBOutlet weak var setTip2: UITextField!
    @IBOutlet weak var setTip3: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let tip1 = Double(setTip1.text!) ?? 0.15
        let tip2 = Double(setTip2.text!) ?? 0.18
        let tip3 = Double(setTip3.text!) ?? 0.20
    
        let defaults = UserDefaults.standard
        defaults.set(tip1, forKey: "tip1")
        defaults.set(tip2, forKey: "tip2")
        defaults.set(tip3, forKey: "tip3")
        
        defaults.synchronize()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
