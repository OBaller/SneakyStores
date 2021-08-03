//
//  ProfileViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//
import FirebaseAuth
import UIKit

class ProfileViewController: UIViewController {
    
    let profileViewModel = ProfileViewModel()
    
    @IBOutlet weak var profileName: UILabel!
    @IBOutlet weak var phoneNumberLabel: UILabel!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var addressLabel: UILabel!
    
    private let button: UIButton = {
        let button = UIButton()
        button.tintColor = .black
        button.setTitle("Done", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.frame = CGRect(x: 0, y: 0, width: 60, height: 0)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneNumberTextField.isHidden = true
        addressTextField.isHidden = true
        setNavBar()
        setupRightBarButton()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        profileViewModel.getProfileDetails()
        profileViewModel.notificationCompletion = {
            DispatchQueue.main.async {
                self.profileName.text = self.profileViewModel.fullName
                self.phoneNumberLabel.text = self.profileViewModel.phoneNumber
                self.addressLabel.text = self.profileViewModel.userAddress
            }
        }
    }
    
    private func setupRightBarButton() {
        navigationItem.rightBarButtonItem = nil
        let barButton = UIBarButtonItem(customView: button)
        navigationItem.rightBarButtonItem = barButton
        button.addTarget(self, action: #selector(editButtonTapped), for: .touchUpInside)
        button.setTitle("Edit", for: .normal)
    }
    
    @objc private func editButtonTapped() {
        button.title(for: .normal) == "Done" ? saveDetails() : editDetails()
    }
    
    @IBAction func logoutButton(_ sender: UIButton) {
        let actionSheet = UIAlertController(title: "Are you sure you want to log out?",
                                            message: "",
                                            preferredStyle: .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Logout", style: .destructive, handler: { [weak self] _ in
            HUD.show(status: "Logging out...")
            do {
                try Auth.auth().signOut()
            } catch {
                self?.showAlert(alertText: "Error",
                                alertMessage: "There was an error logging you out. Please try again.")
            }
            HUD.hide()
            let newStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let controller = newStoryboard
                .instantiateViewController(identifier: "LoginViewController")
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .flipHorizontal
            self?.present(controller, animated: true, completion: nil)
        }))
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(actionSheet, animated: true, completion: nil)
    }
    
    
    
    
    private func saveDetails() {
        if phoneNumberTextField.text != nil && phoneNumberTextField.text?.isEmpty == false
            && addressTextField != nil
            && addressTextField.text?.isEmpty == false {
            HUD.show(status: "Updating...")
            phoneNumberLabel.text = phoneNumberTextField.text
            addressLabel.text = addressTextField.text
        } else {
            HUD.hide()
            self.showAlert(alertText: "Error",
                           alertMessage: "Please type in your address and phone number")
        }
        addressLabel.isHidden = false
        phoneNumberLabel.isHidden = false
        addressTextField.isHidden = true
        phoneNumberTextField.isHidden = true
        profileViewModel.updateProfile(view: self, profileViewModel.email, profileViewModel.fullName,
                                       addressLabel.text ??
                                        "Update your address", phoneNumberLabel.text ?? "Update your phone number")
       button.setTitle("Edit", for: .normal)
    }
    private func editDetails() {
        addressTextField.text = addressLabel.text
        phoneNumberTextField.text = phoneNumberLabel.text
        addressLabel.isHidden = true
        phoneNumberLabel.isHidden = true
        addressTextField.isHidden = false
        phoneNumberTextField.isHidden = false
        button.setTitle("Done", for: .normal)
    }
    
}
