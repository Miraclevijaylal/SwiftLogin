//
//  LoginPageConstrains.swift
//  Loginpage
//
//  Created by Vijay Lal on 23/07/24.
//

import Foundation
extension LoginController {
    func initViews() {
        let guide = view.safeAreaLayoutGuide
        view.addSubview(headingContainer)
        headingContainer.translatesAutoresizingMaskIntoConstraints = false
        [headingContainer.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
         headingContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
         headingContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
         headingContainer.heightAnchor.constraint(equalToConstant: 300)].forEach({ $0.isActive = true })
        headingContainer.addSubview(bgImageView)
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        [bgImageView.topAnchor.constraint(equalTo: headingContainer.topAnchor, constant: 0),
         bgImageView.leadingAnchor.constraint(equalTo: headingContainer.leadingAnchor, constant: 0),
         bgImageView.trailingAnchor.constraint(equalTo: headingContainer.trailingAnchor, constant: 0),
         bgImageView.bottomAnchor.constraint(equalTo: headingContainer.bottomAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        headingContainer.addSubview(headLabel)
        headLabel.translatesAutoresizingMaskIntoConstraints = false
        [headLabel.leadingAnchor.constraint(equalTo: headingContainer.leadingAnchor, constant: 16),
         headLabel.bottomAnchor.constraint(equalTo: headingContainer.bottomAnchor, constant: -50),
         headLabel.trailingAnchor.constraint(equalTo: headingContainer.trailingAnchor, constant: -16)
        ].forEach({ $0.isActive = true })
        headingContainer.addSubview(subheadingText)
        subheadingText.translatesAutoresizingMaskIntoConstraints = false
        [subheadingText.topAnchor.constraint(equalTo: headLabel.bottomAnchor, constant: 16),
         subheadingText.leadingAnchor.constraint(equalTo: headLabel.leadingAnchor, constant: 0),
         subheadingText.trailingAnchor.constraint(equalTo: headLabel.trailingAnchor, constant: -40)
        ].forEach({ $0.isActive = true })
        view.addSubview(Firstinput)
        Firstinput.translatesAutoresizingMaskIntoConstraints = false
        [Firstinput.topAnchor.constraint(equalTo: headingContainer.bottomAnchor, constant: 55),
         Firstinput.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
         Firstinput.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30)
        ].forEach({ $0.isActive = true })
        view.addSubview(SecondInput)
        SecondInput.translatesAutoresizingMaskIntoConstraints = false
        [SecondInput.topAnchor.constraint(equalTo: Firstinput.bottomAnchor, constant: 30),
         SecondInput.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
         SecondInput.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30)
        ].forEach({ $0.isActive = true })
        view.addSubview(forgotButton)
        forgotButton.translatesAutoresizingMaskIntoConstraints = false
        [forgotButton.topAnchor.constraint(equalTo: SecondInput.bottomAnchor, constant: 10),
         forgotButton.trailingAnchor.constraint(equalTo: SecondInput.trailingAnchor, constant: -20)
        ].forEach({ $0.isActive = true })
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        [loginButton.topAnchor.constraint(equalTo: SecondInput.bottomAnchor, constant: 70),
         loginButton.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -30),
         loginButton.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 30),
         loginButton.widthAnchor.constraint(equalToConstant: 600),
         loginButton.heightAnchor.constraint(equalToConstant: 40)
        ].forEach({ $0.isActive = true })
        view.addSubview(crossLine)
        crossLine.translatesAutoresizingMaskIntoConstraints = false
        [crossLine.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 41),
         crossLine.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
         crossLine.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -270),
         crossLine.widthAnchor.constraint(equalToConstant: 1),
         crossLine.heightAnchor.constraint(equalToConstant: 1)
        ].forEach({ $0.isActive = true})
        view.addSubview(crossLine2)
        crossLine2.translatesAutoresizingMaskIntoConstraints = false
        [crossLine2.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 41),
         crossLine2.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 270),
         crossLine2.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20),
         crossLine2.widthAnchor.constraint(equalToConstant: 1),
         crossLine2.heightAnchor.constraint(equalToConstant: 1)
        ].forEach({ $0.isActive = true})
        view.addSubview(MiddleLabel)
        MiddleLabel.translatesAutoresizingMaskIntoConstraints = false
        [MiddleLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 33),
         MiddleLabel.centerXAnchor.constraint(equalTo: loginButton.centerXAnchor, constant: 0)
        ].forEach({ $0.isActive = true })
        view.addSubview(BottomLabels)
        BottomLabels.translatesAutoresizingMaskIntoConstraints = false
        [BottomLabels.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -25),
         BottomLabels.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 60),
         BottomLabels.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10)
        ].forEach({ $0.isActive = true })
        view.addSubview(BottomButtonText)
        BottomButtonText.translatesAutoresizingMaskIntoConstraints = false
        [BottomButtonText.bottomAnchor.constraint(equalTo: guide.bottomAnchor, constant: -18),
         BottomButtonText.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 180),
         BottomButtonText.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -10)
        ].forEach({ $0.isActive = true })
        view.addSubview(Googleimage)
        Googleimage.translatesAutoresizingMaskIntoConstraints = false
        [Googleimage.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 100),
         Googleimage.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -100),
         Googleimage.widthAnchor.constraint(equalToConstant: 40),
         Googleimage.heightAnchor.constraint(equalToConstant: 40)
        ].forEach({ $0.isActive = true })
        view.addSubview(Facebook)
        Facebook.translatesAutoresizingMaskIntoConstraints = false
        [Facebook.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 100),
         Facebook.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 100),
         Facebook.widthAnchor.constraint(equalToConstant: 40),
         Facebook.heightAnchor.constraint(equalToConstant: 40)
        ].forEach({ $0.isActive = true })
    }
}
