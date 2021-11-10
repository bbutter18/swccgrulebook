//
//  IntroCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/28/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


//**** rename this Phase Cell or Game Cell
class IntroCell: UICollectionViewCell {
    
    static let reuseIdentifier = "IntroCell"
    var topConstraint: NSLayoutConstraint!
    
    
    var introItem: IntroItem! {
        didSet {
            phaseLabel.text = introItem.phaseNumber
            titleLabel.text = introItem.title
            imageView.image = introItem.image
            descriptionLabel.text = introItem.description
            backgroundColor = introItem.backgroundColor
        }
    }
    
    let phaseLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialRoundedMTBold", size: 24)
        label.textColor = .white
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white 
        label.font = UIFont(name: "ArialRoundedMTBold", size: 48)
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "Death Star Icon"))
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialRoundedMTBold", size: 16)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white 
        layer.cornerRadius = 16 //adjust this
        clipsToBounds = true
        imageView.contentMode = .scaleAspectFill //.scaleAspectFit
        
        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 180, height: 180)) //adjust this
        
        let stackView = VerticalStackView(arrangedSubviews: [phaseLabel, titleLabel, imageContainerView, descriptionLabel], spacing: 8)
        addSubview(stackView)
        
        stackView.anchor(top: nil, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 0, left: 24, bottom: 24, right: 24))
        self.topConstraint = stackView.topAnchor.constraint(equalTo: topAnchor, constant: 24)
        self.topConstraint.isActive = true 
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
