//
//  Login.swift
//  Loginpage
//
//  Created by Vijay Lal on 23/07/24.
//

import UIKit

class HomeController: UIViewController {
    lazy var centerLabel: UILabel = {
        let centerlabel = UILabel()
        centerlabel.text = "You have Successfully Loged in"
        centerlabel.font = .systemFont(ofSize: 22, weight: .heavy)
        centerlabel.textColor = .black
        centerlabel.numberOfLines = 2
        centerlabel.lineBreakMode = .byWordWrapping
        centerlabel.textAlignment = .center
        return centerlabel
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        submitView()
    }
    func submitView() {
        let guide = view.safeAreaLayoutGuide
        view.backgroundColor = .white
        view.addSubview(centerLabel)
        centerLabel.translatesAutoresizingMaskIntoConstraints = false
        [centerLabel.centerXAnchor.constraint(equalTo: guide.centerXAnchor, constant: 0),
         centerLabel.centerYAnchor.constraint(equalTo: guide.centerYAnchor, constant: 0),
         centerLabel.leadingAnchor.constraint(equalTo: guide.leadingAnchor, constant: 20),
         centerLabel.trailingAnchor.constraint(equalTo: guide.trailingAnchor, constant: -20)
        ].forEach({ $0.isActive = true})
    }
}
