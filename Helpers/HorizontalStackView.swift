//
//  HorizontalStackView.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

class HorizontalStackView: UIStackView {
    
    init(arrangedSubViews: [UIView], spacing: CGFloat = 0) {
        super.init(frame: .zero)
        
        arrangedSubViews.forEach({ addArrangedSubview($0) })
        
        self.spacing = spacing
        self.axis = .horizontal
        self.backgroundColor = .lightGray
        self.distribution = .fillEqually
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
