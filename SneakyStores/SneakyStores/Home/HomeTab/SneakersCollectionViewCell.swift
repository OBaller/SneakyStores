//
//  SneakersCollectionViewCell.swift
//  SneakyStores
//
//  Created by apple on 26/07/2021.
//

import UIKit
protocol SneakersCollectionViewCellDelegate: AnyObject {
    func didTapAddBtn(with item: SneakersModel)
    func didTapRemoveBtn(with item: SneakersModel)
}


class SneakersCollectionViewCell: UICollectionViewCell {
    weak var delegate: SneakersCollectionViewCellDelegate?
    private var itemsDetailModel: SneakersModel?
    
    static let identifier = "SneakersCollectionViewCell"
    
    @IBOutlet weak var backgroundCellView: UIView!
    @IBOutlet weak var designerLogo: UIImageView!
    @IBOutlet weak var sneakerImage: UIImageView!
    @IBOutlet weak var sneakerNameModel: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var faveImageButton: UIButton!
    @IBOutlet weak var addBttn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "SneakersCollectionViewCell", bundle: nil)
    }

    @IBAction func faveImageButtonPressed(_ sender: UIButton) {
        if var items = itemsDetailModel {
            if items.liked == false {
                items.liked = true
                delegate?.didTapAddBtn(with: items)
            } else {
                items.liked = false
                delegate?.didTapRemoveBtn(with: items)
            }
        } else {
            print("Naseem")
        }
    }
    
    @IBAction func addItemPressed(_ sender: UIButton) {
    }
    
    private func configureLikedBtn(for selectedState: Bool) {
        faveImageButton.setImage(UIImage(systemName: selectedState ? "heart.fill" : "heart"), for: .normal)
        faveImageButton.tintColor = selectedState ? .red : .none
    }
    
    func setUp(_ footwears: SneakersModel) {
        backgroundCellView.backgroundColor = footwears.backgroundCellView
        designerLogo.image = footwears.designerLogo
        sneakerImage.image = footwears.sneakerImage
        price.text = footwears.itemPrice
        sneakerNameModel.text = footwears.itemName
        configureLikedBtn(for: footwears.liked == false )
        //self.itemsDetailModel = footwears
    }
}
