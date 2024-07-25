//
//  ViewController.swift
//  Loginpage
//
//  Created by Vijay Lal on 23/07/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Topsection: UIView!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var emailInput: UITextField!
    @IBOutlet weak var passwordInput2: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var stackImage: UIImageView!
    @IBOutlet weak var stack2Image: UIImageView!
    
    lazy var titleText: UILabel = {
        let titleText = UILabel()
        titleText.text = "Sign in to your Account"
        titleText.textColor = .white
        titleText.font = .systemFont(ofSize: 22, weight: .bold)
        return titleText
    }()
    lazy var emailInput2: UITextField = {
        let emailInput2 = UITextField()
        emailInput2.borderStyle = .roundedRect
        return emailInput2
    }()
    lazy var passwordInput: UITextField = {
        let passwordInput = UITextField()
        passwordInput.borderStyle = .roundedRect
        return passwordInput
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        loginButton.layer.cornerRadius = 26
    }
    @IBAction func loginButton(_ sender: UIButton) {

    }
    @IBAction func emailInput(_ sender: UITextField) {
        
    }
    @IBAction func passwordInput2(_ sender: UITextField) {
        
    }
    
}

