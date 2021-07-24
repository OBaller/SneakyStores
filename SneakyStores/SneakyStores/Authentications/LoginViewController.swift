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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func secureButtonPressed(_ sender: UIButton) {
        passwordField.isSecureTextEntry.toggle()
        let imageName = passwordField.isSecureTextEntry ? "eye" : "eye.slash"
        eyeButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func signupPressed(_ sender: UIButton) {
        guard let loginVC = storyboard?.instantiateViewController(identifier: "SignupViewController") as? SignupViewController else {return}
        loginVC.modalPresentationStyle = .fullScreen
        present(loginVC, animated: true)
    }
}
