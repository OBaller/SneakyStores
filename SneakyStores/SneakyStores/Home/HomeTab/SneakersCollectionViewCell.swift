//
//  SneakersCollectionViewCell.swift
//  SneakyStores
//
//  Created by apple on 26/07/2021.
//

import UIKit

class SneakersCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "SneakersCollectionViewCell"
    
    @IBOutlet weak var backgroundCellView: UIView!
    @IBOutlet weak var designerLogo: UIImageView!
    @IBOutlet weak var sneakerImage: UIImageView!
    @IBOutlet weak var sneakerNameModel: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var faveImageButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let font:UIFont? = UIFont(name: "Helvetica", size:16)
        let fontSuper:UIFont? = UIFont(name: "Helvetica", size:8)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: "$ 200", attributes: [.font:font!])
        attString.setAttributes([.font:fontSuper!,.baselineOffset:10], range: NSRange(location:0,length:1))
        price.attributedText = attString
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "SneakersCollectionViewCell", bundle: nil)
    }

    @IBAction func faveImageButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func addItemPressed(_ sender: UIButton) {
    }
}
