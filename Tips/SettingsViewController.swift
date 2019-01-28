//
//  SettingsViewController.swift
//  Tips
//
//  Created by Eros Gonzalez on 1/23/19.
//  Copyright © 2019 Eros Gonzalez. All rights reserved.
//

import UIKit

class SettingsViewController: ViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var picker: UIPickerView!
    
    var class1 = ViewController()
    
    
    let money = ["$0.00", "€0.00", "£0.00", "¥0.00"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return money[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return money.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
       // ViewController().tipLabel.text = money[row]
        
        class1.tipLabel?.text = money[row]
        
        print (class1.tipLabel?.text as Any)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

}
