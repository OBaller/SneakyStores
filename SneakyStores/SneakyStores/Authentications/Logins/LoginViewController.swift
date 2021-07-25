//
//  LoginViewController.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var eyeButton: UIButton!
    
    private let viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavBar()
        emailField.becomeFirstResponder()
    }
    
    @IBAction func secureButtonPressed(_ sender: UIButton) {
        passwordField.isSecureTextEntry.toggle()
        let imageName = passwordField.isSecureTextEntry ? "eye" : "eye.slash"
        eyeButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailField.text, let pass = passwordField.text,
           !email.isEmpty, !pass.isEmpty {
            viewModel.loginUser(with: email, password: pass) { [weak self] success in
                success ? self?.navigateToHome() : self?
                    .showAlert(alertText: "Incorrect Details",
                               alertMessage: "Incorrect email or password. Please check your details and try again.")
            }
        } else {
            self.showAlert(alertText: "Incomplete details", alertMessage: "Please, enter your email and password.")
        }
    }
    
    @IBAction func signupPressed(_ sender: UIButton) {
        guard let loginVC = storyboard?.instantiateViewController(identifier: "SignupViewController") as? SignupViewController else {return}
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true)
    }
}
