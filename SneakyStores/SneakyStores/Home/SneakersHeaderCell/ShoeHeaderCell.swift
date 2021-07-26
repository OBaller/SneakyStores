//
//  ShoeHeaderCell.swift
//  SneakyStores
//
//  Created by apple on 26/07/2021.
//

import UIKit

protocol SeeAllViewControllerDelegate {
    func instantiateSeeAllViewController()
}

class ShoeHeaderCell: UICollectionReusableView {
    var instantiateSeeAllViewcontroller: (()->())? // closure
    var delegate: SeeAllViewControllerDelegate?
    
    let hotpickLabel: UILabel = {
        let label = UILabel()
        label.text = "Hot Pick  "
        label.font = UIFont.boldSystemFont(ofSize: 15)
        return label
    }()
    
    let imageView: UIImageView = {
        let image = UIImageView()
        image.image = #imageLiteral(resourceName: "af")
        image.constrainWidth(constant: 20)
        image.constrainHeight(constant: 20)
        return image
    }()
    
    let seeAllBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("See all", for: .normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        btn.addTarget(self, action: #selector(toSeeAllViewController),  for: .touchUpInside)
        btn.constrainHeight(constant: 30)
        btn.constrainWidth(constant: 80)
        btn.titleLabel?.tintColor = UIColor.systemBlue
        btn.setTitleColor(UIColor.systemBlue, for: .normal)
        return btn
    }()
    
    @objc func toSeeAllViewController () {
        delegate?.instantiateSeeAllViewController()
    }
    
    
    
    let headerController = HeaderCollectionViewController()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let stackView = HorizontalStackView(arrangedSubviews: [hotpickLabel, imageView, UIView(), seeAllBtn])
        stackView.distribution = .fill
        stackView.alignment = .center
        addSubview(stackView)
        addSubview(headerController.view)
        stackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 10))
        headerController.view.anchor(top: stackView.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 15, left: 0, bottom: 10, right: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
