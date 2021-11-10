//
//  CardInfoHeadersDetailsDescriptionCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHeaderDetailsDescriptionCell: UITableViewCell {
    
    //static let reuseIdentifier = "CardInfoHeaderDetailsDescriptionCell"
    
    let cellDescriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(cellDescriptionLabel)
        cellDescriptionLabel.fillSuperview(padding: .init(top: 10, left: 24, bottom: 0, right: 24))
        
        //let stackView = VerticalStackView(arrangedSubviews: [cellDescriptionLabel, cellDescriptionImage, cellDescriptionLabelTwo], spacing: 20)
        //addSubview(stackView)
        //stackView.fillSuperview(padding: .init(top: 10, left: 24, bottom: 0, right: 24))
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
