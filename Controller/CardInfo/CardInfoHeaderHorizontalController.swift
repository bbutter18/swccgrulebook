//
//  CardInfoHeaderHorizontalController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHeaderHorizontalController: HorizontalSnappingController, UICollectionViewDelegateFlowLayout {
    
    var headerGroup: HeaderGroup?
    var didSelectHandler: ((HeaderModel) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        collectionView.register(CardInfoHeaderCell.self, forCellWithReuseIdentifier: CardInfoHeaderCell.reuseIdentifier)
        
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        collectionView.contentInset = .init(top: 0, left: 16, bottom: 0, right: 16)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return headerGroup?.arrayOfHeaders.count ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoHeaderCell.reuseIdentifier, for: indexPath) as! CardInfoHeaderCell
        let header = headerGroup?.arrayOfHeaders[indexPath.item]
        cell.headerTitleLabel.text = header?.headerName
        cell.headerSubTitleLabel.text = header?.headerSubTitle
        cell.imageView.image = header?.headerImage
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if let header = headerGroup?.arrayOfHeaders[indexPath.item] {
            didSelectHandler?(header)
        }
        
        if indexPath.item == 0 {
            print("what is swccg")
        } else if indexPath.item == 1 {
            print("additional rules")
        } else if indexPath.item == 2 {
            print("history of swccg")
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: view.frame.width - 48, height: view.frame.height)
    }
    
    
}
