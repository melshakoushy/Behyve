//
//  ServicesVC+CollectionView.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 13/02/2023.
//

import UIKit
import RxSwift

// MARK: - ServicesVC Collections Setup
extension ServicesVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func setupCollectionViews() {
        servicesCollectionView.register(ProviderDetailsCell.self)
        servicesCollectionView.delegate = self
        servicesCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell: ProviderDetailsCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
            return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: (servicesCollectionView.frame.size.width / 2) - 8, height: servicesCollectionView.frame.size.height)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {

    }
}
