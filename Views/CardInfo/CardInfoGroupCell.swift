//
//  CardInfoGroupCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

class CardInfoGroupCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardInfoGroupCell"
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Card Info Section"
        label.font = UIFont(name: "Noteworthy-Bold", size: 32)
        label.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1.0)
        return label
    }()
    
    let horizontalController = CardInfoHoriztonalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(titleLabel)
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 16, bottom: 0, right: 0))
        
        addSubview(horizontalController.view)
        horizontalController.view.anchor(top: titleLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
}
