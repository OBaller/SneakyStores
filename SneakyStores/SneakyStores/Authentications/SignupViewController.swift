//
//  SignupViewController.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var fullNameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var eyeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    @IBAction func eyeButtonPressed(_ sender: UIButton) {
        passwordField.isSecureTextEntry.toggle()
        let imageName = passwordField.isSecureTextEntry ? "eye" : "eye.slash"
        eyeButton.setImage(UIImage(systemName: imageName), for: .normal)
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
