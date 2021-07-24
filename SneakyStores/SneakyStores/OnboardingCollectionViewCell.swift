//
//  OnboardingCollectionViewCell.swift
//  SneakyStores
//
//  Created by apple on 24/07/2021.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var slideImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setUp(_ slide: OnboardingSlides) {
        slideImage.image = slide.image
        titleLabel.text = slide.title
        descriptionLabel.text = slide.description
    }
}
