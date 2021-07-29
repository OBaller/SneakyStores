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
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "af-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.8051595092, green: 0.7116223574, blue: 0.9723115563, alpha: 1), itemPrice: "$200", itemName: "G.Exotic"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed5-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.5541878148, green: 0.3075051178, blue: 0.9264967267, alpha: 1), itemPrice: "$260", itemName: "BeyAdidas"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Adidas-logo-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "addit-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), itemPrice: "$140", itemName: "Ladylag"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "jordan-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed4-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.3137254902, green: 0.537254902, blue: 0.7764705882, alpha: 1), itemPrice: "$80", itemName: "JordanXI"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "fubu-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed9-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.6980392157, green: 0.6941176471, blue: 0.7254901961, alpha: 1), itemPrice: "$120", itemName: "F.Retro"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "jordan-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed3-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.2870570123, green: 0.2180345654, blue: 0.4129229188, alpha: 1), itemPrice: "$180", itemName: "Jordan Air"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "fila-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed1-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.7882352941, green: 0.8941176471, blue: 0.7725490196, alpha: 1), itemPrice: "$190", itemName: "Fila Maxi"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "wed2-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.7098039216, green: 0.9176470588, blue: 0.9176470588, alpha: 1), itemPrice: "$270", itemName: "Nas Nike"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "fubu-removebg-preview"), sneakerImage: #imageLiteral(resourceName: "wed8-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), itemPrice: "$150", itemName: "Fubu Retro JI"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "tra-removebg-preview"), backgroundCellView: #colorLiteral(red: 0.768627451, green: 0.5647058824, blue: 0.8941176471, alpha: 1), itemPrice: "$380", itemName: "Nike Air"),
            HeaderModel(designerLogo: #imageLiteral(resourceName: "Image-3"), sneakerImage: #imageLiteral(resourceName: "zion-removebg-preview"), backgroundCellView: #colorLiteral(red: 0, green: 0.3529411765, blue: 0.5529411765, alpha: 1), itemPrice: "$290", itemName: "Nike Rollo")
        ]
    }
}
