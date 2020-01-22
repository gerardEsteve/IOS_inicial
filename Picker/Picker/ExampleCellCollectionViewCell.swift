//
//  ExampleCellCollectionViewCell.swift
//  Picker
//
//  Created by curs on 31/1/19.
//  Copyright © 2019 curs. All rights reserved.
//

import UIKit

class ExampleCellCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    
    override func awakeFromNib() {
        backgroundColor = UIColor.lightGray
        self.layer.cornerRadius = 10
        self.addShadow()
    }
    
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 1)
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 6.0
        clipsToBounds = false
        layer.masksToBounds = false
    }
}
