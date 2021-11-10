//
//  CardInfoDetailsRulesCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/4/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

class CardInfoDetailsRulesCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardInfoDetailsRulesCell"
    
    let cellDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        
        addSubview(cellDescriptionLabel)
        cellDescriptionLabel.fillSuperview(padding: .init(top: 10, left: 24, bottom: 0, right: 24))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
