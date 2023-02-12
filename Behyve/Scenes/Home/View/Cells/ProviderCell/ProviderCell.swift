//
//  ProviderCell.swift
//  Behyve
//
//  Created by Mahmoud Elshakoushy on 12/02/2023.
//

import UIKit

class ProviderCell: UICollectionViewCell, NibLoadableView, ReusableView  {
    
    //MARK: Outlets
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var titleLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
