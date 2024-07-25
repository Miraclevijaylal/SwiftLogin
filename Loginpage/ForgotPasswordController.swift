//
//  ForgotPasswordFile.swift
//  Loginpage
//
//  Created by Vijay Lal on 23/07/24.
//

import UIKit

class ForgotPasswordController: UIViewController {
    lazy var passwordPresentText: UITextField = {
        let passwordPresentText = UITextField()
        passwordPresentText.placeholder = "Email"
        passwordPresentText.borderStyle = .roundedRect
        passwordPresentText.font = .systemFont(ofSize: 20, weight: .light)
        return passwordPresentText
    }()
    lazy var Toplabelpassword: UILabel = {
        let Toplabelpassword = UILabel()
        Toplabelpassword.text = "Forgot password?"
        Toplabelpassword.font = .systemFont(ofSize: 20, weight: .bold)
        Toplabelpassword.textColor = .black
        Toplabelpassword.numberOfLines = 2
        Toplabelpassword.lineBreakMode = .byWordWrapping
        return Toplabelpassword
    }()
    lazy var SubmitEmailButton: UIButton = {
        let submitButton = UIButton()
        submitButton.setTitle("Submit", for: .normal)
        submitButton.backgroundColor = UIColor(red: 0.75, green: 0.91, blue: 0.40, alpha: 1.00)
        submitButton.layer.cornerRadius = 20
        submitButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        return submitButton
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        secondview()
    }
    @objc func showAlert() {
        guard let emailAddress = passwordPresentText.text else { return }
        let alert = UIAlertController(title: "Email sent to " + emailAddress, message: nil, preferredStyle: .actionSheet)
        self.present(alert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [weak self] in
            guard let unwrappedSelf = self else { return }
            unwrappedSelf.dismiss(animated: true)
        }
    }
}
extension ForgotPasswordController {
    func secondview() {
        let guide = view.safeAreaLayoutGuide
        view.backgroundColor = .white
        view.addSubview(passwordPresentText)
        passwordPresentText.translatesAutoresizingMaskIntoConstraints = false
        [passwordPresentText.centerXAnchor.constraint(equalTo: guide.centerXAnchor, constant: -170),
         passwordPresentText.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: -170),
         passwordPresentText.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30),
         passwordPresentText.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30)
        ].forEach({ $0.isActive = true })
        view.addSubview(Toplabelpassword)
        Toplabelpassword.translatesAutoresizingMaskIntoConstraints = false
        [Toplabelpassword.topAnchor.constraint(equalTo: guide.topAnchor, constant: 100),
         Toplabelpassword.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
         Toplabelpassword.bottomAnchor.constraint(equalTo: passwordPresentText.topAnchor, constant: 10)
        ].forEach({ $0.isActive = true })
        view.addSubview(SubmitEmailButton)
        SubmitEmailButton.translatesAutoresizingMaskIntoConstraints = false
        [SubmitEmailButton.topAnchor.constraint(equalTo: passwordPresentText.bottomAnchor, constant: 30),
         SubmitEmailButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
         SubmitEmailButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30),
         SubmitEmailButton.widthAnchor.constraint(equalToConstant: 30)
        ].forEach({ $0.isActive = true })
    }
}
