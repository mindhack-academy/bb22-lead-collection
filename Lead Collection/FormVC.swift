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
        
    }

    @IBAction func resetButtonWasPressed(_ sender: Any) {
    }
    
}
