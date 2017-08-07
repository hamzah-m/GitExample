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
    
    @IBOutlet weak var toggler: UISwitch!
    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        temp = textField.text!
        
        if(toggler.isOn){
            label.text = "Hello, \(temp)!"
            
        }else {
            
            label.text = ""
            
        }
        
        textField.resignFirstResponder()
        
        
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        
        if(!sender.isOn){
            temp = label.text!
            label.text = ""
        }else {
            label.text = "Hello, \(temp)"
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

