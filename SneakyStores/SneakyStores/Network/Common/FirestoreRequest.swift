//
//  FirestoreRequest.swift
//  SneakyStores
//
//  Created by apple on 31/07/2021.
//
import Foundation
import FirebaseFirestore

protocol FirestoreRequest {
    var tasks: Tasks { get }
    var documentReference: DocumentReference? { get }
    var collectionReference: CollectionReference? { get }
    var baseCollectionReference: DocumentReference? { get }
    var collectionReferences: Query? { get }
}
