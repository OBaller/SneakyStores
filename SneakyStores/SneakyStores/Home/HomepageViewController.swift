//
//  HomepageViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//
import RealmSwift
import UIKit

class HomepageViewController: UIViewController {
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var notificationButton: UIButton!
    @IBOutlet weak var sneakersCollectionView: UICollectionView!
    
    fileprivate let firstCell = "ForyouCollectionViewCell"
    let viewModel = HeaderViewModel()
    let vviewModel = SneakersViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vviewModel.getUserName()
        userName.text = vviewModel.greetingText
        vviewModel.getAllSneakers()
        searchTextField.delegate = self
        sneakersCollectionView.delegate = self
        sneakersCollectionView.dataSource = self
        sneakersCollectionView.register(SneakersCollectionViewCell.nib(), forCellWithReuseIdentifier: SneakersCollectionViewCell.identifier)
        sneakersCollectionView.register(ShoeHeaderCell.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ShoeHeaderCell")
        sneakersCollectionView.register(ForyouCollectionViewCell.nib(), forCellWithReuseIdentifier: ForyouCollectionViewCell.identifier)
        setupViewModelListeners()
        
        vviewModel.completion = {
            DispatchQueue.main.async {
                self.vviewModel.get()
                self.sneakersCollectionView.reloadData()
            }
        }
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
    
    fileprivate func setupViewModelListeners() {
        vviewModel.notifySneakerCompletionHandler = { [weak self] in
            DispatchQueue.main.async {
                self?.sneakersCollectionView.reloadData()
            }
            
        }
       
        vviewModel.usernameHandler = { [weak self] in
            self?.userName.text = self?.vviewModel.greetingText
            self?.userName.font = UIFont(name: "Helvetica", size: 16.0)
            self?.userName.font = UIFont.boldSystemFont(ofSize: 16.0)
        }
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
        return .init(width: 180, height: 360)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return vviewModel.sneaker.count - 39
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ForyouCollectionViewCell.identifier, for: indexPath) as? ForyouCollectionViewCell
            cell?.delegate = self
            return cell ?? UICollectionViewCell()
        } else {
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SneakersCollectionViewCell.identifier, for: indexPath) as? SneakersCollectionViewCell else {
                return UICollectionViewCell()
            }
            cell.delegate = self
            cell.setUp(with: vviewModel.sneaker[indexPath.row])
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return .init(width: sneakersCollectionView.frame.size.width, height: 60)
        } else {
            return .init(width: 160, height: 250)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 15
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 20, bottom: 10, right: 20)
    }
    
}

extension HomepageViewController: SeemoreViewControllerDelegate {
    func instantiateSeemoreViewController() {
        let newStoryboard = UIStoryboard(name: "SeemoreSneakers", bundle: nil)
        let newController = newStoryboard
            .instantiateViewController(identifier: "SeemoreViewController") as SeemoreViewController
        navigationController?.pushViewController(newController, animated: true)
    }
}

extension HomepageViewController: SneakersCollectionViewCellDelegate {
    func didTapAddBtn(with item: SneakersModel) {
        let choiceItem = LikeModel()
        choiceItem.itemName = item.itemName
        choiceItem.designerLogo = item.designerLogo
        choiceItem.itemPrice = item.itemPrice
        choiceItem.sneakerImage = item.sneakerImage
        choiceItem.liked = item.liked
        RealmService.shared.create(choiceItem)
        self.sneakersCollectionView.reloadData()
    }
    
    func didTapRemoveBtn(with item: SneakersModel) {
        let realm = try! Realm()
        let data = realm.objects(LikeModel.self).map({ $0 })
        for i in data{
            if i.sneakerImage == item.sneakerImage {
                RealmService.shared.delete(i)
            }
        }
        self.sneakersCollectionView.reloadData()
    }
    
    
}
