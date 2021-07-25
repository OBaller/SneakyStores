//
//  AuthManager.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import Foundation
import FirebaseAuth

class AuthManager {
    
    func validateLogin(with email: String, password: String, completion: @escaping ((Bool) -> Void)) {
        Auth.auth().signIn(withEmail: email, password: password) {_, error in
            guard error == nil else {
                completion(false)
                return
            }
            completion(true)
        }
    }
    
}
