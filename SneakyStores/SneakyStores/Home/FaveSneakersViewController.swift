//
//  FaveSneakersViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//
import RealmSwift
import UIKit


class FaveSneakersViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
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
       cell.setUp(with: data[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.item == 0 {
            return .init(width: collectionView.frame.size.width, height: 60)
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
