//
//  HeaderViewModel.swift
//  SneakyStores
//
//  Created by apple on 28/07/2021.
//

import Foundation

class HeaderViewModel {
    var footies: [HeaderModel] = []
    
    init() {
        footies = [
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "af-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.8588235294, green: 0.9019607843, blue: 0.9921568627, alpha: 1), itemPrice: "$200", itemName: "G.Exotic"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed5-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.4666666667, green: 0.6745098039, blue: 0.9450980392, alpha: 1), itemPrice: "$260", itemName: "BeyAdidas"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "addit-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9294117647, green: 0.9294117647, blue: 0.9294117647, alpha: 1), itemPrice: "$140", itemName: "Ladylag"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "jordan-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed4-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9411764706, green: 0.8509803922, blue: 0.9058823529, alpha: 1), itemPrice: "$80", itemName: "JordanXI"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "fubu-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed9-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.6980392157, green: 0.6941176471, blue: 0.7254901961, alpha: 1), itemPrice: "$120", itemName: "F.Retro"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "jordan-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed3-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.9725490196, green: 0.8862745098, blue: 0.8117647059, alpha: 1), itemPrice: "$180", itemName: "Jordan Air"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "fila-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed1-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.7882352941, green: 0.8941176471, blue: 0.7725490196, alpha: 1), itemPrice: "$190", itemName: "Fila Maxi"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "wed2-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.7098039216, green: 0.9176470588, blue: 0.9176470588, alpha: 1), itemPrice: "$270", itemName: "Nas Nike"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "fubu-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed8-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), itemPrice: "$150", itemName: "Fubu Retro JI"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "tra-removebg-preview"), backgroundCellView: #colorLiteral(red: 1, green: 0.8470588235, blue: 0.8, alpha: 1), itemPrice: "$380", itemName: "Nike Air"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "zion-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.6980392157, green: 0.6941176471, blue: 0.7254901961, alpha: 1), itemPrice: "$290", itemName: "Nike Rollo")
        ]
    }
}
