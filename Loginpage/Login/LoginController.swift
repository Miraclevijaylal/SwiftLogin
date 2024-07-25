//
//  LoginController.swift
//  Loginpage
//
//  Created by Vijay Lal on 23/07/24.
//

import Foundation
import UIKit
class LoginController: UIViewController {
    lazy var headingContainer: UIView = {
        let headingContainer = UIView()
        headingContainer.backgroundColor = .brown
        return headingContainer
    }()
    lazy var bgImageView: UIImageView = {
        let backgroundImageView = UIImageView()
        backgroundImageView.image = UIImage.bg
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.clipsToBounds = true
        return backgroundImageView
    }()
    lazy var headLabel: UILabel = {
        let headingLabel = UILabel()
        headingLabel.text = "Sign in to your Account"
        headingLabel.font = .systemFont(ofSize: 42, weight: .bold)
        headingLabel.textColor = .white
        headingLabel.numberOfLines = 2
        headingLabel.lineBreakMode = .byWordWrapping
        return headingLabel
    }()
    lazy var subheadingText: UILabel = {
        let subheadcontainerText = UILabel()
        subheadcontainerText.text = "Sign in to your Account"
        subheadcontainerText.textColor = .white
        subheadcontainerText.font = .systemFont(ofSize: 14, weight: .medium)
        return subheadcontainerText
    }()
    lazy var Firstinput: UITextField = {
        let FirstInput = UITextField()
        FirstInput.placeholder = "Email"
        FirstInput.borderStyle = .roundedRect
        FirstInput.font = .systemFont(ofSize: 20, weight: .light)
        return FirstInput
    }()
    lazy var SecondInput: UITextField = {
        let SecondInput = UITextField()
        SecondInput.placeholder = "Password"
        SecondInput.borderStyle = .roundedRect
        SecondInput.font = .systemFont(ofSize: 20, weight: .light)
        SecondInput.isSecureTextEntry = true
        return SecondInput
    }()
    lazy var forgotButton: UIButton = {
        let forgotButton = UIButton()
        forgotButton.setTitleColor(UIColor(red: 0.75, green: 0.91, blue: 0.40, alpha: 1.00), for: .normal)
        forgotButton.setTitle("Forgot Password?", for: .normal)
        forgotButton.addTarget(self, action: #selector(forgottap), for: .touchUpInside)
        return forgotButton
    }()
    lazy var loginButton: UIButton = {
        let LoginButton = UIButton()
        LoginButton.setTitle("Login", for: .normal)
        LoginButton.backgroundColor = UIColor(red: 0.75, green: 0.91, blue: 0.40, alpha: 1.00)
        LoginButton.layer.cornerRadius = 20
        LoginButton.setTitleColor(.black, for: .normal)
        LoginButton.addTarget(self, action: #selector(signin), for: .touchUpInside)
        return LoginButton
    }()
    lazy var crossLine: UIView = {
        let crossView = UIView()
        crossView.backgroundColor = .lightGray
        return crossView
    }()
    lazy var crossLine2: UIView = {
        let crossView = UIView()
        crossView.backgroundColor = .lightGray
        return crossView
    }()
    lazy var MiddleLabel: UILabel = {
        let BottomLabel = UILabel()
        BottomLabel.text = "Or login with?"
        BottomLabel.textColor = .gray
        BottomLabel.font = .systemFont(ofSize: 13, weight: .medium)
        return BottomLabel
    }()
    lazy var BottomLabels: UILabel = {
        let BottomLabel = UILabel()
        BottomLabel.text = "Don't have an account?"
        return BottomLabel
    }()
    lazy var Googleimage: UIImageView = {
        let GoogleImage = UIImageView()
        GoogleImage.image = UIImage(named: "facebook")
        return GoogleImage
        }()
    lazy var BottomButtonText: UIButton = {
        let BottomButtonText = UIButton()
        BottomButtonText.setTitle("Register", for: .normal)
        BottomButtonText.setTitleColor(UIColor(red: 0.75, green: 0.91, blue: 0.40, alpha: 1.00), for: .normal)
        return BottomButtonText
    }()
    lazy var Facebook: UIImageView = {
        let Facebook = UIImageView()
        Facebook.image = UIImage(named: "google")
        return Facebook
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    @objc func forgottap() {
        let forgotPasswordController = ForgotPasswordController()
        present(forgotPasswordController, animated: true)
    }
    @objc func signin() {
        let homeController = HomeController()
        self.navigationController?.pushViewController(homeController, animated: true)
    }
}
