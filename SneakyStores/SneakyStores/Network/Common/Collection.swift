//
//  Collection.swift
//  SneakyStores
//
//  Created by apple on 31/07/2021.
//

import Foundation

enum Collection {
    case users
    case orderHistory
    case stocks
    case userProfile
    
    var identifier: String {
        switch self {
        case.users :
            return "users"
        case .orderHistory :
            return "order_history"
        case .stocks :
            return "Stocks"
        case.userProfile :
            return "user_profile"
        }
    }
}
