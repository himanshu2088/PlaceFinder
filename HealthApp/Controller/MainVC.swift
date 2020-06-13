////
////  ViewController.swift
////  HealthWebServices
////
////  Created by Himanshu Joshi on 10/11/19.
////  Copyright © 2019 Himanshu Joshi. All rights reserved.
////
//
//import UIKit
//import SkyFloatingLabelTextField
//import iOSDropDown
//
//class MainVC: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
//
//    //Variables and Constants
//    let genderData = ["Male", "Female"]
//    let cityData = ["East Delhi", "Greater Noida", "South Delhi", "North Delhi", "West Delhi", "Gurgaon"]
//    var userIDArray = [String]()
//    var emailArray = [String]()
//    var guestEmailArray = [String]()
//    var id: String?
//
//    let segmentController: UISegmentedControl = {
//        let segmentControl = UISegmentedControl(items: ["As Guest", "Existing User",
//        "New User"])
//        segmentControl.selectedSegmentIndex = 0
//        segmentControl.backgroundColor = UIColor.lightGray
//        segmentControl.addTarget(self, action: #selector(segmentControllerChanged(_:)), for: .valueChanged)
//        return segmentControl
//    }()
//
//    @objc func segmentControllerChanged(_ sender: UISegmentedControl) {
//
//        switch sender.selectedSegmentIndex {
//        case 1:
//            setupLoginContentView()
//        case 2:
//            setupNewUserContentView()
//        default:
//            setupAsGuestContentView()
//        }
//
//    }
//
//    func setupSegmentController() {
//        view.addSubview(segmentController)
//        segmentController.translatesAutoresizingMaskIntoConstraints = false
//        segmentController.isUserInteractionEnabled = true
//        segmentController.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 95).isActive = true
//        segmentController.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20).isActive = true
//        segmentController.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20).isActive = true
//    }
//
//    let loginContentView: UIView = {
//        let view = UIView()
//        return view
//    }()
//    let asGuestContentView: UIView = {
//        let view = UIView()
//        return view
//    }()
//    let newUserContentView: UIView = {
//        let view = UIView()
//        return view
//    }()
//    let nameTextFieldAsGuest: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Full Name"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let nameTextFieldNewUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Full Name"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let contactNumberTextFieldAsGuest: SkyFloatingLabelTextField = {
//       let textField = SkyFloatingLabelTextField()
//       textField.placeholder = "Contact Number"
//       textField.placeholderColor = .lightGray
//       textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//       return textField
//    }()
//    let contactNumberTextFieldNewUser: SkyFloatingLabelTextField = {
//       let textField = SkyFloatingLabelTextField()
//       textField.placeholder = "Contact Number"
//       textField.placeholderColor = .lightGray
//       textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//       return textField
//    }()
//    let cityTextField: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "City"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let userIDTextFieldNewUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "User ID"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let emailTextFieldAGuest: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Email"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let emailTextFieldNewUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Email"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let emailTextFieldExistingUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Email"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let genderTextField: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Gender"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let DOBTextField: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "DOB"
//        textField.placeholderColor = .lightGray
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        textField.addTarget(self, action: #selector(dobTxtFieldPressed(_:)), for: .editingDidBegin)
//        return textField
//    }()
//
//    @objc func dobTxtFieldPressed(_ sender: UITextField) {
//
//        let datePickerView: UIDatePicker = UIDatePicker()
//        datePickerView.datePickerMode = UIDatePicker.Mode.date
//        sender.inputView = datePickerView
//        datePickerView.addTarget(self, action: #selector(datePickerValueChanged),for: UIControl.Event.valueChanged)
//
//    }
//
//    @objc func datePickerValueChanged(sender:UIDatePicker) {
//
//           let dateFormatter = DateFormatter()
//           dateFormatter.dateStyle = DateFormatter.Style.medium
//           dateFormatter.timeStyle = DateFormatter.Style.none
//           DOBTextField.text = dateFormatter.string(from: sender.date)
//
//       }
//
//    let passwordTextFieldNewUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Password"
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let confirmPasswordTextFieldNewUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Confirm Password"
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let passwordTextFieldExistingUser: SkyFloatingLabelTextField = {
//        let textField = SkyFloatingLabelTextField()
//        textField.placeholder = "Password"
//        textField.font = UIFont(name: "HelveticaNeue", size: 19.0)
//        return textField
//    }()
//    let loginButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Login", for: .normal)
//        button.tintColor = .white
//        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 25.0)
//        return button
//    }()
//    let forgetPassButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Forget Password...", for: .normal)
//        button.tintColor = .systemBlue
//        button.titleLabel?.font = UIFont(name: "HelveticaNeue", size: 15.0)
//        return button
//    }()
//    let loginAsGuestButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Login as Guest", for: .normal)
//        button.tintColor = .white
//        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 25.0)
//        return button
//    }()
//    let createAccountButton: UIButton = {
//        let button = UIButton(type: .system)
//        button.setTitle("Create Account", for: .normal)
//        button.tintColor = .white
//        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 25.0)
//        return button
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.layer.backgroundColor = #colorLiteral(red: 0.9411764706, green: 0.9411764706, blue: 0.9411764706, alpha: 1)
//        displayLogo(viewController: self)
//
//        setupSegmentController()
//        setupAsGuestContentView()
//        self.newUserContentView.bindToKeyboard()
//        self.hideKeyboardWhenTappedAround()
//
//        let genderPicker = UIPickerView()
//        genderTextField.inputView = genderPicker
//        genderPicker.delegate = self
//
//        let cityPicker = UIPickerView()
//        cityTextField.inputView = cityPicker
//        cityPicker.delegate = self
//    }
//
//    //UIPickerView Functions For Gender Text Field
//    func numberOfComponents(in pickerView: UIPickerView) -> Int {
//        return 1
//    }
//
//    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
//        if genderTextField.editingOrSelected {
//            return genderData.count
//        }
//        else {
//            return cityData.count
//        }
//    }
//
//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if genderTextField.editingOrSelected {
//            return genderData[row]
//        }
//        else {
//            return cityData[row]
//        }
//    }
//
//    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
//        if genderTextField.editingOrSelected {
//            genderTextField.text = genderData[row]
//        }
//        else {
//            cityTextField.text = cityData[row]
//        }
//    }
//
//
//
////Hide Keyboard Function
//
//    func hideKeyboardWhenTappedAround() {
//        let tap = UITapGestureRecognizer(target: self, action: #selector(disissKeyboard))
//        tap.cancelsTouchesInView = false
//        view.addGestureRecognizer(tap)
//    }
//
//    @objc func disissKeyboard() {
//        view.endEditing(true)
//    }
//
//}
