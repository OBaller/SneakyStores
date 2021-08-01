//
//  OrderApi.swift
//  SneakyStores
//
//  Created by apple on 01/08/2021.
//
import FirebaseAuth
import FirebaseFirestore
import Foundation

enum OrderApi {
    case createSneakerOrder(items: RequestParameter)
    case getSneakerHistory
    case updateSneakerHistory(shoeID: String, items: Shoe)
}

extension OrderApi: FirestoreRequest {
    var baseCollectionReference: DocumentReference? {
        guard let userID = Auth.auth().currentUser?.uid else {return nil}
        return Firestore.firestore().collection("/users").document(userID)
    }
    
    var tasks: Tasks {
        switch self {
        case .createSneakerOrder(let shoe):
            return .create(documentData: shoe.asParameter)
        case .getSneakerHistory :
            return .read
        case .updateSneakerHistory(_, let shoe):
            return .update(documentData: shoe.asParameter)
        }
    }
    
    var documentReference: DocumentReference? {
        switch self {
        case .createSneakerOrder:
            return baseCollectionReference
        case .getSneakerHistory:
            return baseCollectionReference?.collection("order_history").document("id")
        case .updateSneakerHistory(_, _):
            return baseCollectionReference?.collection("order_history").document("id")
        }
    }
    
    var collectionReference: CollectionReference? {
        switch self {
        case .createSneakerOrder:
            return baseCollectionReference?.collection(Collection.orderHistory.identifier)
        case .getSneakerHistory:
            return baseCollectionReference?.collection(Collection.orderHistory.identifier)
        case .updateSneakerHistory:
            return baseCollectionReference?.collection(Collection.orderHistory.identifier)
        }
}

    var collectionReferences: Query? {
        return Firestore.firestore().collection(Collection.stocks.identifier).whereField("capital", isEqualTo: true)
    }
}
