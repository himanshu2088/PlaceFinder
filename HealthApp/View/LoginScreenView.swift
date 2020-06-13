////
////  LoginScreenView.swift
////  HealthWebServices
////
////  Created by Himanshu Joshi on 11/11/19.
////  Copyright © 2019 Himanshu Joshi. All rights reserved.
////
//
//import UIKit
//import SkyFloatingLabelTextField
//
//extension MainVC {
//
//    func setupLoginContentView() {
//        asGuestContentView.removeFromSuperview()
//        newUserContentView.removeFromSuperview()
//        view.addSubview(loginContentView)
//        loginContentView.addSubview(emailTextFieldExistingUser)
//        loginContentView.addSubview(passwordTextFieldExistingUser)
//        loginContentView.addSubview(loginButton)
//        loginContentView.addSubview(forgetPassButton)
//        loginContentView.translatesAutoresizingMaskIntoConstraints = false
//        loginContentView.heightAnchor.constraint(equalToConstant: view.frame.height / 2).isActive = true
//        loginContentView.leadingAnchor.constraint(
//            equalTo: view.leadingAnchor, constant: 10).isActive = true
//        loginContentView.trailingAnchor.constraint(
//            equalTo: view.trailingAnchor, constant: -10).isActive = true
//        loginContentView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        loginContentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 135).isActive = true
//        setupEmailExistingUserTextField()
//        setupPasswordTextField()
//        setupLoginButton()
//        setupForgetPassButton()
//    }
//    
//    func setupEmailExistingUserTextField() {
//        emailTextFieldExistingUser.translatesAutoresizingMaskIntoConstraints = false
//        emailTextFieldExistingUser.isUserInteractionEnabled = true
//        emailTextFieldExistingUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        emailTextFieldExistingUser.keyboardType = .emailAddress
//        emailTextFieldExistingUser.autocapitalizationType = .none
//        emailTextFieldExistingUser.topAnchor.constraint(equalTo: loginContentView.topAnchor, constant: 10).isActive = true
//        emailTextFieldExistingUser.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 10).isActive = true
//        emailTextFieldExistingUser.trailingAnchor.constraint(equalTo: loginContentView.trailingAnchor, constant: -10).isActive = true
//        emailTextFieldExistingUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//    
//    func setupPasswordTextField() {
//        passwordTextFieldExistingUser.translatesAutoresizingMaskIntoConstraints = false
//        passwordTextFieldExistingUser.isUserInteractionEnabled = true
//        passwordTextFieldExistingUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        passwordTextFieldExistingUser.isSecureTextEntry = true
//        passwordTextFieldExistingUser.topAnchor.constraint(equalTo: emailTextFieldExistingUser.bottomAnchor, constant: 10).isActive = true
//        passwordTextFieldExistingUser.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 10).isActive = true
//        passwordTextFieldExistingUser.trailingAnchor.constraint(equalTo: loginContentView.trailingAnchor, constant: -10).isActive = true
//        passwordTextFieldExistingUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupLoginButton() {
//        loginButton.translatesAutoresizingMaskIntoConstraints = false
//        loginButton.isUserInteractionEnabled = true
//        loginButton.layer.cornerRadius = 4
//        loginButton.backgroundColor = .systemBlue
//        loginButton.topAnchor.constraint(
//            equalTo: passwordTextFieldExistingUser.bottomAnchor,
//            constant: 10).isActive = true
//        loginButton.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 10).isActive = true
//        loginButton.trailingAnchor.constraint(equalTo: loginContentView.trailingAnchor, constant: -10).isActive = true
//        loginButton.heightAnchor.constraint(equalToConstant: 47).isActive = true
//        loginButton.addTarget(self, action: #selector(self.loginUser), for: .touchUpInside)
//    }
//
//    func setupForgetPassButton() {
//        forgetPassButton.translatesAutoresizingMaskIntoConstraints = false
//        forgetPassButton.isUserInteractionEnabled = true
//        forgetPassButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 8).isActive = true
//        forgetPassButton.leadingAnchor.constraint(equalTo: loginContentView.leadingAnchor, constant: 10).isActive = true
//    }
//    
//}
