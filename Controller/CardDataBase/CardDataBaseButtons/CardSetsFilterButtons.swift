//
//  CardSetsFilterButtons.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardSetsFilterButtons {
    
    let anyButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Any Button "), for: .normal)
        return button
    }()
    
    let lightSideButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Light Button "), for: .normal)
        return button
    }()
    
    let darkSideButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Dark Button"), for: .normal)
        return button
    }()
    
    //MARK: - Card Types
    
    let anyButton2: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Any Button 2"), for: .normal)
        return button
    }()
    
    let characterButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Character Button"), for: .normal)
        return button
    }()
    
    let weaponButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Weapon Button"), for: .normal)
        return button
    }()
    
    let starshipButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Starship Button"), for: .normal)
        return button
    }()
    
    let deviceButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Device Button"), for: .normal)
        return button
    }()
    
    let vehicleButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Vehicle Button"), for: .normal)
        return button
    }()
    
    let effectButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Effect Button"), for: .normal)
        return button
    }()
    
    let interruptButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Interrupt Button"), for: .normal)
        return button
    }()
    
    let locationButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Location Button"), for: .normal)
        return button
    }()
    
    let objectiveButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Objective Button"), for: .normal)
        return button
    }()
    
    let defensiveShieldButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Defensive Shield Button"), for: .normal)
        return button
    }()
    
    let admiralsOrderButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Admiral Button"), for: .normal)
        return button
    }()
    
}
