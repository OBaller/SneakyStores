//
//  ForyouCollectionViewCell.swift
//  SneakyStores
//
//  Created by apple on 26/07/2021.
//

import UIKit

class ForyouCollectionViewCell: UICollectionViewCell {
   var delegate: SeeAllViewControllerDelegate?
    
    @IBOutlet weak var seeAllButton: UIButton!
    static let identifier = "ForyouCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "ForyouCollectionViewCell", bundle: nil)
    }

    @IBAction func seeAllButtonPressed(_ sender: UIButton) {
        print("Okay, you tapped me!!")
        delegate?.instantiateSeeAllViewController()
    }
}
