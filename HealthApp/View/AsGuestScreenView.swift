////
////  AsGuestScreenView.swift
////  HealthWebServices
////
////  Created by Himanshu Joshi on 12/11/19.
////  Copyright © 2019 Himanshu Joshi. All rights reserved.
////
//
//import UIKit
//import SkyFloatingLabelTextField
//
//extension MainVC {
//
//    func setupAsGuestContentView() {
//        loginContentView.removeFromSuperview()
//        newUserContentView.removeFromSuperview()
//        view.addSubview(asGuestContentView)
//        asGuestContentView.addSubview(nameTextFieldAsGuest)
//        asGuestContentView.addSubview(emailTextFieldAGuest)
//        asGuestContentView.addSubview(contactNumberTextFieldAsGuest)
//        asGuestContentView.addSubview(loginAsGuestButton)
//        asGuestContentView.translatesAutoresizingMaskIntoConstraints = false
//        asGuestContentView.heightAnchor.constraint(equalToConstant: view.frame.height / 2).isActive = true
//        asGuestContentView.leadingAnchor.constraint(
//            equalTo: view.leadingAnchor, constant: 10).isActive = true
//        asGuestContentView.trailingAnchor.constraint(
//            equalTo: view.trailingAnchor, constant: -10).isActive = true
//        asGuestContentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 135).isActive = true
//        asGuestContentView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        setupNameTextField()
//        setupGuestEmailTextField()
//        setupContactNumberTextField()
//        setupLoginAsGuestButton()
//    }
//    
//    func setupNameTextField() {
//        nameTextFieldAsGuest.translatesAutoresizingMaskIntoConstraints = false
//        nameTextFieldAsGuest.isUserInteractionEnabled = true
//        nameTextFieldAsGuest.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        nameTextFieldAsGuest.topAnchor.constraint(equalTo: asGuestContentView.topAnchor, constant: 10).isActive = true
//        nameTextFieldAsGuest.leadingAnchor.constraint(equalTo: asGuestContentView.leadingAnchor, constant: 10).isActive = true
//        nameTextFieldAsGuest.trailingAnchor.constraint(equalTo: asGuestContentView.trailingAnchor, constant: -10).isActive = true
//        nameTextFieldAsGuest.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//    
//    func setupGuestEmailTextField() {
//        emailTextFieldAGuest.translatesAutoresizingMaskIntoConstraints = false
//        emailTextFieldAGuest.isUserInteractionEnabled = true
//        emailTextFieldAGuest.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        emailTextFieldAGuest.keyboardType = .emailAddress
//        emailTextFieldAGuest.topAnchor.constraint(equalTo: nameTextFieldAsGuest.bottomAnchor, constant: 10).isActive = true
//        emailTextFieldAGuest.leadingAnchor.constraint(equalTo: asGuestContentView.leadingAnchor, constant: 10).isActive = true
//        emailTextFieldAGuest.trailingAnchor.constraint(equalTo: asGuestContentView.trailingAnchor, constant: -10).isActive = true
//        emailTextFieldAGuest.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//    
//    func setupContactNumberTextField() {
//        contactNumberTextFieldAsGuest.translatesAutoresizingMaskIntoConstraints = false
//        contactNumberTextFieldAsGuest.isUserInteractionEnabled = true
//        contactNumberTextFieldAsGuest.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        contactNumberTextFieldAsGuest.keyboardType = .numberPad
//        contactNumberTextFieldAsGuest.topAnchor.constraint(equalTo: emailTextFieldAGuest.bottomAnchor, constant: 10).isActive = true
//        contactNumberTextFieldAsGuest.leadingAnchor.constraint(equalTo: asGuestContentView.leadingAnchor, constant: 10).isActive = true
//        contactNumberTextFieldAsGuest.trailingAnchor.constraint(equalTo: asGuestContentView.trailingAnchor, constant: -10).isActive = true
//        contactNumberTextFieldAsGuest.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//    
//    func setupLoginAsGuestButton() {
//        loginAsGuestButton.translatesAutoresizingMaskIntoConstraints = false
//        loginAsGuestButton.isUserInteractionEnabled = true
//        loginAsGuestButton.layer.cornerRadius = 4
//        loginAsGuestButton.backgroundColor = .systemBlue
//        loginAsGuestButton.topAnchor.constraint(
//            equalTo: contactNumberTextFieldAsGuest.bottomAnchor,
//            constant: 10).isActive = true
//        loginAsGuestButton.leadingAnchor.constraint(equalTo: asGuestContentView.leadingAnchor, constant: 10).isActive = true
//        loginAsGuestButton.trailingAnchor.constraint(equalTo: asGuestContentView.trailingAnchor, constant: -10).isActive = true
//        loginAsGuestButton.heightAnchor.constraint(
//            equalToConstant: 47).isActive = true
//        loginAsGuestButton.addTarget(self, action: #selector(self.createGuestUser), for: .touchUpInside)
//    }
//    
//}
