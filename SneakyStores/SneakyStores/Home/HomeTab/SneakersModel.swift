//
//  SneakersModel.swift
//  SneakyStores
//
//  Created by apple on 28/07/2021.
//
import RealmSwift
import UIKit

class SneakersModel {
    internal init(designerLogo: String, sneakerImage: String, itemPrice: String, itemName: String, liked: Bool, stockID: String) {
        self.designerLogo = designerLogo
        self.sneakerImage = sneakerImage
        self.itemPrice = itemPrice
        self.itemName = itemName
        self.liked = liked
        self.stockID = stockID
    }
    
    let designerLogo: String
    let sneakerImage: String
    let itemPrice: String
    let itemName: String
    var liked: Bool
    let stockID: String
}

class LikeModel: Object {
    @objc dynamic var itemName: String = ""
    @objc dynamic var sneakerImage: String = ""
    @objc dynamic var designerLogo: String = ""
    @objc dynamic var itemPrice: String = ""
    @objc dynamic var liked: Bool = false
}

