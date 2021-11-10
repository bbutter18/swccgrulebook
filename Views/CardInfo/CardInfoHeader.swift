//
//  CardInfoHeader.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHeader: UICollectionReusableView {
    
    static let reuseIdentifier = "CardInfoHeader"
    
    let cardInfoHeaderHorizontalController = CardInfoHeaderHorizontalController()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        addSubview(cardInfoHeaderHorizontalController.view)
        cardInfoHeaderHorizontalController.view.fillSuperview()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
