//
//  FaveSneakersViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//
import RealmSwift
import UIKit


class FaveSneakersViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, FaveCollectionViewCellDelegate {
    var viewModel = SneakersViewModel()
    private var data = [LikeModel]()
    let realm = try! Realm()
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        data = realm.objects(LikeModel.self).map({ $0 })
        print(data)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        data = realm.objects(LikeModel.self).map({ $0 })
        collectionView.reloadData()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell =
                collectionView.dequeueReusableCell(withReuseIdentifier: "FaveCollectionViewCell", for: indexPath) as? FaveCollectionViewCell
        else {
            return UICollectionViewCell()
        }
        cell.delegate = self
       cell.setUp(with: data[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 20, bottom: 10, right: 20)
    }
    
}

extension FaveSneakersViewController: SneakersCollectionViewCellDelegate {
    func didTapAddBtn(with item: SneakersModel) {
        let choiceItem = LikeModel()
        choiceItem.itemName = item.itemName
        choiceItem.designerLogo = item.designerLogo
        choiceItem.itemPrice = item.itemPrice
        choiceItem.sneakerImage = item.sneakerImage
        choiceItem.liked = item.liked
        RealmService.shared.create(choiceItem)
        self.collectionView.reloadData()
    }
    
    func didTapRemoveBtn(with item: SneakersModel) {
        let realm = try! Realm()
        let data = realm.objects(LikeModel.self).map({ $0 })
        for i in data{
            if i.sneakerImage == item.sneakerImage {
                RealmService.shared.delete(i)
            }
        }
        self.collectionView.reloadData()
    }
    
    
}
