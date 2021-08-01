//
//  Shoe.swift
//  SneakyStores
//
//  Created by apple on 01/08/2021.
//

import Foundation

struct Shoe {
    var name = ""
    var price = ""
    var items = ""
    var image = ""
}

extension Shoe: RequestParameter {
    var asParameter: Parameter {
        return ["shoe": name, "price": price, "items": items, "image": image]
    }
}
