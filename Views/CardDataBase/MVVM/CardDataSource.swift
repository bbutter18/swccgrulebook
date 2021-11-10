//
//  CardDataSource.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



class CardDataSource: NSObject, UICollectionViewDataSource {
    
    private var data: [Card]
    
    init(data: [Card]) {
        self.data = data
        super.init()
    }
    
    // MARK: - UICollectionViewDataSource
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardCell.reuseIdentifier, for: indexPath) as! CardCell
        
        let card = object(at: indexPath)
        let viewModel = CardViewModel(card: card)
        
        cell.configure(with: viewModel)
        
        return cell
    }
    
    // MARK: - Helpers
    
    func update(_ object: Card, at indexPath: IndexPath) {
        data[indexPath.row] = object
    }
    
    func updateData(_ data: [Card]) {
        self.data = data
    }
    
    func object(at indexPath: IndexPath) -> Card {
        return data[indexPath.row]
    }
    
}











