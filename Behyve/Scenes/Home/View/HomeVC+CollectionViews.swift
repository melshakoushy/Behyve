//
//  HomeVC+CollectionViews.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 12/02/2023.
//

import UIKit
import RxSwift

// MARK: - HomeVC Collections Setup
extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func setupCollectionViews() {
        categoriesCollectionView.register(CategoriesCell.self)
        categoriesCollectionView.delegate = self
        categoriesCollectionView.dataSource = self
        topProvidersCollectionView.register(ProviderCell.self)
        topProvidersCollectionView.delegate = self
        topProvidersCollectionView.dataSource = self
        providersCollectionView.register(ProviderDetailsCell.self)
        providersCollectionView.delegate = self
        providersCollectionView.dataSource = self
        eventsTypesCollectioView.register(ProviderCell.self)
        eventsTypesCollectioView.delegate = self
        eventsTypesCollectioView.dataSource = self
        eventsCollectionView.register(EventCell.self)
        eventsCollectionView.delegate = self
        eventsCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0 {
            return 4
        } else if collectionView.tag == 1 {
            return 4
        } else if collectionView.tag == 2 {
            return 4
        } else if collectionView.tag == 3 {
            return 4
        } else if collectionView.tag == 4 {
            return 4
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView.tag == 0 {
            let cell: CategoriesCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
            return cell
        } else if collectionView.tag == 1 {
            let cell: ProviderCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
            return cell
        } else if collectionView.tag == 2 {
            let cell: ProviderDetailsCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
            return cell
        } else if collectionView.tag == 3 {
            let cell: ProviderCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
            return cell
        } else if collectionView.tag == 4 {
            let cell: EventCell = collectionView.dequeueReusableCell(forIndexPath: indexPath)
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView.tag == 0 {
            return CGSize(width: categoriesCollectionView.frame.size.width / 3, height: categoriesCollectionView.frame.size.height)
        } else if collectionView.tag == 1 {
            return CGSize(width: topProvidersCollectionView.frame.size.width / 3, height: topProvidersCollectionView.frame.size.height)
        } else if collectionView.tag == 2 {
            return CGSize(width: (providersCollectionView.frame.size.width / 2) + 20, height: providersCollectionView.frame.size.height)
        } else if collectionView.tag == 3 {
            return CGSize(width: eventsTypesCollectioView.frame.size.width / 3, height: eventsTypesCollectioView.frame.size.height)
        } else if collectionView.tag == 4 {
            return CGSize(width: eventsCollectionView.frame.size.width - 30, height: eventsCollectionView.frame.size.height)
        } else {
            return CGSize()
        }
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView.tag == 0 {

        } else if collectionView.tag == 1 {
            let cell = collectionView.cellForItem(at: indexPath) as! ProviderCell
            providerFilterCellSelected(cell: cell, index: indexPath.row)
        } else if collectionView.tag == 2 {
        } else if collectionView.tag == 3 {
            let cell = collectionView.cellForItem(at: indexPath) as! ProviderCell
            providerFilterCellSelected(cell: cell, index: indexPath.row)
        } else if collectionView.tag == 4 {
        }
    }

    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if collectionView.tag == 0 {
            
        } else if collectionView.tag == 1 {
            let cell = collectionView.cellForItem(at: indexPath) as! ProviderCell
            providerFilterCellDeselected(cell: cell)
        } else if collectionView.tag == 2 {

        } else if collectionView.tag == 3 {
            let cell = collectionView.cellForItem(at: indexPath) as! ProviderCell
            providerFilterCellDeselected(cell: cell)
        } else if collectionView.tag == 4 {

        }
    }

    func providerFilterCellSelected(cell: ProviderCell, index: Int) {
        cell.bgView.backgroundColor = ColorManager.AppStaticColors.lightOrange
        cell.titleLbl.textColor = .white
    }

    func providerFilterCellDeselected(cell: ProviderCell) {
        cell.bgView.backgroundColor = .white
        cell.titleLbl.textColor = .black
    }

}
