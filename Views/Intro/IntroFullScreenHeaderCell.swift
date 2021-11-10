//
//  IntroFullScreenHeaderCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/29/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class IntroFullScreenHeaderCell: UITableViewCell {
    
    let introCell = IntroCell()
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Close Intro View Button"), for: .normal)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        layer.cornerRadius = 0 //check this
        
        addSubview(introCell)
        introCell.fillSuperview()
        
        addSubview(closeButton)
        closeButton.anchor(top: topAnchor, leading: nil, bottom: nil, trailing: trailingAnchor, padding: .init(top: 44, left: 0, bottom: 0, right: 20), size: .init(width: 30, height: 30))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
}
