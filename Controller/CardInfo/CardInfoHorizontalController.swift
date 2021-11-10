//
//  CardInfoHorizontalController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHoriztonalController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
    let cardInfoData = CardInfoCellData()
    
    var iconGroup: IconGroup?
    var didSelectHandler: ((IconModel) -> ())?
    
    let topBottomPadding: CGFloat = 12
    let lineSpacing: CGFloat = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        collectionView.register(CardInfoHorizontalCell.self, forCellWithReuseIdentifier: CardInfoHorizontalCell.reuseIdentifier)
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16) //mess with this, don't use the content inset below at the bottom

    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return iconGroup?.arrayOfIcons.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoHorizontalCell.reuseIdentifier, for: indexPath) as! CardInfoHorizontalCell
        let icon = iconGroup?.arrayOfIcons[indexPath.item]
        cell.nameLabel.text = icon?.iconName
        cell.subNameLabel.text = icon?.iconSubTitle
        cell.imageView.image = icon?.iconImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let icon = iconGroup?.arrayOfIcons[indexPath.item] {
            didSelectHandler?(icon)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let height = (view.frame.height - 2 * topBottomPadding - 2 * lineSpacing) / 3
        return .init(width: view.frame.width - 48, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return lineSpacing
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return .init(top: topBottomPadding, left: 0, bottom: topBottomPadding, right: 0) //****** this cause the problem!!!!! so don't do this -> OORRRR it was the height of the arrow label cell set left and right at 16
    }
    
    
    
}
