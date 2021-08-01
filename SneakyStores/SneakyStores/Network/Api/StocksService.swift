//
//  StocksService.swift
//  SneakyStores
//
//  Created by apple on 01/08/2021.
//

import Foundation

struct StocksService {
    let router = Router<StocksApi>()
    
    func getStocks(completion: @escaping NetworkRouterCompletion) {
        router.request(.getStocks, completion: completion)
    }
}
