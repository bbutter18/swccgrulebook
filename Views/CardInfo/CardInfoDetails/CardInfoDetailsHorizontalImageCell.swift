//
//  CardInfoDetailsHorizontalImageCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoDetailsHorizontalImageCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardInfoDetailsHorizontalImageCell"
    
    let imageView = UIImageView(cornerRadius: 4) //8?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.backgroundColor = .white
        imageView.contentMode = .scaleAspectFill
        
        addSubview(imageView)
        imageView.fillSuperview()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
