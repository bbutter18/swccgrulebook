//
//  PhasesData.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/29/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



struct IntroCellData {
    
    let phases = [
        IntroItem(phaseNumber: "Intro", title: "Begin Game", image: #imageLiteral(resourceName: "Vader Icon"), description: "Every game is a contest between two players.", backgroundColor: .darkGray, detailedDescription: .beginGame),
        IntroItem(phaseNumber: "Phase 1", title: "Activate", image: #imageLiteral(resourceName: "Death Star Icon"), description: "You may activate Force from your Reserve Deck to your Force Pile.", backgroundColor: .black, detailedDescription: .activate),
        IntroItem(phaseNumber: "Phase 2", title: "Control", image: #imageLiteral(resourceName: "Stormtrooper Icon"), description: "You may initiate a Force drain at each location you control.", backgroundColor: UIColor.rgb(r: 145, g: 152, b: 164), detailedDescription: .control),
        IntroItem(phaseNumber: "Phase 3", title: "Deploy", image: #imageLiteral(resourceName: "TIE Fighter Icon"), description: "You may deploy cards from your hand to the table.", backgroundColor: UIColor(red: 43/255, green: 43/255, blue: 43/255, alpha: 1.0), detailedDescription: .deploy),
        IntroItem(phaseNumber: "Phase 4", title: "Battle", image: #imageLiteral(resourceName: "Lightsabers Icon"), description: "You may initiate a battle at each location both players occupy.", backgroundColor: UIColor.rgb(r: 145, g: 152, b: 164), detailedDescription: .battle),
        IntroItem(phaseNumber: "Phase 5", title: "Move", image: #imageLiteral(resourceName: "Falcon Icon"), description: "You may move your cards from locaiton to location.", backgroundColor: .black, detailedDescription: .move),
        IntroItem(phaseNumber: "Phase 6", title: "Draw", image: #imageLiteral(resourceName: "Jedi Kenobi Icon"), description: "You may draw cards from your Force Pile into your hand.", backgroundColor: .darkGray, detailedDescription: .draw)
    ]
    
    
}
