//
//  CardInfoCellData.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoCellData {
        
    let cardTypes = [
        IconModel(iconName: "Alien", iconSubTitle: "Bounty Hunter, Information Broker, Spy", iconImage: #imageLiteral(resourceName: "Alien Icon 68"), iconDescription: "A type of Light Side or Dark Side character, representing individuals not directly aligned to any side.", iconCardImages: [UIImage(named: "Alien 5")!, UIImage(named: "Alien 2")!, UIImage(named: "Alien 3")!, UIImage(named: "Alien 4")!], iconType: .alien),
        
        IconModel(iconName: "Rebel", iconSubTitle: "Jedi, Leader, Smuggler, Spy", iconImage: #imageLiteral(resourceName: "Rebel Icon"), iconDescription: "A type of Light Side character, representing individuals that directly support the Rebellion.", iconCardImages: [UIImage(named: "Rebel 1")!, UIImage(named: "Rebel 2")!, UIImage(named: "Rebel 3")!, UIImage(named: "Luke Skywalker, Jedi Knight")!], iconType: .rebel),
        
        IconModel(iconName: "Imperial", iconSubTitle: "Dark Jedi, Leader, ISB", iconImage: #imageLiteral(resourceName: "Imperial Icon"), iconDescription: "A type of Dark Side character, representing individuals that directly support the Empire.", iconCardImages: [UIImage(named: "Imperial 1")!, UIImage(named: "Lord Vader")!, UIImage(named: "Admiral Piett")!, UIImage(named: "Emperor Palpatine")!], iconType: .imperial),
        
        IconModel(iconName: "Droid", iconSubTitle: "Protocol, Astromech, Medical", iconImage: #imageLiteral(resourceName: "Droid Icon"), iconDescription: "A type of Light Side or Dark Side character, representing mechanical beings. Droids have no ability, thus they do not create presence. Droids without armor or maneuver have a defense value of zero.\n\nDroids may be targeted by cards that compare against ability if the result will be removing the droid from table (such as returning to hand, placing in Lost Pile, placing in Used Pile, etc.). In these instances, treat the droid's ability as an unmodifiable zero.", iconCardImages: [UIImage(named: "Droid 1")!, UIImage(named: "Droid 2")!, UIImage(named: "Droid 3")!, UIImage(named: "Droid 4")!], iconType: .droid),
        
        IconModel(iconName: "Device", iconSubTitle: "Character, Site, Starship", iconImage: #imageLiteral(resourceName: "Device Icon"), iconDescription: "Type of card that represents useful tools and other equipment.", iconCardImages: [UIImage(named: "Device 1")!, UIImage(named: "Device 2")!, UIImage(named: "Device 3")!, UIImage(named: "Device 4")!], iconType: .device),
        
        IconModel(iconName: "Effect", iconSubTitle: "Starting, Immediate, Utinni", iconImage: #imageLiteral(resourceName: "Effect Icon"), iconDescription: "Type of card that represents long-term alterations to other cards or aspects of the game. There are six different kinds, or subtypes, of Effects: Effects, Immediate Effects, Mobile Effects, Utinni Effects, Political Effects and Starting Effects.\n\nA card that targets ‘Effects’ (or an Effect) targets only the first subtype of Effect (it is not targeting the card type Effect), not the other three, unless it specifically mentions one or more of the others. Game text that targets or cancels an “Effect of any kind.” can target any subtype of Effect.", iconCardImages: [UIImage(named: "Effect 1")!, UIImage(named: "Effect 2")!, UIImage(named: "Effect 3")!, UIImage(named:"Enter The Bureaucrat")!], iconType: .effect),
        
        IconModel(iconName: "Interrupt", iconSubTitle: "Starting, Used, Lost", iconImage: #imageLiteral(resourceName: "Interrupt Icon"), iconDescription: "Type of card representing a sudden short term change (such as the surprise attack by the Ewok army or Luke blinding Vader with carbonite gas). Interrupts may be played during any player’s turn, and once it has its effect is then discarded. An Interrupt may play at any time between other actions, or as a response to an action that the Interrupt specifically cancels or modifies. The exact conditions required are listed in the interrupt's game text. If no condition is stated, then the interrupt is a legal card play whenever a 'top level' action is possible for that player (i.e. no other actions are resolving).\n\nTo play one, say, “Interrupt!” and bring out the card. Interrupt cards play, have their result and then go to the Used Pile or the Lost Pile; they are not considered to be “on table” while they are executing. Interrupts play, they do not deploy.", iconCardImages: [UIImage(named: "Interrupt 1")!, UIImage(named: "Interrupt 2")!, UIImage(named: "Interrupt 3")!, UIImage(named: "Force Lightning")!], iconType: .interrupt),
        
        IconModel(iconName: "Objective", iconSubTitle: "Double-sided Purple Cards", iconImage: #imageLiteral(resourceName: "Objective Icon 68"), iconDescription: "Type of card that represents long-term planning by providing specific starting cards, game play conditions, and short and long term rewards for completing tasks. A player may only include one Objective card in a deck, and if you choose to include one, you must deploy it instead of a starting location.", iconCardImages: [UIImage(named: "Objective 1")!, UIImage(named: "Objective 2")!, UIImage(named: "Objective 4")!, UIImage(named: "Objective 3")!], iconType: .objective),
        
        IconModel(iconName: "Starship", iconSubTitle: "Starfighter, Capital", iconImage: #imageLiteral(resourceName: "Starship Icon"), iconDescription: "Type of card representing the many machines used to travel and battle throughout the galaxy in space. Starships are divided into three distinct subtypes - capital starships, starfighters and squadrons. Starships also come in different types based on the presence (or absence) or certain icons.", iconCardImages: [UIImage(named: "Starship 1")!, UIImage(named: "Starship 2")!, UIImage(named: "Starship 3")!, UIImage(named: "Starship 4")!], iconType: .starship),
        
        IconModel(iconName: "Vehicle", iconSubTitle: "Enclosed, Open", iconImage: #imageLiteral(resourceName: "Vehicle Icon"), iconDescription: "Type of card that represents the machines that allow movement across the ground or through the clouds. Vehicles are divided into the following distinct subtypes - combat vehicles, creature vehicles, shuttle vehicles and transport vehicles.\n\nA vehicle must have a pilot (or driver) aboard to perform most of its game related functions; any vehicle without a pilot or driver is considered unpiloted, except Lift Tube and creature vehicles.", iconCardImages: [UIImage(named: "Vehicle 1")!, UIImage(named: "Vehicle 2")!, UIImage(named: "Vehicle 3")!, UIImage(named: "Vehicle 4")!], iconType: .vehicle),
        
        IconModel(iconName: "Weapon", iconSubTitle: "Character, Starship, Artillery", iconImage: #imageLiteral(resourceName: "Weapon Icon 2"), iconDescription: "Type of card that represents the hardware utilized by characters, starships, vehicles or even Death Stars during battle in order to inflict damage against opposing forces. You do not need a weapon to initiate a battle, but they can provide advantages.\n\nWeapons are divided into distinct subtypes that describe where they deploy and in some cases, how they operate. Subtypes include - artillery weapons, automated weapons, character weapons, Death Star weapon, Death Star II weapon, starship weapons and vehicle weapons.", iconCardImages: [UIImage(named: "Weapon 1")!, UIImage(named: "Weapon 2")!, UIImage(named: "Weapon 3")!, UIImage(named: "Luke's Lightsaber")!], iconType: .weapon),
        
        IconModel(iconName: "Admiral's Orders", iconSubTitle: "Admiral Effects", iconImage: #imageLiteral(resourceName: "Admirals Order Icon"), iconDescription: "Type of card which represents tactical and strategic planning.", iconCardImages: [UIImage(named: "AO 1")!, UIImage(named: "AO 2")!, UIImage(named: "AO 3")!, UIImage(named: "AO 4")!], iconType: .admiralsOrder),
        
        IconModel(iconName: "Defensive Shield", iconSubTitle: "Custom Effects", iconImage: #imageLiteral(resourceName: "Defensive Shield Icon"), iconDescription: "Type of card that represents strong counter-measures against some of an opponent's strategies.", iconCardImages: [UIImage(named: "DShield 1")!, UIImage(named: "DShield 2")!, UIImage(named: "DShield 3")!, UIImage(named: "DShield 4")!], iconType: .defensiveShield)
    ]
    
    let skillsTypes = [
        IconModel(iconName: "Warrior", iconSubTitle: "Aliens, Rebels, Imperials", iconImage: #imageLiteral(resourceName: "Warrior Icon"), iconDescription: "The warrior icon has no special rules, nor is it a requirement to carry or use a weapon; simply follow the instructions on the weapon card.", iconCardImages: [UIImage(named: "Warrior 1")!, UIImage(named: "Warrior 2")!, UIImage(named: "Warrior 5")!, UIImage(named: "Warrior 4")!], iconType: .warrior),
        
        IconModel(iconName: "Pilot", iconSubTitle: "Characters only", iconImage: #imageLiteral(resourceName: "Pilot Icon"), iconDescription: "Aspect of characters that allows them to control and move a starship, combat vehicle or shuttle vehicle (indicated by a pilot icon on the character card).", iconCardImages: [UIImage(named: "Pilot 1")!, UIImage(named: "Pilot 2")!, UIImage(named: "Pilot 3")!, UIImage(named: "Pilot 4")!], iconType: .pilot),
        
        IconModel(iconName: "Permanent Weapon", iconSubTitle: "Character Weapons", iconImage: #imageLiteral(resourceName: "Permanent Weapon Icon"), iconDescription: "A character weapon 'built-into' the character card.", iconCardImages: [UIImage(named: "Perm 1")!, UIImage(named: "Perm 2")!, UIImage(named: "Perm 3")!, UIImage(named: "Perm 4")!], iconType: .permanentWeapon)
    ]
    
    
    
}
