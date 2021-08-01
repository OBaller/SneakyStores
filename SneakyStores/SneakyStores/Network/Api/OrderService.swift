//
//  OrderService.swift
//  SneakyStores
//
//  Created by apple on 01/08/2021.
//

import Foundation

struct OrderService {
    let router = Router<OrderApi>()
    
    func createOrder(with shoe: Shoe, completion: @escaping NetworkRouterCompletion) {
        router.request(.createSneakerOrder(items: shoe), completion: completion)
    }
    
    func getSneakerHistory(completion: @escaping NetworkRouterCompletion) {
        router.request(.getSneakerHistory, completion: completion)
    }
    func updateFoodHistory(userId: String, with shoe: Shoe, completion: @escaping NetworkRouterCompletion) {
        router.request(.updateSneakerHistory(shoeID: userId, items: shoe), completion: completion)
    }
    
}
