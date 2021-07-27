//
//  HomepageViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//

import UIKit

class HomepageViewController: UIViewController {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var notificationButton: UIButton!
    @IBOutlet weak var sneakersCollectionView: UICollectionView!
    
    fileprivate let firstCell = "ForyouCollectionViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        sneakersCollectionView.delegate = self
        sneakersCollectionView.dataSource = self
        sneakersCollectionView.register(SneakersCollectionViewCell.nib(), forCellWithReuseIdentifier: SneakersCollectionViewCell.identifier)
        sneakersCollectionView.register(ShoeHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ShoeHeaderCell")
        sneakersCollectionView.register(ForyouCollectionViewCell.nib(), forCellWithReuseIdentifier: ForyouCollectionViewCell.identifier)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    

    @IBAction func notificationButtonTapped(_ sender: UIButton) {
        
    }
    @IBAction func searchButtonTapped(_ sender: UIButton) {
        
    }
}

extension HomepageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchTextField.endEditing(true)
        return true
    }
}

extension HomepageViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "ShoeHeaderCell", for: indexPath) as? ShoeHeaderCell
        header?.delegate = self
        return header ?? UICollectionReusableView()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return .init(width: view.frame.width, height: 360)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 11
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ForyouCollectionViewCell.identifier, for: indexPath) as? ForyouCollectionViewCell
            cell?.delegate = self
            return cell ?? UICollectionViewCell()
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SneakersCollectionViewCell.identifier, for: indexPath) as? SneakersCollectionViewCell
            return cell ?? UICollectionViewCell()
        }
       
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return .init(width: sneakersCollectionView.frame.size.width, height: 60)
        } else {
            return .init(width: 0, height: 0)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 20, bottom: 10, right: 20)
    }

    
    
}

extension HomepageViewController: SeeAllViewControllerDelegate {
    func instantiateSeeAllViewController() {
        guard let seeAllController = storyboard?.instantiateViewController(identifier: "SeeAllViewController") as? SeemoreViewController else { return }
        navigationController?.pushViewController(seeAllController, animated: true)
    }
    
    
}
