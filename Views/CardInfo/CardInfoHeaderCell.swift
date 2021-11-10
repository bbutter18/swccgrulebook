//
//  CardInfoHeaderCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHeaderCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardInfoHeaderCell"
    
    let headerTitleLabel = UILabel(text: "What is Star Wars CCG?", font: .boldSystemFont(ofSize: 16))
    let headerSubTitleLabel = UILabel(text: "Keeping up with friends is faster than ever", font: .systemFont(ofSize: 24), numberOfLines: 2)
    let imageView = UIImageView(cornerRadius: 8)
    
    //let horizontalHeaderController = CardInfoHeaderHorizontalController() //dont need this?

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.backgroundColor = .red
        headerTitleLabel.textColor = .blue
        
        let stackView = VerticalStackView(arrangedSubviews: [headerTitleLabel, headerSubTitleLabel, imageView], spacing: 12)
        
        addSubview(stackView)
        stackView.fillSuperview(padding: .init(top: 16, left: 0, bottom: 0, right: 0))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}
