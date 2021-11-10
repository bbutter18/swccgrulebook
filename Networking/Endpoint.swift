//
//  Endpoint.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation


enum CardSetsEndpoint: CustomStringConvertible {
    
    case premiere
    case premiere2player
    case aNewHope
    case jediPack
    case hoth
    case empireStrikesBack2player
    case rebelLeadersPack
    case dagobah
    case cloudCity
    case officialTournamentSealedDeck
    case jabbasPalace
    case enhancedPremiere
    case specialEdition
    case enhancedCloudCity
    case endor
    case enhancedJabbasPalace
    case jabbasPalaceSealedDeck
    case deathStar2
    case reflections2
    case thirdAnthology
    case tatooine
    case coruscant
    case theedPalace
    case reflections3
    
    var description: String {
        switch self {
        case .premiere: return "pr"
        case .premiere2player: return "2pp"
        case .aNewHope: return "anh"
        case .jediPack: return "jpack"
        case .hoth: return "hoth"
        case .empireStrikesBack2player: return "2pesb"
        case .rebelLeadersPack: return "rlp"
        case .dagobah: return "dah"
        case .cloudCity: return "cc"
        case .officialTournamentSealedDeck: return "otsd"
        case .jabbasPalace: return "jp"
        case .enhancedPremiere: return "epp"
        case .specialEdition: return "se"
        case .enhancedCloudCity: return "ecc"
        case .endor: return "edr"
        case .enhancedJabbasPalace: return "ejp"
        case .jabbasPalaceSealedDeck: return "jpsd"
        case .deathStar2: return "ds2"
        case .reflections2: return "ref2"
        case .thirdAnthology: return "ta"
        case .tatooine: return "tat"
        case .coruscant: return "cor"
        case .theedPalace: return "tp"
        case .reflections3: return "ref3"
        }
    }
    
}
