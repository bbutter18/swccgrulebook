//
//  Card.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



struct Card: Decodable {
    let name: String
    let imageUrl: String
    let set: String
    let type: String
    let side: String
    let imageUrl2: String?
    
    private enum CodingKeys: String, CodingKey {
        case imageUrl = "image_url"
        case set = "set_name"
        case type = "type_code"
        case side = "side_code"
        case imageUrl2 = "image_url2"
        case name
        
    }
}

enum CardSide: CustomStringConvertible {
    case any
    case light
    case dark
    
    var description: String {
        switch self {
        case .any: return "any"
        case .light: return "light"
        case .dark: return "dark"
        }
    }
}


enum CardType: CustomStringConvertible {
    case any
    case character
    case effect
    case interrupt
    case starship
    case vehicle
    case device
    case weapon
    case admiralsOrder
    case location
    case objective
    case defensiveShield
    case jediTest
    case epicEvent
    //case podracer
    
    var description: String {
        switch self {
        case .any: return "any"
        case .character: return "character"
        case .effect: return "effect"
        case .interrupt: return "interrupt"
        case .starship: return "starship"
        case .vehicle: return "vehicle"
        case .device: return "device"
        case .weapon: return "weapon"
        case .admiralsOrder: return "admirals-order"
        case .location: return "location"
        case .objective: return "objective"
        case .defensiveShield: return "defensive-shield"
        case .jediTest: return "jedi-test"
        case .epicEvent: return "epic-event"
        }
    }
    
}
