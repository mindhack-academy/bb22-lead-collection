//
//  FormVC.swift
//  Lead Collection
//
//  Created by MindHack on 09/05/2019.
//  Copyright © 2019 MindHack. All rights reserved.
//

import Foundation
import UIKit

class FormVC: UIViewController {
    
    @IBOutlet weak var technologySegmentedController: UISegmentedControl!
    @IBOutlet weak var firstnameTextField: UITextField!
    @IBOutlet weak var lastnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var reasonTextView: UITextView!
    @IBOutlet weak var contactDateDatePicker: UIDatePicker!
    @IBOutlet weak var sendButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sendButtonWasPressed(_ sender: Any) {
   
        print(
            firstnameTextField.text,
              lastnameTextField.text,
              emailTextField.text,
              phoneTextField.text,
              reasonTextView.text,
              
              //technologySegmentedController.selectedSegmentIndex,
              technologySegmentedController.titleForSegment(at: technologySegmentedController.selectedSegmentIndex),
            
              contactDateDatePicker.date)
        
        
        var user: User = User()
        user.firstName = firstnameTextField.text
        user.lastName = lastnameTextField.text
        user.email = emailTextField.text
        user.phone = phoneTextField.text
        
        print("----- USER ----")
        print(user)
        
        var formData: FormData = FormData()
        formData.reason = reasonTextView.text
        formData.technology = technologySegmentedController.selectedSegmentIndex
        formData.contactDate = contactDateDatePicker.date
        formData.user = user
        
        print("----- FORM DATA ----")
        print(formData)
        
        
    }

    @IBAction func resetButtonWasPressed(_ sender: Any) {
    }
    
}
