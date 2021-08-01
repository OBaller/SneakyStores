//
//  RealmService.swift
//  SneakyStores
//
//  Created by apple on 29/07/2021.
//

import RealmSwift
import Foundation

class RealmService {
    
    static let shared = RealmService()
    // swiftlint:disable:next force_try
    var realm = try! Realm()
    
    func create<T: Object>(_ object: T) {
        do {
            try realm.write {
                realm.add(object)
            }
        } catch {
            print(error)
        }
    }
    
    func delete<T: Object>(_ object: T) {
        do {
            try realm.write {
                realm.delete(object)
                // swiftlint:disable:next force_try
                try! realm.commitWrite()
            }
        } catch {
            print(error)
        }
    }
}

