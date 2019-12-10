//
//  LoginViewController.swift
//  InstagramFirebaseSample
//
//  Created by 박인수 on 07/12/2019.
//  Copyright © 2019 inswag. All rights reserved.
//

import UIKit
import Firebase
import SnapKit

class LoginViewController: UIViewController {
    
    let containerView: UIView = {
        let view = UIView()
        let logo = UIImage(named: "Instagram_logo_white")
        let logoImgView = UIImageView(image: logo)
        logoImgView.contentMode = .scaleAspectFill
        view.addSubview(logoImgView)
        logoImgView.snp.makeConstraints { (m) in
            m.centerX.equalTo(view.snp.centerX)
            m.centerY.equalTo(view.snp.centerY).offset(20)
        }
        view.backgroundColor = UIColor.rgba(r: 0, g: 120, b: 175, a: 1.0)
        return view
    }()
    
    let emailTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Email"
//        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        //        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    let passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Password"
        tf.isSecureTextEntry = true
//        tf.backgroundColor = UIColor(white: 0, alpha: 0.03)
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.addTarget(self, action: #selector(handleTextInputChange), for: .editingChanged)
        return tf
    }()
    
    @objc func handleTextInputChange() {
        let validation: Bool = emailTextField.text?.isEmpty != true && passwordTextField.text?.isEmpty != true
            
        if validation {
            loginButton.isEnabled = true
            loginButton.backgroundColor = UIColor.rgba(r: 17, g: 154, b: 237, a: 1.0)
        } else {
            loginButton.isEnabled = false
            loginButton.backgroundColor = UIColor.rgba(r: 149, g: 204, b: 244, a: 1.0)
        }
        
    }
    
    let loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Log in", for: .normal)
        button.backgroundColor = UIColor.rgba(r: 149, g: 204, b: 244, a: 1.0)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.addTarget(self, action: #selector(handleLogin), for: .touchUpInside)
        button.isEnabled = false
        return button
    }()
    
    @objc func handleLogin() {
        print("No Problem")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.navigationController?.navigationBar.isHidden = true
        
        setupUI()
    }
    
    func setupUI() {
        if self.traitCollection.userInterfaceStyle == .dark {
            self.view.backgroundColor = .black
        } else {
            self.view.backgroundColor = .white
        }
        
        [containerView].forEach { self.view.addSubview($0) }
        containerView.snp.makeConstraints { (m) in
            m.leading.equalToSuperview()
            m.trailing.equalToSuperview()
            m.top.equalToSuperview()
            m.height.equalTo(200)
        }
        
        let inputStackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, loginButton])
        inputStackView.axis = .vertical
        inputStackView.distribution = .fillEqually
        inputStackView.spacing = 10
        
        [inputStackView].forEach { self.view.addSubview($0) }
        inputStackView.snp.makeConstraints { (m) in
            m.top.equalTo(containerView.snp.bottom).offset(40)
            m.leading.equalToSuperview().offset(40)
            m.trailing.equalToSuperview().offset(-40)
            m.height.equalTo(140)
        }
    }
}

extension UIColor {
    static func rgba(r red: CGFloat, g green: CGFloat, b blue: CGFloat, a alpha: CGFloat) -> UIColor {
        return UIColor.init(red: red/255, green: green/255, blue: blue/255, alpha: alpha)
    }
}
