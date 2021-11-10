//
//  CardViewModel.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



struct CardViewModel {
    let name: String
    let imageUrl: String
}

extension CardViewModel {
    init(card: Card) {
        self.name = card.name
        self.imageUrl = card.imageUrl
    }
}
