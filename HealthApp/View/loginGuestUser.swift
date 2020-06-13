////
////  loginGuestUser.swift
////  HealthWebServices
////
////  Created by Himanshu Joshi on 19/11/19.
////  Copyright © 2019 Himanshu Joshi. All rights reserved.
////
//
//import UIKit
//
//import FirebaseAuth
//import FirebaseFirestore
//
//extension MainVC {
//    
//    @objc func createGuestUser() {
//    
//        guard let email = emailTextFieldAGuest.text, let name = nameTextFieldAsGuest.text, let contact = contactNumberTextFieldAsGuest.text else { return }
//
//        if email == "" || name == "" || contact == "" {
//            let alert = UIAlertController(title: "Error", message: "Please enter all the fields to continue.", preferredStyle: .alert)
//            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//            alert.addAction(action)
//            self.present(alert, animated: true, completion: nil)
//        }
//        
//        else {
//            Firestore.firestore().collection(GUESTS_REF).getDocuments { (snapshot, error) in
//                    if let error = error {
//                        print(error.localizedDescription)
//                    }
//                    let documents = snapshot?.documents
//                    for document in documents! {
//                        let data = document.data()
//                        let usedEmail = data[GUEST_EMAIL] as? String ?? ""
//                        self.guestEmailArray.append(usedEmail)
//                    }
//                    if self.guestEmailArray.contains(email) {
//                        let alert = UIAlertController(title: "Error", message: "Email is already taken. Please try another one.", preferredStyle: .alert)
//                        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
//                        alert.addAction(action)
//                        self.present(alert, animated: true, completion: nil)
//                    }
//                    else {
//                        Firestore.firestore().collection(GUESTS_REF).addDocument(data: [
//                            GUEST_NAME : name,
//                            GUEST_CONTACT : contact,
//                            GUEST_EMAIL : email
//                        ], completion: nil)
////                        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
////                        let nextVC = storyBoard.instantiateViewController(identifier: "toAccountVC") as! AccountVC
////                        self.present(nextVC, animated: true, completion: nil)
//                    }
//            }
//        }
//        
//}
//    
//}
