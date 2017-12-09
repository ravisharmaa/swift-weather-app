//
//  ConversionViewController.swift
//  World Weather
//
//  Created by Ravi Bastola on 12/9/17.
//  Copyright © 2017 Ravi Bastola. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiousLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func farhenheitFieldEditingChanged (_ textField: UITextField) {
        guard let text = textField.text, !text.isEmpty else {
            celsiousLabel.text = "???"
            return
        }
        celsiousLabel.text = text
    }
    
    @IBAction func dismissKeyboard (_ sender: UITapGestureRecognizer) {
        textField.resignFirstResponder()
    }
}
