//
//  ViewController.swift
//  Autolayout
//
//  Created by Trong Le on 12/27/15.
//  Copyright © 2015 Trong Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var loginField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // Set boolean for security field. didSet by updateUI
    var secure: Bool = false { didSet { updateUI() } }
    
    // Update password label depending on security bool
    private func updateUI() {
        passwordField.secureTextEntry = secure
        passwordLabel.text = secure ? "Secured Password" : "Password"
    }
    
    @IBAction func login() {
    }

    // Show password security setting, changes security bool
    @IBAction func toggleSecurity() {
        secure = !secure
    }
}

