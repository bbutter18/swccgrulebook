//
//  CardCell.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

class CardCell: UICollectionViewCell {
    
    static let reuseIdentifier = "CardCell"
    
    let cardImage: CachedImageView = {
        let imageView = CachedImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let cardName: UILabel = {
        let label = UILabel()
        
        return label
    }()
    
    func configure(with viewModel: CardViewModel) {
        self.cardName.text = viewModel.name
        self.cardImage.loadImage(urlString: viewModel.imageUrl)
    }
    
    func displayAlertError(with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alert.present(alert, animated: true, completion: nil)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.contentView.addSubview(cardImage)
        
        cardImage.anchor(top: self.topAnchor, leading: self.leadingAnchor, bottom: self.bottomAnchor, trailing: self.trailingAnchor)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
