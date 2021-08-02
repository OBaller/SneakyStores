//
//  FaveCollectionViewCell.swift
//  SneakyStores
//
//  Created by apple on 02/08/2021.
//
import Kingfisher
import UIKit

protocol FaveCollectionViewCellDelegate: AnyObject {
    func didTapAddBtn(with item: SneakersModel)
    func didTapRemoveBtn(with item: SneakersModel)
}

class FaveCollectionViewCell: UICollectionViewCell {
    static let identifier = "FaveCollectionViewCell"
    
    weak var delegate: FaveCollectionViewCellDelegate?
    private var saveData: SneakersModel?
    
    @IBOutlet weak var designerLogo: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var sneakerImage: UIImageView!
    @IBOutlet weak var sneakerName: UILabel!
    @IBOutlet weak var sneakerPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "FaveCollectionViewCell", bundle: nil)
    }
    
    
    @IBAction func addButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func likeButtonPressed(_ sender: UIButton) {
        if let items = saveData {
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
    
    private func configureLikedBtn(for selectedState: Bool) {
        likeButton.setImage(UIImage(systemName: selectedState ? "heart.fill" : "heart"), for: .normal)
        likeButton.tintColor = selectedState ? .red : .none
    }
    
    func setUp(with footwears: LikeModel) {
        designerLogo.kf.setImage(with: footwears.designerLogo.asUrl)
        sneakerImage.kf.setImage(with: footwears.sneakerImage.asUrl)
        sneakerPrice.text = footwears.itemPrice
        sneakerName.text = footwears.itemName
        configureLikedBtn(for: footwears.liked == true )
    }
}
