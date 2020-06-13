////
////  CreateUser.swift
////  HealthWebServices
////
////  Created by Himanshu Joshi on 19/11/19.
////  Copyright © 2019 Himanshu Joshi. All rights reserved.
////
//
//import UIKit
//import FirebaseAuth
//import FirebaseFirestore
//
//extension MainVC {
//    
//    @objc func createNewUser() {
//    
//        guard let email = emailTextFieldNewUser.text, let password = passwordTextFieldNewUser.text, let userID = userIDTextFieldNewUser.text, let fullName = nameTextFieldNewUser.text, let contactNumber = contactNumberTextFieldNewUser.text, let city = cityTextField.text, let gender = genderTextField.text, let dob = DOBTextField.text, let confirmPassword = confirmPasswordTextFieldNewUser.text else { return }
//
//        if email == "" || password == "" || confirmPassword == "" || userID == "" || fullName == "" || contactNumber == "" || city == "" || gender == "" || dob == "" {
//            let alert = UIAlertController(title: "Error", message: "Please enter all the fields to continue.", preferredStyle: .alert)
//            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alert.addAction(action)
//            self.present(alert, animated: true, completion: nil)
//        }
//
//        if password != confirmPassword {
//            let alert = UIAlertController(title: "Error", message: "Entered password and confirm password are not equal. Please write same details.", preferredStyle: .alert)
//            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alert.addAction(action)
//            self.present(alert, animated: true, completion: nil)
//            return
//        }
//
//        Firestore.firestore().collection(USERS_REF).getDocuments { (snapshot, error) in
//            if let error = error {
//                print(error.localizedDescription)
//            }
//            let documents = snapshot?.documents
//            for document in documents! {
//                let data = document.data()
//                let usedUsername = data[USER_ID] as? String ?? ""
//                let usedEmail = data[CURRENT_EMAIL] as? String ?? ""
//                self.userIDArray.append(usedUsername)
//                self.emailArray.append(usedEmail)
//            }
//            if self.userIDArray.contains(userID) {
//                let alert = UIAlertController(title: "Error", message: "Username is already taken. Please try another one.", preferredStyle: .alert)
//                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//                alert.addAction(action)
//                self.present(alert, animated: true, completion: nil)
//            }
//            else if self.emailArray.contains(email) {
//                let alert = UIAlertController(title: "Error", message: "Email is already taken. Please try another one.", preferredStyle: .alert)
//                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//                alert.addAction(action)
//                self.present(alert, animated: true, completion: nil)
//            }
//            else {
//                self.createUser()
//            }
//    }
//        
//}
//    
//    func createUser() {
//
//        guard let email = emailTextFieldNewUser.text, let password = passwordTextFieldNewUser.text, let userID = userIDTextFieldNewUser.text, let fullName = nameTextFieldNewUser.text, let contactNumber = contactNumberTextFieldNewUser.text, let city = cityTextField.text, let gender = genderTextField.text, let dob = DOBTextField.text else { return }
//
//        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
//            if let error = error {
//                debugPrint("Error while creating user, \(error.localizedDescription)")
//            }
//
//            let changeRequest = user?.user.createProfileChangeRequest()
//            changeRequest?.displayName = userID
//            changeRequest?.commitChanges(completion: { (error) in
//                if let error = error {
//                    debugPrint(error.localizedDescription)
//                }
//            })
//
//            guard let id = user?.user.uid else { return }
//            Firestore.firestore().collection(USERS_REF).document(id).setData([
//                FULL_NAME : fullName,
//                CONTACT_NUMBER : contactNumber,
//                CITY : city,
//                GENDER : gender,
//                DOB : dob,
//                USER_ID : userID,
//                CURRENT_EMAIL : email,
//                CURRENT_PASSWORD : password,
//                OLD_PASSWORD : "",
//                DATE_CREATED : FieldValue.serverTimestamp()
//                ], completion: { (error) in
//                    if let error = error {
//                        debugPrint(error.localizedDescription)
//                        print("Error while creating user")
//                    } else {
//                        self.showAlert()
//                    }
//            })
//        }
//
//    }
//
//    func showAlert() {
//        let alert = UIAlertController(title: "Success", message: "Account created successfully. Please go to the login page to continue login.", preferredStyle: .alert)
//        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//        alert.addAction(action)
//        self.present(alert, animated: true, completion: self.setup)
//    }
//
//    func setup() {
//        setupLoginContentView()
//        segmentController.selectedSegmentIndex = 1
//        nameTextFieldNewUser.text = ""
//        contactNumberTextFieldNewUser.text = ""
//        cityTextField.text = ""
//        genderTextField.text = ""
//        DOBTextField.text = ""
//        userIDTextFieldNewUser.text = ""
//        emailTextFieldNewUser.text = ""
//        passwordTextFieldNewUser.text = ""
//        confirmPasswordTextFieldNewUser.text = ""
//    }
//    
//}
