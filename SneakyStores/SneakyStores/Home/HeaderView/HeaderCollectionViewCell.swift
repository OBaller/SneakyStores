//
//  HeaderCollectionViewCell.swift
//  SneakyStores
//
//  Created by apple on 26/07/2021.
//

import UIKit

class HeaderCollectionViewCell: UICollectionViewCell {
    static let identifier = "HeaderCollectionViewCell"
    
    @IBOutlet weak var designerLogo: UIImageView!
    @IBOutlet weak var sneakerImage: UIImageView!
    @IBOutlet weak var sneakerName: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        //backgroundCellView.layer.cornerRadius = 8
        let font:UIFont? = UIFont(name: "Helvetica", size:20)
        let fontSuper:UIFont? = UIFont(name: "Helvetica", size:10)
        let attString:NSMutableAttributedString = NSMutableAttributedString(string: "$ 200", attributes: [.font:font!])
        attString.setAttributes([.font:fontSuper!,.baselineOffset:10], range: NSRange(location:0,length:1))
        priceLabel.attributedText = attString
        
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "HeaderCollectionViewCell", bundle: nil)
    }

}
