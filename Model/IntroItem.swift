//
//  IntroItem.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/29/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


enum IntroLabels {
    case beginGame
    case activate
    case control
    case deploy
    case battle
    case move
    case draw
}


struct IntroItem {
    
    let phaseNumber: String
    let title: String
    let image: UIImage
    let description: String
    let backgroundColor: UIColor
    let detailedDescription: IntroLabels
}
