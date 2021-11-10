//
//  CardInfoHorizontalCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHorizontalCell: UICollectionViewCell {
    
    
    static let reuseIdentifier = "CardInfoHorizontalCell"
    
    let imageView = UIImageView(cornerRadius: 8) //helper method
    
    //let nameLabel = UILabel(text: "Card Name", font: .systemFont(ofSize: 20))
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Card Name"
        label.font = UIFont(name: "ArialRoundedMTBold", size: 24) //26 if you change permanent weapon
        return label
    }()
    
    //let subNameLabel = UILabel(text: "Card Sub Type Name", font: .systemFont(ofSize: 13))
    
    let subNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Card Sub Type Name"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.textColor = .darkGray
        return label
    }()
    
    let arrowImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "Arrow Icon SWCCG 40")
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.backgroundColor = .purple
        imageView.constrainWidth(constant: 64)
        imageView.constrainHeight(constant: 64)
        
        arrowImageView.constrainWidth(constant: 30)
        arrowImageView.constrainHeight(constant: 50)
        
        let stackView = UIStackView(arrangedSubviews: [imageView, VerticalStackView(arrangedSubviews: [nameLabel, subNameLabel], spacing: 4), arrowImageView])
        stackView.spacing = 16
        stackView.alignment = .center
        
        addSubview(stackView)
        stackView.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
