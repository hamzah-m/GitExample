//
//  ViewController.swift
//  BasicInteractions
//
//  Created by Hamzah Mugharbil on 7/5/17.
//  Copyright © 2017 Hamzah Mugharbil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    var temp: String = ""
    
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        label.text = "Hello, \(textField.text!)!"
        textField.resignFirstResponder()
        
    }
    
    @IBAction func `switch`(_ sender: UISwitch) {
        
        if(sender.isOn){
            label.text = temp
        } else{
            temp = label.text!
            label.text = ""
        }
        
        
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // Random comment.
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        textField.becomeFirstResponder()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

