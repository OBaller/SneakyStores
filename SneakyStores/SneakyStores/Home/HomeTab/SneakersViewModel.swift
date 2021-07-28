//
//  SneakersViewModel.swift
//  SneakyStores
//
//  Created by apple on 28/07/2021.
//

import UIKit

class SneakersViewModel {
    var ftwears: [SneakersModel] = []
    
    init() {
        ftwears = [
            SneakersModel(designerLogo: #imageLiteral(resourceName: "zanotti-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl11-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$132", itemName: "Stripper 6XJ"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Image-2"), sneakerImage: #imageLiteral(resourceName: "coll-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$175", itemName: "Lady lag"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "yeezy-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl4-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$260", itemName: "Yeezy101"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl2-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$185", itemName: "Nike Air Force"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Image-2"), sneakerImage: #imageLiteral(resourceName: "tra-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$250", itemName: "Nike Air"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "zanotti-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl9-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$140", itemName: "Zanny GI"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Image-2"), sneakerImage: #imageLiteral(resourceName: "zion-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$290", itemName: "Nike Rollo"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "macqueen"), sneakerImage: #imageLiteral(resourceName: "sl16-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$340", itemName: "McQueen J Model"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "fila-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed1-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$190", itemName: "Fila Maxi"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "d_g-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl10-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$90", itemName: "Y2K"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "fubu-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed8-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$150", itemName: "Fubu Retro JI"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "zanotti-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl13-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$140", itemName: "JBL Zanotti"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Image-2"), sneakerImage: #imageLiteral(resourceName: "niback-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$50", itemName: "Sneaky Slides"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Image-2"), sneakerImage: #imageLiteral(resourceName: "wed2-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$270", itemName: "Nas Nike"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "d_g-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl7-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$400", itemName: "D&G Vixen"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "jordan-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed3-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$180", itemName: "Jordan Air"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "yeezy-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl5-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$320", itemName: "YZY Swimmer"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "fubu-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed9-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$120", itemName: "F.Retro"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl1-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$290", itemName: "Triathlon"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "jordan-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed4-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$80", itemName: "JordanXI"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "addit-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$140", itemName: "Ladylag"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed5-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$260", itemName: "BeyAdidas"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl3-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$180", itemName: "Genesis 6L"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "Image-2"), sneakerImage: #imageLiteral(resourceName: "af-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$200", itemName: "G.Exotic"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "macqueen"), sneakerImage: #imageLiteral(resourceName: "sl15-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$360", itemName: "McQueen"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "d_g-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl8-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$170", itemName: "Dolce Retro"),
            SneakersModel(designerLogo: #imageLiteral(resourceName: "yeezy-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "sl6-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$190", itemName: "Yeezy Genasis")
        ]
    }
}
