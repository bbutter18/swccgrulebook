//
//  CardInfoDetailsImagesCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoDetailsImagesCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardInfoDetailsImagesCell"
    
    let imagesLabel: UILabel = {
        let label = UILabel()
        label.text = "Images"
        label.font = UIFont(name: "Arial-BoldMT", size: 27)
        label.textColor = .black
        return label
    }()
    let horizontalController = CardInfoDetailsImagesController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //backgroundColor = .red
        
        addSubview(horizontalController.view)
        addSubview(imagesLabel)
        
        imagesLabel.anchor(top: topAnchor, leading: leadingAnchor, bottom: nil, trailing: trailingAnchor, padding: .init(top: 0, left: 20, bottom: 0, right: 20)) //size?
        
        horizontalController.view.anchor(top: imagesLabel.bottomAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 10, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
