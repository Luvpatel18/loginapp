//
//  ViewController.swift
//  Loginapp
//
//  Created by user224471 on 5/22/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var FirstNameTextField: UITextField!
    @IBOutlet weak var LastNameTextField: UITextField!
    @IBOutlet weak var CountryTextField: UITextField!
    @IBOutlet weak var AgeTextField: UITextField!
    @IBOutlet weak var UserInfoTextView: UITextView!
    @IBOutlet weak var statusLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        statusLabel.isHidden = true
    }
    
    @IBAction func AddButtonTapped(_ sender: UIButton) {
        guard let FirstName = FirstNameTextField.text, !FirstName.isEmpty,
              let LastName = LastNameTextField.text, !LastName.isEmpty,
              let Country = CountryTextField.text, !Country.isEmpty,
              let Age = AgeTextField.text, !Age.isEmpty else {
            statusLabel.text = "Complete the missing Info!"
            statusLabel.isHidden = false
            return
        }
        
        UserInfoTextView.text = "Name: \(FirstName) \(LastName)\nCountry: \(Country)\nAge: \(Age)"
    }
    
    @IBAction func SubmitButtonTapped(_sender: UIButton) {
        guard let FirstName = FirstNameTextField.text, !FirstName.isEmpty,
              let LastName = LastNameTextField.text, !LastName.isEmpty,
              let Country = CountryTextField.text, !Country.isEmpty,
              let Age = AgeTextField.text, !Age.isEmpty else {
            statusLabel.text = "Complete the missing Info!"
            statusLabel.isHidden = false
            return
        }
              
        statusLabel.text = "Successfully submitted!"
        statusLabel.isHidden = false
        
    }
    
    @IBAction func ClearButtontapped(_ sender: UIButton) {
        FirstNameTextField.text = ""
        LastNameTextField.text = ""
        CountryTextField.text = ""
        AgeTextField.text = ""
        UserInfoTextView.text = ""
        statusLabel.isHidden = true
        
    }


}

