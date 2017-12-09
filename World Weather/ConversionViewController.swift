//
//  ConversionViewController.swift
//  World Weather
//
//  Created by Ravi Bastola on 12/9/17.
//  Copyright © 2017 Ravi Bastola. All rights reserved.
//

import UIKit
import Foundation

class ConversionViewController: UIViewController {
    
    @IBOutlet var celsiousLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func farhenheitFieldEditingChanged (_ textField: UITextField) {
        guard let text = textField.text, let value = Double(text) else {
            farenheitValue = nil
            return
        }
        farenheitValue = Measurement(value: value, unit: .fahrenheit)
    }
    
    @IBAction func dismissKeyboard (_ sender: UITapGestureRecognizer) {
            textField.resignFirstResponder()
    }
    
    
    
    var farenheitValue: Measurement<UnitTemperature>? {
        didSet {
            updateCelciusLabel()
        }
    }
    
    var celciusValue: Measurement<UnitTemperature>? {
        guard let farenheitValue = farenheitValue else {
            return nil
        }
        return farenheitValue.converted(to: .celsius)
    }
    
    func updateCelciusLabel() {
        guard let celsiusValue = celciusValue else {
            celsiousLabel.text = "???"
            return
        }
        celsiousLabel.text = "\(celsiusValue.value)"
    }
}
