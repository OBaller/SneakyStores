//
//  FirebaseRouter.swift
//  SneakyStores
//
//  Created by apple on 31/07/2021.
//

import Foundation

protocol FireBaseRouter {
    associatedtype Endpoint: FirestoreRequest
    func request(_ request: Endpoint, completion: @escaping NetworkRouterCompletion)
}
