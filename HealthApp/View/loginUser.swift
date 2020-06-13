////
////  loginUser.swift
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
//    @objc func loginUser() {
//
//        if emailTextFieldExistingUser.text == "" || passwordTextFieldExistingUser.text == "" {
//            let alert = UIAlertController(title: "Error", message: "Please fill all the fields to continue login.", preferredStyle: .alert)
//            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alert.addAction(action)
//            present(alert, animated: true, completion: nil)
//
//        }
//
//        guard let email = emailTextFieldExistingUser.text , let password = passwordTextFieldExistingUser.text else { return }
//
//        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
//            if let error = error {
//                debugPrint("Error signing in, \(error.localizedDescription)")
//            }
//
//            Firestore.firestore().collection(USERS_REF).getDocuments(completion: { (snapshot, error) in
//                if let error = error {
//                    print(error.localizedDescription)
//                }
//
//                let documents = snapshot?.documents
//                for document in documents! {
//                    let data = document.data()
//                    let emails = data[CURRENT_EMAIL] as? String ?? ""
//
//                    self.emailArray.append(emails)
//                }
//
//                if !self.emailArray.contains(email) {
//                    let alert = UIAlertController(title: "Error", message: "Email is not in our records. Please write correct email or sign up with this email.", preferredStyle: .alert)
//                    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//                    alert.addAction(action)
//                    self.present(alert, animated: true, completion: nil)
//                }
//                else {
//                    Firestore.firestore().collection(USERS_REF).getDocuments(completion: { (snapshot, error) in
//                        if let error = error {
//                            print(error.localizedDescription)
//                        }
//                        for document in (snapshot?.documents)! {
//                            let typedEmail = document.data()[CURRENT_EMAIL] as? String ?? ""
//                            if typedEmail == email {
//                                self.id = document.documentID
//                            }
//
//                        }
//
//                        let ref = Firestore.firestore().collection(USERS_REF).document(self.id!)
//                        ref.getDocument(completion: { (snapshot, error) in
//                            if let error = error {
//                                print(error.localizedDescription)
//                            }
//                            let actualPassword = snapshot?.data()![CURRENT_PASSWORD] as? String ?? ""
//                            if actualPassword == password {
////                                let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
////                                let nextVC = storyBoard.instantiateViewController(identifier: "toAccountVC") as! AccountVC
////                                self.present(nextVC, animated: true, completion: nil)
//                            } else {
//                                let alert = UIAlertController(title: "Error", message: "Incorrect Password. Please write correct password to sign in.", preferredStyle: .alert)
//                                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//                                alert.addAction(action)
//                                self.present(alert, animated: true, completion: nil)
//                            }
//                        })
//
//                    })
//
//                }
//
//
//            })
//
//        }
//
//    }
//    
//}
