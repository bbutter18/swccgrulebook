//
//  CardInfoBullshitCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoBullshitCell: UITableViewCell {
    
    let cardHeaderCell = CardInfoHeaderDetailsCell()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(cardHeaderCell)
        cardHeaderCell.fillSuperview()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    
    
}
