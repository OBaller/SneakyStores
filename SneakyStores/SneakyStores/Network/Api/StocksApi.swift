//
//  StocksApi.swift
//  SneakyStores
//
//  Created by apple on 01/08/2021.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

enum StocksApi {
    case getStocks
}

extension StocksApi: FirestoreRequest {
    
    var collectionReference: CollectionReference? {
        switch self {
        case .getStocks:
            return Firestore.firestore().collection(Collection.stocks.identifier)
        }
    }
    
    var baseCollectionReference: DocumentReference? {
        return Firestore.firestore().collection(Collection.stocks.identifier).document()
    }
    
    var tasks: Tasks {
        switch self {
        case .getStocks:
            return .read
        }
    }
    var documentReference: DocumentReference? {
        switch self {
        case .getStocks:
            return baseCollectionReference
        }
    }
    var collectionReferences: Query? {
        return Firestore.firestore().collection(Collection.stocks.identifier).whereField("capital", isEqualTo: true)
    }
}
