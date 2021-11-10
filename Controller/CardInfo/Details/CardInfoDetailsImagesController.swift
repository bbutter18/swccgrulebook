//
//  CardInfoDetailsImagesController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

//use HorizontalSnappingController instead of base collectionview controller
class CardInfoDetailsImagesController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
    //var cardInfo: IconModel?
    var cardInfo: IconModel? {
        didSet {
            collectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        collectionView.register(CardInfoDetailsHorizontalImageCell.self, forCellWithReuseIdentifier: CardInfoDetailsHorizontalImageCell.reuseIdentifier)
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cardInfo?.iconCardImages.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoDetailsHorizontalImageCell.reuseIdentifier, for: indexPath) as! CardInfoDetailsHorizontalImageCell
        
        if let cardImages = self.cardInfo?.iconCardImages {
            cell.imageView.image = cardImages[indexPath.item]
        }
        
        return cell 
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: 300, height: 420) //height 400?
    }
}
