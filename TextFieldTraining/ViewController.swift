//
//  ViewController.swift
//  TextFieldTraining
//
//  Created by Daniel Golęba Frygies on 09/04:100.
//  Copyright © 2020 Tymon Golęba Frygies. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var contactNumberField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        passwordField.delegate = self
        usernameField.delegate = self
        contactNumberField.delegate = self
    }
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }


    @IBAction func buttonAction(_ sender: Any) {
        textView.text = "Username: \(String(describing: usernameField.text)) \n Passowrd: \(passwordField.text!) \n Contact number: \(contactNumberField.text!)"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //when touched outside the contactNumberField keyboard will be dismissed
        contactNumberField.resignFirstResponder()
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      // when you tap the field it will resign the first responder status
        textField.resignFirstResponder()
        return true
    }
}

