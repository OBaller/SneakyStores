//
//  SneakersViewModel.swift
//  SneakyStores
//
//  Created by apple on 28/07/2021.
//
import FirebaseAuth
import FirebaseFirestore
import UIKit

class SneakersViewModel {
   var sneaker = [SneakersModel]()
    var greetingText = ""
    var usernameHandler: (() -> Void)?
    var notifySneakerCompletionHandler: (() -> Void)?
    
    
    
    func getAllSneakers() {
        let getOrder = StocksService()
        getOrder.getStocks { (result) in
            switch result {
            case .failure(let error):
                print(error)
            case .success(let result):
                result?.documents.forEach({ (doc) in
                    let data = doc.data()
                    if let name = data["sneakerName"] as? String, let logo = data["designerLogo"] as? String, let image = data["sneakerImage"] as? String, let price = data["sneakerPrice"] as? String {
                        let newstock = SneakersModel(designerLogo: logo, sneakerImage: image, itemPrice: price, itemName: name, liked: false, stockID: doc.documentID)
                        self.sneaker.append(newstock)
                    }
                })
                self.notifySneakerCompletionHandler?()
            }
        }
    }
    
    func getUserName() {
        let docId = Auth.auth().currentUser?.uid
        let docRef = Firestore.firestore().collection("/users").document("\(docId!)")
        docRef.getDocument {(document, error) in
            if let document = document, document.exists {
                let docData = document.data()
                let status = docData!["fullName"] as? String ?? ""
                let username = status
                self.greetingText = "\(username)"
                self.usernameHandler?()
            } else {
                debugPrint(error as Any)
            }
        }
    }
    
}
