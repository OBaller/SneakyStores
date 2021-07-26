//
//  HomepageViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//

import UIKit

class HomepageViewController: UIViewController {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var notificationButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    

    @IBAction func notificationButtonTapped(_ sender: UIButton) {
        
    }
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        
    }
}

extension HomepageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
}
