//
//  SignupViewController.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//
import FirebaseAuth
import FirebaseFirestore
import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var eyeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    func validateTextField() {
        if !fullNameField.text!.hasWhiteSpace {
            self.showAlert(alertText: "Oops", alertMessage: "Please, enter your firstname and lastname")
        }
        
        if fullNameField.text == "" {
            self.showAlert(alertText: "Oops", alertMessage: "Please, enter your full name")
        }
        
        if emailField.text == "" {
            self.showAlert(alertText: "Oops", alertMessage: "Please, enter your email")
        }
        
        if emailField.text != "" && emailField.text!.isValidEmail == false {
            self.showAlert(alertText: "Invalid Email", alertMessage: "Please, enter a valid email")
        }
        
        if passwordField.text == "" {
            self.showAlert(alertText: "Oops", alertMessage: "Please enter your password")
        }
        
        if passwordField.text != "" && passwordField.text!.isValidPassword == false {
            self.showAlert(alertText: "Oops",
                           alertMessage: "Password must be alphanumeric and must be greater than 8 characters")
        }
    }
    
    @IBAction func eyeButtonPressed(_ sender: UIButton) {
        passwordField.isSecureTextEntry.toggle()
        let imageName = passwordField.isSecureTextEntry ? "eye" : "eye.slash"
        eyeButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        validateTextField()
       // HUD.show(status: "Just a second...")
        if let email = emailField.text, let password = passwordField.text, let fullName = fullNameField.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error = error, authResult != nil {
                    print(error.localizedDescription)
                    HUD.hide()
                } else {
                    let docId = Auth.auth().currentUser?.uid
                    Firestore.firestore().collection("users").document(docId!).setData(
                        ["email": email, "fullName": fullName,
                         "address": "Update your address", "phoneNumber": "Update Phone Number"]) { (error) in
                        if error != nil {
                           // HUD.hide()
                            self.showAlert(alertText: "Error",
                                           alertMessage: "There was an error creating account, please try again.")
                        } else {
                           // HUD.hide()
                            let alertController =
                            UIAlertController(title: "Done",
                                              message: "Account created successfully!", preferredStyle: .alert)
                            let acceptAction = UIAlertAction(title: "Accept", style: .default) { (_) -> Void in
                                self.navigateToHome()
                            }
                            alertController.addAction(acceptAction)
                            self.present(alertController, animated: true, completion: nil)
                            
                        }
                    }
                }
            }
        }
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
