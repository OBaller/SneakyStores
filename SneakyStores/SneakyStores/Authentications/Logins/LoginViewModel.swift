//
//  LoginViewModel.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import Foundation
import FirebaseAuth

class LoginViewModel {
    func loginUser(with email: String, password: String, completion: @escaping ((Bool) -> Void)) {
        let manager = AuthManager()
        manager.validateLogin(with: email, password: password) { success in
            completion(success)
        }
    }
}

