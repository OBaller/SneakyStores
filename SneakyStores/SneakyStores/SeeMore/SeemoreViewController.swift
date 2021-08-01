//
//  SeemoreViewController.swift
//  SneakyStores
//
//  Created by apple on 25/07/2021.
//

import UIKit

class SeemoreViewController: UIViewController  {
    @IBOutlet weak var textFieldBackgroundView: UIView!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var seeAllCollectionView: UICollectionView!
    
    let viewModel = SneakersViewModel()
    
    let rightButton: UIButton = {
        let btn = UIButton(type: .custom)
        btn.frame = CGRect(x: 0, y: 0, width: 10, height: 30)
        btn.clipsToBounds = true
        btn.setImage(UIImage(named: "filter"), for: .normal)
        btn.clipsToBounds = true
        btn.backgroundColor = .yellow
        return btn
    }()
    
    let btnView: UIImageView = {
       let view = UIImageView(image: UIImage(named: "filter"))
        view.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        view.backgroundColor = .orange
        return view
    }()
    
    let rightBarButtonIcon: UIView = {
        let view = UIView(frame: .init(x: 0, y: 0, width: 50, height: 40))
        let viewImage = UIImageView(image: UIImage(named: "filter"))
        viewImage.frame = CGRect(x: 0, y: 0, width: 50, height: 40)
        view.clipsToBounds = true
        view.addSubview(viewImage)
        return view
    }()
    
    let leftBarButtonIcon: UIView = {
        let view = UIView(frame: .init(x: 0, y: 0, width: 50, height: 40))
        let viewImage = UIImageView(image: UIImage(named: "filter"))
        viewImage.frame = CGRect(x: 0, y: 0, width: 50, height: 40)
        view.clipsToBounds = true
        view.addSubview(viewImage)
        return view
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.getAllSneakers()
        title = "For You"
        seeAllCollectionView.delegate = self
        seeAllCollectionView.dataSource = self
        seeAllCollectionView.register(SneakersCollectionViewCell.nib(), forCellWithReuseIdentifier: SneakersCollectionViewCell.identifier)
        setupViewModelListeners()
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }

    fileprivate func setupViewModelListeners() {
        viewModel.notifySneakerCompletionHandler = { [weak self] in
            DispatchQueue.main.async {
                self?.seeAllCollectionView.reloadData()
            }
            
        }
    }
    
    @IBAction func searchButtonPressed(_ sender: UIButton) {
    }
}

extension SeemoreViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.sneaker.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: SneakersCollectionViewCell.identifier, for: indexPath) as? SneakersCollectionViewCell else {
            return UICollectionViewCell()
        }
//     cell.delegate = self
        cell.setUp(with: viewModel.sneaker[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 0, left: 20, bottom: 20, right: 20)
    }
    
}
