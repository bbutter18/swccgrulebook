//
//  CardGroup.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

protocol IconGuide {
    var iconName: String { get }
}

enum IconType {
    
    case rebel
    case imperial
    case droid
    case alien
    case device
    case effect
    case interrupt
    case weapon
    case vehicle
    case starship
    case objective
    case admiralsOrder
    case defensiveShield
    case warrior
    case pilot
    case permanentWeapon
    case navComputer
    
}

//this will be the group for the section, so section of Characters will be nameOfIcons: Character Icons or Card Types
struct IconGroup {
    var nameOfIcons: String
    var arrayOfIcons: [IconModel]
}

struct IconModel: IconGuide {
    let iconName: String
    let iconSubTitle: String
    let iconImage: UIImage
    let iconDescription: String
    let iconCardImages: [UIImage]
    let iconType: IconType
}

//struct CardType: IconGuide {
//    let iconName: String
//    let iconSubTitle: String
//    let iconImage: UIImage
//    let iconType: IconType
//}
//
//struct Skills: IconGuide {
//    let iconName: String
//    let iconSubtitle: String
//    let iconImage: UIImage
//    let iconType: IconType
//}
//
//struct LocationFeatures: IconGuide {
//    let iconName: String
//    let iconSubtitle:
//
//}


