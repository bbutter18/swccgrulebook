//
//  CardDetailsCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoDetailsCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardInfoDetailsCell"
    
    var cardInfo: IconModel! {
        didSet {
            cardIconImageView.image = cardInfo.iconImage
            cardIconNameLabel.text = cardInfo.iconName
            cardIconSubtitleLabel.text = cardInfo.iconSubTitle
            cardInfoLabel.text = cardInfo.iconDescription
        }
    }
    
    
    let cardIconImageView = UIImageView(cornerRadius: 16)
    
    let cardIconNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Card Info Name"
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        label.numberOfLines = 0
        return label
    }()
    
    let cardIconSubtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "subtitle"
        label.font = UIFont.boldSystemFont(ofSize: 18)
        label.numberOfLines = 0
        label.textColor = .lightGray
        return label
    }()
    
    let cardInfoLabel: UILabel = {
        let label = UILabel()
        label.text = "Card Info"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = UIColor(red: 76/255, green: 76/255, blue: 76/255, alpha: 1.0)
        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //cardIconImageView.backgroundColor = .white
        cardIconImageView.constrainWidth(constant: 100) //this was 80
        cardIconImageView.constrainHeight(constant: 100) //this was 80
        
        let stackView = VerticalStackView(arrangedSubviews: [
            UIStackView(arrangedSubviews: [
                cardIconImageView,
                VerticalStackView(arrangedSubviews: [
                    cardIconNameLabel,
                    cardIconSubtitleLabel
                    ], spacing: 7),
                ], customSpacing: 20),
            cardInfoLabel
            ], spacing: 16)
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 20, left: 20, bottom: 20, right: 20))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
