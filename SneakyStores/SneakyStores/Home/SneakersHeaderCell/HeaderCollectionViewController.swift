//
//  HeaderCollectionViewController.swift
//  SneakyStores
//
//  Created by apple on 26/07/2021.
//

import UIKit

class HeaderCollectionViewController: HorinzontalSnappingController, UICollectionViewDelegateFlowLayout {

    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.register(HeaderCollectionViewCell.nib(), forCellWithReuseIdentifier: HeaderCollectionViewCell.identifier)
        collectionView.backgroundColor = .clear
        collectionView.contentInset = .init(top: 20, left: 20, bottom: 20, right: 20)

    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HeaderCollectionViewCell.identifier, for: indexPath) as? HeaderCollectionViewCell
        cell?.layer.cornerRadius = 12
        cell?.backgroundColor = #colorLiteral(red: 0.8051595092, green: 0.7116223574, blue: 0.9723115563, alpha: 1)
        return cell ?? UICollectionViewCell()
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width - 150, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    

}
