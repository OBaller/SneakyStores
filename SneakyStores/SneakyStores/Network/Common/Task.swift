//
//  Task.swift
//  SneakyStores
//
//  Created by apple on 31/07/2021.
//

import Foundation

enum Tasks {
    case read
    case delete
    case create(documentData: Parameter)
    case update(documentData: Parameter)
}
