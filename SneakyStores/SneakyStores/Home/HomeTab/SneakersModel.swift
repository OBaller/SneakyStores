//
//  SneakersModel.swift
//  SneakyStores
//
//  Created by apple on 28/07/2021.
//

import UIKit

class SneakersModel {
    internal init(designerLogo: UIImage, sneakerImage: UIImage, backgroundCellView: UIColor, itemPrice: String, itemName: String, liked: Bool) {
        self.designerLogo = designerLogo
        self.sneakerImage = sneakerImage
        self.backgroundCellView = backgroundCellView
        self.itemPrice = itemPrice
        self.itemName = itemName
        self.liked = liked
    }
    
    let designerLogo: UIImage
    let sneakerImage: UIImage
    let backgroundCellView: UIColor
    let itemPrice: String
    let itemName: String
    var liked: Bool
}
