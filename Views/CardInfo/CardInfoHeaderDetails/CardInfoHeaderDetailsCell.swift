//
//  CardInfoHeaderDetailsCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



class CardInfoHeaderDetailsCell: UICollectionViewCell {
    
    //static let reuseIdentifier = "CardInfoHeaderDetailsCell"
    
    var headerModel: HeaderModel! {
        didSet {
            titleLabel.text = headerModel.headerName
            subtitleLabel.text = headerModel.headerSubTitle
            imageView.image = headerModel.headerImage
            backgroundColor = headerModel.backgroundColor
        }
    }
    
    //this title label will just be a blank space to even out the vertical stack view images, otherwise you need to adjust content inset on the card info header details controller to the length of the navigation bar which is more than 44
    let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 50)
        //label.backgroundColor = .darkGray
        label.textColor = .clear
        return label
    }()
    
    let imageView = UIImageView(image: #imageLiteral(resourceName: "Close Intro View Button"))
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialRoundedMTBold", size: 16)
        label.numberOfLines = 0
        label.textColor = .white
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        layer.cornerRadius = 0
        clipsToBounds = true
        imageView.contentMode = .scaleAspectFill //.scaleAspectFit
        
        let imageContainerView = UIView()
        imageContainerView.addSubview(imageView)
        imageView.centerInSuperview(size: .init(width: 330, height: 200)) //adjust this
        
        let stackView = VerticalStackView(arrangedSubviews: [titleLabel, imageContainerView, subtitleLabel], spacing: 8)
        addSubview(stackView)
        
        stackView.anchor(top: topAnchor, leading: leadingAnchor, bottom: bottomAnchor, trailing: trailingAnchor, padding: .init(top: 24, left: 24, bottom: 24, right: 24))
        
//        addSubview(introCell)
//        introCell.fillSuperview()
//
//        addSubview(closeButton)
//        closeButton.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 44, left: 0, bottom: 0, right: 20), size: .init(width: 30, height: 30))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
