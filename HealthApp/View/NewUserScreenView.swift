//
////  NewUserScreenView.swift
////  HealthWebServices
////
////  Created by Himanshu Joshi on 12/11/19.
////  Copyright © 2019 Himanshu Joshi. All rights reserved.
////
//
//import UIKit
//import SkyFloatingLabelTextField
//import Firebase
//
//extension MainVC {
//
//    func setupNewUserContentView() {
//        loginContentView.removeFromSuperview()
//        asGuestContentView.removeFromSuperview()
//        view.addSubview(newUserContentView)
//        newUserContentView.addSubview(nameTextFieldNewUser)
//        newUserContentView.addSubview(contactNumberTextFieldNewUser)
//        newUserContentView.addSubview(cityTextField)
//        newUserContentView.addSubview(genderTextField)
//        newUserContentView.addSubview(DOBTextField)
//        newUserContentView.addSubview(userIDTextFieldNewUser)
//        newUserContentView.addSubview(emailTextFieldNewUser)
//        newUserContentView.addSubview(passwordTextFieldNewUser)
//        newUserContentView.addSubview(confirmPasswordTextFieldNewUser)
//        newUserContentView.addSubview(createAccountButton)
//        newUserContentView.translatesAutoresizingMaskIntoConstraints = false
//        newUserContentView.heightAnchor.constraint(equalToConstant: 370).isActive = true
//        newUserContentView.leadingAnchor.constraint(
//            equalTo: view.leadingAnchor, constant: 10).isActive = true
//        newUserContentView.trailingAnchor.constraint(
//            equalTo: view.trailingAnchor, constant: -10).isActive = true
//        newUserContentView.topAnchor.constraint(equalTo: view.topAnchor, constant: 135).isActive = true
//        
//        newUserContentView.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        setupCreateUserNameTextField()
//        setupCreateUserContactNumberTextField()
//        setupCityTextField()
//        setupGenderTextField()
//        setupDOBTextField()
//        setupCreateUserUserIDTextField()
//        setupCreateUserEmailTextField()
//        setupCreateUserPasswordTextField()
//        setupCreateAccountButton()
//        setupCreateUserConfirmPasswordTextField()
//    }
//    
//    func setupCreateUserNameTextField() {
//        nameTextFieldNewUser.translatesAutoresizingMaskIntoConstraints = false
//        nameTextFieldNewUser.isUserInteractionEnabled = true
//        nameTextFieldNewUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        nameTextFieldNewUser.topAnchor.constraint(equalTo: newUserContentView.topAnchor, constant: 10).isActive = true
//        nameTextFieldNewUser.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        nameTextFieldNewUser.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        nameTextFieldNewUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupCreateUserContactNumberTextField() {
//        contactNumberTextFieldNewUser.translatesAutoresizingMaskIntoConstraints = false
//        contactNumberTextFieldNewUser.isUserInteractionEnabled = true
//        contactNumberTextFieldNewUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        contactNumberTextFieldNewUser.keyboardType = .numberPad
//        contactNumberTextFieldNewUser.topAnchor.constraint(equalTo: nameTextFieldNewUser.bottomAnchor, constant: 10).isActive = true
//        contactNumberTextFieldNewUser.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        contactNumberTextFieldNewUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//        contactNumberTextFieldNewUser.widthAnchor.constraint(
//        equalToConstant: 150).isActive = true
//    }
//
//    func setupCityTextField() {
//        cityTextField.translatesAutoresizingMaskIntoConstraints = false
//        cityTextField.isUserInteractionEnabled = true
//        cityTextField.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        cityTextField.topAnchor.constraint(equalTo: nameTextFieldNewUser.bottomAnchor, constant: 10).isActive = true
//        cityTextField.leadingAnchor.constraint(equalTo: contactNumberTextFieldNewUser.trailingAnchor, constant: 10).isActive = true
//        cityTextField.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        cityTextField.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupGenderTextField() {
//        genderTextField.translatesAutoresizingMaskIntoConstraints = false
//        genderTextField.isUserInteractionEnabled = true
//        genderTextField.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        genderTextField.topAnchor.constraint(equalTo: contactNumberTextFieldNewUser.bottomAnchor, constant: 10).isActive = true
//        genderTextField.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        genderTextField.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//        genderTextField.widthAnchor.constraint(
//        equalToConstant: 65).isActive = true
//    }
//
//    func setupDOBTextField() {
//        DOBTextField.translatesAutoresizingMaskIntoConstraints = false
//        DOBTextField.isUserInteractionEnabled = true
//        DOBTextField.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        DOBTextField.topAnchor.constraint(equalTo: cityTextField.bottomAnchor, constant: 10).isActive = true
//        DOBTextField.leadingAnchor.constraint(equalTo: genderTextField.trailingAnchor, constant: 10).isActive = true
//        DOBTextField.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        DOBTextField.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupCreateUserUserIDTextField() {
//        userIDTextFieldNewUser.translatesAutoresizingMaskIntoConstraints = false
//        userIDTextFieldNewUser.isUserInteractionEnabled = true
//        userIDTextFieldNewUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        userIDTextFieldNewUser.topAnchor.constraint(equalTo: genderTextField.bottomAnchor, constant: 10).isActive = true
//        userIDTextFieldNewUser.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        userIDTextFieldNewUser.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        userIDTextFieldNewUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupCreateUserEmailTextField() {
//        emailTextFieldNewUser.translatesAutoresizingMaskIntoConstraints = false
//        emailTextFieldNewUser.isUserInteractionEnabled = true
//        emailTextFieldNewUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        emailTextFieldNewUser.keyboardType = .emailAddress
//        emailTextFieldNewUser.topAnchor.constraint(equalTo: userIDTextFieldNewUser.bottomAnchor, constant: 10).isActive = true
//        emailTextFieldNewUser.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        emailTextFieldNewUser.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        emailTextFieldNewUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupCreateUserPasswordTextField() {
//        passwordTextFieldNewUser.translatesAutoresizingMaskIntoConstraints = false
//        passwordTextFieldNewUser.isUserInteractionEnabled = true
//        passwordTextFieldNewUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        passwordTextFieldNewUser.isSecureTextEntry = true
//        passwordTextFieldNewUser.topAnchor.constraint(equalTo: emailTextFieldNewUser.bottomAnchor, constant: 10).isActive = true
//        passwordTextFieldNewUser.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        passwordTextFieldNewUser.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        passwordTextFieldNewUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//    
//    func setupCreateUserConfirmPasswordTextField() {
//        confirmPasswordTextFieldNewUser.translatesAutoresizingMaskIntoConstraints = false
//        confirmPasswordTextFieldNewUser.isUserInteractionEnabled = true
//        confirmPasswordTextFieldNewUser.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        confirmPasswordTextFieldNewUser.isSecureTextEntry = true
//        confirmPasswordTextFieldNewUser.topAnchor.constraint(equalTo: passwordTextFieldNewUser.bottomAnchor, constant: 10).isActive = true
//        confirmPasswordTextFieldNewUser.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        confirmPasswordTextFieldNewUser.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        confirmPasswordTextFieldNewUser.heightAnchor.constraint(
//            equalToConstant: 35).isActive = true
//    }
//
//    func setupCreateAccountButton() {
//        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
//        createAccountButton.isUserInteractionEnabled = true
//        createAccountButton.layer.cornerRadius = 4
//        createAccountButton.backgroundColor = .systemBlue
//        createAccountButton.topAnchor.constraint(
//            equalTo: confirmPasswordTextFieldNewUser.bottomAnchor,
//            constant: 10).isActive = true
//        createAccountButton.leadingAnchor.constraint(equalTo: newUserContentView.leadingAnchor, constant: 10).isActive = true
//        createAccountButton.trailingAnchor.constraint(equalTo: newUserContentView.trailingAnchor, constant: -10).isActive = true
//        createAccountButton.heightAnchor.constraint(
//            equalToConstant: 47).isActive = true
//        createAccountButton.addTarget(self, action: #selector(self.createNewUser), for: .touchUpInside)
//    }
//    
//}
