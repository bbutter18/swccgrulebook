//
//  CardInfoDetailsDescriptionLabelText.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/4/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoDetailsDescriptionLabelText {
    
    //MARK: - Alien
    
    static let alienDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Characters: Alien - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Card type that is a neutral character in the Star Wars Universe, almost like a 'civilian' during the conflict between the Rebels and Imperials. They don't choose between those 2 sides, but rather have their own agenda. Jawas, for example, exist and interact with Rebels and Imperials, but aren't marching in Stormtrooper gear nor piloting X-Wings.\n\nAliens are part of the game environment, and have attributes in conjunction with their characterstics. Boba Fett, for example, is an alien, but interacts with the rebels and imperials. His attributes are that of the bounty hunter characteristic, with cards designed specifically for that attribute that allow him to 'capture' and 'escort' characters. Alien characters are similar to Rebel or Imperial characters, with deploy costs, power and ability attributes, and gametext. They are an integral part of the game mechanic and deck strategies.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeployment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "During your deploy phase, you may deploy a character card from your hand to a location if there are Force icons on your side of that location, or if you already have presence at that location. A character can deploy to a site, or aboard a vehicle or starship (with sufficient capacity) at a site following these rules. A character may only deploy to a system (or cloud or asteroid sector) if it deploys aboard a starship or vehicle at that location. Some card texts or characteristics (e.g., a spy) allow you to deploy characters to a place where you do not have presence and do not have Force icons on your side of the location.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Rebel
    
    static let rebelDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Characters: Rebel - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Card type that consist of the main characters of Han, Leia, Luke, Chewie, Obi-wan and others. The majority of cards for the game were built around rebels, and the themes that they represented such as rescuing the princess, blowing up the Death Star, and the rebebl's hidden base. Attributes include rebel characters being leaders, scouts, smugglers, spies, and Jedi. Many of the popular mains have a lot of cards and game mechanics that focus solely on them, so if you have a favorite character you can build decks around those characters.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nDeployment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
       attributedText.append(NSAttributedString(string: "During your deploy phase, you may deploy a character card from your hand to a location if there are Force icons on your side of that location, or if you already have presence at that location. A character can deploy to a site, or aboard a vehicle or starship (with sufficient capacity) at a site following these rules. A character may only deploy to a system (or cloud or asteroid sector) if it deploys aboard a starship or vehicle at that location. Some card texts or characteristics (e.g., a spy) allow you to deploy characters to a place where you do not have presence and do not have Force icons on your side of the location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nJedi - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A subtype used to represent Light Side characters of ability 6 or greater. This collective term thus includes all cards of type 'Jedi Knight' as well as all 'Jedi Masters'. If your Jedi is crossed to the Dark Side (such as with Join Me!), it will then be a Dark Jedi.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nJedi Knight - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A subtype used to represent Light Side characters of ability 6. It should be noted that a Jedi Knight is not a 'Dark Jedi', and cannot be targeted by text that targets only Dark Jedi. If your Jedi Knight is crossed to the Dark Side (such as with Epic Duel, or Join Me!), they are now a Dark Jedi.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Imperial
    
    static let imperialDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Characters: Imperial - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Card type that represents the main characters of the dark side. Attributes include leaders, spies, ISB agents and Dark Jedi. The other half of the main characters of the Light Side, these card types have a lot of supporting cards and game mechanics surrounding them, which include blowing up planets with the Death Star, hunting down the remaining Jedi, and trying to convert Luke to the Dark Side. You would see a lot of star destroyers and space gameplay, as well as powerful characters and combat vehicles on the ground.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nDeployment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "During your deploy phase, you may deploy a character card from your hand to a location if there are Force icons on your side of that location, or if you already have presence at that location. A character can deploy to a site, or aboard a vehicle or starship (with sufficient capacity) at a site following these rules. A character may only deploy to a system (or cloud or asteroid sector) if it deploys aboard a starship or vehicle at that location. Some card texts or characteristics (e.g., a spy) allow you to deploy characters to a place where you do not have presence and do not have Force icons on your side of the location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDark Jedi - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A subtype used to represent Dark Side characters of ability 6 or greater. This collective term thus includes all cards of type 'Dark Jedi' as well as all 'Dark Jedi Masters'. It should be noted that a Dark Jedi is not a 'Jedi', and cannot be targeted by text that targets only Jedi. (such as a revolved Tatooine: City Outskirts). If your Dark Jedi is crossed to the Light Side (such as with Anakin Skywalker), it will then be a Jedi.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Droid
    
    static let droidDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Characters: Droid - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "These card types consist of a lot of supporting characters that interact with all types of characters - aliens, rebels, imperials and other droids. Some droids have the same attributes as the other character types, such as being bounty hunters, leaders, and spies. Cards that target those specific types would be allowed to apply to droids with the same attributes as well. Since they are supporting characters, they do have some game mechanics and specific supporting cards designed around them, and you could build a deck with mainly droid characters. Droids don't have ability, but that can be an advantage or disadvantage depending on how you design your deck.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nDeployment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "During your deploy phase, you may deploy a character card from your hand to a location if there are Force icons on your side of that location, or if you already have presence at that location. A character can deploy to a site, or aboard a vehicle or starship (with sufficient capacity) at a site following these rules. A character may only deploy to a system (or cloud or asteroid sector) if it deploys aboard a starship or vehicle at that location. Some card texts or characteristics (e.g., a spy) allow you to deploy characters to a place where you do not have presence and do not have Force icons on your side of the location.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Device
    
    static let deviceDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Deploy, Carrying and Transferring - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Each device specifies who or what it may be deployed on and what the deploy cost is (if any). Although many character devices specify that they deploy only on that specific character, other devices deploy on characters, starships, vehicles, locations, etc. You may not deploy devices on your opponent’s characters (unless specifically allowed to by the card itself).\n\nAlthough you are restricted in the number of devices you may use in a turn, you may still deploy as many on an appropriate card as you like. Some characters, such as Kabe, have game text that allows them to carry devices that they cannot use. While a card is carrying a device they cannot use, that device is inactive.\n\nDuring your deploy phase, you may transfer your device from one of your characters, vehicles or starships to another such card present by using Force equal to the deploy cost of the device and obeying all relevant deployment restrictions. (e.g. you cannot transfer Luke's Bionic Hand).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nUsing Devices - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Unless specified otherwise, each character, vehicle or starfighter may use only one device per turn. Squadron - class starships may use three different devices per turn. Capital starships may use any number of devices per turn. Using a device means to initiate an optional action, mandatory action, or just action using its game text. A device may be used any number of times per turn (subject to the One Rule).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTractor Beams - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Tractor beams may be used any number of times per turn, though only once per battle. It may only be used when a card allows it (e.g., Captain Lennox or its own game text).", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Effects
    
    static let effectDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Effects - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Effects (sometimes called 'normal Effects' for clarification) are identified by their Effect icon in the upper-left corner of their card, and the single keyword 'Effect' in their subtype box (just below the picture). These Effects are deployed during your deploy phase. Where they deploy is specified within their game text.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nStarting Effects - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Starting Effects are identified by their Effect icon in the upper-left corner of their card, and 'Starting Effect' in their subtype box. Starting Effects provide players a way to start their game with a “reserve” of cards, typically Defensive Shields. This provides valuable additional defense against an opponent’s nastier strategies while only sacrificing one “card slot” of your regular 60-card deck. Starting Effects deploy before any starting location or objectives are revealed. They never deploy at any other time, but if they are found in a deck, hand, or pile, they may be used normally like any other card or unit of Force. Cards placed under your Starting Effect must be of the same allegiance as the deck you are playing, and do not count against your “deck limit”. That is, they are considered permissible extra cards above the normal 60 cards of a standard game deck. The Starting Effect itself does count as one card of your game deck, and therefore is calculated against your deck limit.\n\nFor tournament play, when offering your shuffled deck for an opponent to count and cut, provide your opponent with two piles. One pile will be your Starting Effect (face-up) on top of the cards (face-down) that will go beneath it. The other pile is the rest of your game deck (face-down). Your opponent can then verify that you have the correct number of cards under your Starting Effect (your opponent will see your Starting Effect, but will see only the card backs under that Starting Effect), and that your deck contains exactly 59 cards (the Starting Effect is the 60th card). Once counted, the cards under your Starting Effect may only be removed from there or manipulated using texts that specifically allow it, such as the text on the Starting Effect itself.\n\nCards under your Starting Effect are supporting.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPolitical Effects - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Political Effects are identified by their Effect icon in the upper-left corner of their card, and 'Political Effect' in their subtype box. A Political Effect is deployed just like a normal Effect, and can be canceled by game text that cancels Political Effects.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nImmediate Effects - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Immediate Effects are identified by their Effect icon in the upper-left corner of their card, and 'Immediate Effect' in their subtype box. Unlike other types of Effects, Immediate Effects are not limited to the deploy phase. They will deploy as a response, or during a specific time (or any time, if no time is stated) as indicated by their game text.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nMobile Effects - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Mobile Effects are identified by their Effect icon in the upper-left corner of their card, and 'Mobile Effect' in their subtype box. Mobile Effects are deployed during your deploy phase like normal Effect cards, but have a built-in movement function. Where they deploy and how they move is specified within their game text.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nUtinni Effects - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Utinni Effects are identified by their Effect icon in the upper-left corner of their card, and 'Utinni Effect' in their subtype box. Utinni Effects are deployed during your deploy phase (unless indicated otherwise) like normal Effect cards, but deploy upon a location and usually require you to choose a specific on table card that the Utinni Effect is targeting. They have text that generally compels a targeted character, vehicle or starship to move to a specific location (usually the one where the Utinni Effect is deployed) in order to cancel a negative condition or initiate a positive one. Where they deploy and how they act is specified within their game text. If the target of an Utinni Effect is lost (or inactive), the Utinni Effect is also lost (or inactive).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nreaches - ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "A target 'reaches' an Utinni Effect that is deployed on a location when: \n\n • the target is present at the location; or \n\n • the target is in a pilot, passenger or astromech slot of a starship that is present at that location or \n\n • the target is in a pilot, driver or passenger slot of a vehicle that is present at that location.\n\nFor example: Our Most Desperate Hour is deployed on the Alderaan system targeting Leia on Tatooine. Leia moves from Docking Bay 94 to the Home One: Docking Bay (the starship Home One is present at the Alderaan system). Leia has not yet 'reached' the Utinni Effect, as she is not in a pilot or passenger slot. To trigger the Utinni Effect, she would need to use her regular move next turn to move from the Docking Bay to the 'bridge' of Home One.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Interrupts
    
    static let interruptDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Lost - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Lost Interrupts are identified by their interrupt icon in the upper-left corner of their card, and 'Lost Interrupt' in their subtype box. Lost interrupts (or interrupts with a Lost function) are played under standard interrupt rules. Once resolved they are placed in their owner's Lost Pile.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nUsed - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Used Interrupts are identified by their interrupt icon in the upper-left corner of their card, and 'Used Interrupt' in their subtype box. Used interrupts (or interrupts with a Used function) are played under standard interrupt rules. Once resolved they are placed in their owner's Used Pile, and in this way the chance often arises to play them more than once. It should be noted that if canceled, a Used interrupt is still placed in it's owner's Lost Pile, not the Used pile.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nOut of Play - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Out Of Play Interrupts are identified by their interrupt icon in the upper-left corner of their card, and 'Out Of Play Interrupt' in their subtype box. Out Of Play interrupts (or interrupts with an Out Of Play function) are played under normal interrupt rules. Once resolved, they are placed out of play. Once played, an Out Of Play Interrupt may not be played again for the remainder of the game (even if cancelled before it resolves), although the original card may still be played normally.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nStarting - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Starting Interrupts are identified by their interrupt icon in the upper-left corner of their card, and 'Starting Interrupt' in their subtype box. Starting interrupts (or interrupts with a Starting function) are played after both players’ starting locations (or objective and objective starting cards) have been deployed, and before Reserve Decks have been shuffled to draw opening hands, each player may play one starting Interrupt. \n\nBoth players reveal their starting interrupt simultaneously. If both players choose to use a starting interrupt, the player who goes first in the game must resolve his starting interrupt first, then the opponent must resolve his starting interrupt. The player going second thus has an opportunity to view the cards his opponent has chosen before searching for her own. Where the Starting interrupt is placed after it resolves is stated on the actual interrupt card.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Objectives
    
    static let objectiveDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Objectives - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "A player may only include one Objective card in a deck, and if you choose to include one, you must deploy it instead of a starting location. Objectives have game text on both sides of the card. An Objective card always deploys with its front side (as indicated by the destiny value of zero) face up (and thus 'on table'). Your opponent may, at any time, examine both sides of your Objective card. Italicized text on the front side of an Objective (beginning with the term 'Deploy') specifies actions and deployment taken at the start of the game. All such actions or deployment ignore deployment costs (but must obey deployment conditions). Whenever you are prevented from (or fail to) deploy or execute any mandatory actions stated in this section, then that Objective is placed out of play leaving you with no starting location and no Objective.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nThe deployment occurs before anything else on the objective is applied (for example, if an objective instructed you to deploy an alien, and the 'For remainder of game' or 'While this side up' text prohibited deploying Rebels, you could still deploy Chewbacca because that game text is not applied until the deployment is complete). The bold-faced terms 'For', 'While' and 'Flip' on Objective cards contain game actions that apply to that entire clause, until the next bold-faced term. Thus a 'For remainder of game' section condition will apply to all game text (including more than one sentence) until the 'While this side up' or 'Flip' keyword is found. When an Objective card flips is stated in that section of its game text. Unless stated as an optional action ('flips anytime after...'), Objective flip actions are automatic and mandatory actions. The face up side of an Objective is the only side that is currently on table (and thus currently 'active'). Many objective cards can also flip back to their destiny 0 side, while some cannot be flipped back. This is shown within the actual game text on each side of the Objective.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nIf a card is deployed on (or stacked on) an Objective, and the Objective flips, those cards simply transfer to the new side of the objective. For example, Your Destiny would now be on Take Your Father's Place and remain active. Likewise, Mosep on Fearless And Inventive would remain supporting if the Objective flipped back to My Kind Of Scum, and may deploy from it to the table.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nReferences to an objective's title solely affect's that side of the objective, not both sides (e.g., Strike Planning will cancel Dark's generation at Endor if Endor Operations flips to Imperial Outpost). However, if it refers to 'that card' or 'that objective' it is referring to the entire card (both sides). Thus, when Daughter of Skywalker is targeted by 'that card' for remainder of game, it means that both Mind What You Have Learned and Save You It Can will target her.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Starships
 
    static let starshipsDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Capital - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Capital starships represent the larger fleet style starships of the Star Wars galaxy, such as Imperial Star Destroyers or Mon Calamari Cruisers. Capital starships are identified by their starship icon in the upper-left corner of their card, and the keyword 'Capital' in their description box (just below the picture).", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nStarfighter - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Starfighters represent the smaller snub-class of starships, often manned by only a single pilot, or a small number of crew. Examples include the TIE Fighter and the Alliance's X-wing Fighter. Starfighters are identified by their starship icon in the upper-left corner of their card, and the keyword 'Starfighter' in their description box (just below the picture).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCapacity - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "The limit that a vehicle or starship can carry, as defined on the vehicle or starship card. When a vehicle or starfighter’s capacity includes pilots, drivers and/or passengers, this capacity conceptually represents the bridge or cockpit. When its capacity includes vehicles and starfighters, this capacity conceptually represents the cargo hold. Only characters which are conceptually “on the bridge” (or cockpit) take up capacity; those at a related starship or vehicle site do not occupy capacity on the 'outer' starship or vehicle, and may not pilot, drive or otherwise enhance that vehicle or starship. Characters which remain aboard something in the cargo hold (such as a character aboard an AT-AT which is aboard a Star Destroyer), occupy capacity only on the 'inner' starship or vehicle (in our example, the AT-AT) and are considered only to be passengers - that is they are not piloting or driving that 'inner' starship or vehicle.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPassengers - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Any characters aboard a starship or vehicle who are not acting as a pilot or driver of that starship or vehicle. Passengers aboard an enclosed vehicle or starship (except characters “below decks” at vehicle or starship sites or in a vehicle or starship in the cargo hold) participate in battles at the location of that vehicle or starship normally, except that they may not apply their ability toward drawing battle destiny. Astromech is a specific type of passenger.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPermanent Pilot - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A “built-in” pilot aboard a starship, indicated by a pilot icon on the starship card. Permanent pilots are not characters (‘character’ is a game term referring to a card type) and do not incorporate any features of characters (such as Rebel, spy, ability, game text etc.) other than those specified. For example, the unique permanent pilot •Red Leader In Red 1 starship card does not incorporate features of the Red Leader character card (and is not a leader), nor can Vader on Death Star Assault Squadron be targeted by Sense or I Have You Now. \n\nA permanent pilot sometimes may provide ability; if so this is stated in the game text of the card. If unstated, the pilot provides no ability. If a starship or vehicle has multiple non-unique permanent pilots, and a value is required for one specific permanent pilot, take the total ability of the permanent pilots divided by the number of permanent pilots aboard (rounded up if necessary). Thus, one of the permanent pilots of Executor is ability 1. If there are unique permanent pilots, they act as if that character is on the table.", attributes: [.foregroundColor: UIColor.gray]))
        
        //regular pilot is used for Pilot Icon description
        
        attributedText.append(NSAttributedString(string: "\n\nUnpiloted - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A starship or vehicle that is not piloted.\n\nConceptually, any starship or vehicle that isn't actively being piloted (or driven) has been 'powered down,' and is useful for little more than something to hide in or behind. An unpiloted starship or vehicle:\n\n • has no landspeed, hyperspeed, power or maneuver (if it has armor, armor = 2).\n • may not move \n • may not utilize weapons or devices \n • may not utilize any card that would logically require the vehicle or starship to be powered or operational (e.g., Dark Maneuvers, All Power To Weapons, Attack Pattern Delta, Trample). \n\nAlso, the starship or vehicle's game text is considered suspended, except game text related to: \n\n • deployment (either its own or to deploy cards on board it) \n • capacity (e.g., “May add 2 pilots or passengers, and 1 astromech”) \n • identity of permanent astromech \n • ship-docking capability \n • maintenance costs \n\nAn unpiloted starship or vehicle may still be forfeited, targeted by weapons, targeted to be stolen or destroyed, etc. Passengers still function normally aboard unpiloted starships and vehicles. \n\nAn unpiloted starship at the same system as a capital starship may embark on board that starship if possible, or may have cards move between it and a docked starship (these are specific exceptions to the 'may not move' rule). Conceptually starships have tractor beams to manipulate unpiloted starships. \n\nAn unpiloted vehicle at a site may be shuttled to a starship at the related system. Likewise an unpiloted vehicle in the 'cargo hold' of a starship may be shuttled to a related site, may be transferred between docked starships, and may use docking bay transit (these are specific exception to the 'may not move' rule). \n\nLift Tube and creature vehicles are never unpiloted.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Vehicle
    
    static let vehiclesDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Combat Vehicle - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Class of vehicle which is specialized for battle. Combat vehicles are identified by their vehicle icon in the upper- left corner of their card, and the keyword 'Combat' in their description box (just below the picture).", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nCreature Vehicle - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Class of vehicles which are actually domesticated animals used as transport of people and goods. Creature vehicles are identified by their vehicle icon in the upper-left corner of their card, and the keyword 'Creature' in their description box (just below the picture). Creature vehicles have ability, and thus do not require drivers or pilots. For this reason, a creature vehicle is never considered 'unpiloted'. If a creature vehicle is lost, any characters aboard it may 'jump off' — disembark — at the same site and survive.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCapacity - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "The limit that a vehicle or starship can carry, as defined on the vehicle or starship card. When a vehicle or starfighter’s capacity includes pilots, drivers and/or passengers, this capacity conceptually represents the bridge or cockpit. When its capacity includes vehicles and starfighters, this capacity conceptually represents the cargo hold. Only characters which are conceptually “on the bridge” (or cockpit) take up capacity; those at a related starship or vehicle site do not occupy capacity on the 'outer' starship or vehicle, and may not pilot, drive or otherwise enhance that vehicle or starship. Characters which remain aboard something in the cargo hold (such as a character aboard an AT-AT which is aboard a Star Destroyer), occupy capacity only on the 'inner' starship or vehicle (in our example, the AT-AT) and are considered only to be passengers - that is they are not piloting or driving that 'inner' starship or vehicle.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDrivers - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Unlike most vehicles, transport vehicles require drivers rather than pilots. Non-droid characters (and droids of the subtypes Vehicle Droid, Battle Droid, or Protocol Droid) may drive a transport vehicle, even if not a pilot. If more than one character is aboard a transport vehicle with driver capacity, you must designate which one is driving (you may do so at any time during your deploy or move phase). A pilot who is serving as a driver is not ‘piloting’ and thus does not add a power bonus to the vehicle. Any transport vehicle (except Lift Tube) without a driver is considered unpiloted.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPassengers - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Any characters aboard a starship or vehicle who are not acting as a pilot or driver of that starship or vehicle. Passengers aboard an enclosed vehicle or starship (except characters “below decks” at vehicle or starship sites or in a vehicle or starship in the cargo hold) participate in battles at the location of that vehicle or starship normally, except that they may not apply their ability toward drawing battle destiny. Astromech is a specific type of passenger.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nOpen Vehicles - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Any vehicle without the Enclosed characteristic is considered ‘open.’ Characters aboard an open vehicle are exposed to the surrounding environment; they are present at the site (and thus are vulnerable to cards which affect characters at the site). All characters aboard an open vehicle may use personal power, ability, forfeit and game text (when appropriate). They may also fire character weapons and may likewise be targeted by weapons.", attributes: [.foregroundColor: UIColor.gray]))
        
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Weapons
    
    static let weaponsDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Using Weapons - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Unless specified otherwise, each character, vehicle or starfighter may use (as in using its game text) only one weapon per turn (but see Characters - Warrior for a specific exception). Squadron-class starships may use three different weapons per turn. Capital starships may use any number of weapons per turn. A weapon providing a continuous modifier (such as the power bonus on Vibro-ax) is not considered using the weapon; all other uses of its game text is (so if you choose to use the optional Force drain modifier of Vader's Lightsaber or the power resetting text of Aurra Sing's Blaster Rifle, your character can only use that weapon that turn).\n\nA weapon may be used any number of times per turn, but weapons may be used only when permitted by a rule or action.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nFiring - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "The act of targeting with any weapon, including swinging a lightsaber, ax or Gaffi Stick. The exception to this is automated weapons; Laser Projector is the only automated weapon which fires, all others are performing whatever act is stated in their game text (such as when Timer Mine 'explodes'). A weapon may only fire at targets mentioned in its text (some weapons have received errata for this reason).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWeapons fire is an action, and thus follows the rules of actions. Choose your weapon to fire: \n\n(1) Meet Conditions - you must be permitted to fire by rule or card. \n\n(2) Choosing Target - you may only target an opponent's card that is present with the weapon. \n\n(3) Paying Costs - pay the cost of firing the weapon (if no cost listed, it is free). \n\nOnce all responses are completed, if the firing hasn't been canceled, resolve the weapon fire, usually by drawing destiny and then apply any appropriate effects.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWhen Can I Fire? - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "You may fire a weapon only when a card or rule permits you to fire. Simply follow the rules of firing listed under Firing (and anything the card or rule might add).For example, you are permitted by rule to use a weapon during battle. When you do this, you must obey the normal rules of firing; in addition, there are two special rules for firing during battle: you must also only target a card that is participating in the battle and each weapon may be used only once per battle.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nHit - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "The act or state of having been successfully shot by any weapon that specifies 'target hit' in its game text. Hit cards are marked by turning the card sideways until the damage segment of the battle, at which time the target must be forfeited. If the battle ends before the damage segment, then 'hit' cards are immediately lost. Any card 'hit' but not participating in a battle (e.g., a weapon is fired using an Interrupt such as Sniper, or the character is excluded) is immediately lost. It should be noted that any other weapon effect besides 'hit' (e.g., captured, forfeit = 0, lost) is applied immediately upon resolution of the weapon destiny draw.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCharacter Weapon - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A kind of weapon that deploys on a character.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeploying and Carrying - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Each weapon (and device) specifies who or what it may be deployed on and what the deploy cost is (if any). Although many character weapons specify that they deploy only on warriors, other character weapons deploy on bounty hunters, Jawas, Han etc. and thus do not require a warrior. You may not deploy weapons or devices on your opponent’s characters (unless specifically allowed to by the card itself).\n\nAlthough you are restricted in the number of weapons and devices you may use in a turn, you may still deploy as many on an appropriate card as you like. Some characters, such as Kabe and RA-7, have game text that allows them to carry weapons that they cannot use. While a card is carrying a weapon or device they cannot use, that weapon or device is inactive.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTransferring - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "During your deploy phase, you may transfer your weapon (or device) from one of your characters, vehicles or starships to another such card present by using Force equal to the deploy cost of the weapon (or device)and obeying all relevant deployment restrictions. (e.g. you cannot transfer Vader's Lightsaber to Obi-wan, or a Cloud City blaster if you are not on Cloud City).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDestiny - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Any destiny drawn when firing a weapon (different from battle destiny). Drawing weapon destiny is mandatory once you fire the weapon (meaning you may not fire the weapon if you do not have at least one card in your Reserve Deck). If the weapon specifies more than one destiny draw, you must draw the required number. \n\nA weapon destiny draw is considered to be 'at' the location of the weapon. Thus for any location text that says 'Your weapon destinies here are +1', it refers to any weapons at that site (even if the target is at another location).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nLightsabers - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Because a lightsaber is not present at a system or sector location, it cannot enhance Force drains at such locations.", attributes: [.foregroundColor: UIColor.gray]))
        
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Admiral's Orders
    
    static let admiralsOrderDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Admiral's Orders - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Admiral's Orders deploy on table for free, but only during your deploy phase and only if you occupy a battleground system. There can be only one Admiral’s Order on table at any time; when a new one is deployed, the previous one (no matter which player it belongs to) is placed in its owner’s Used Pile. Note that you may not deploy an Admiral's Order if a unique (•) one of the same name is already on table. Many functions listed in the game text of Admiral’s Order cards apply to both players, instead of just to you or your opponent; if a particular sentence does not specifically apply to one player, then it applies to both.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Defensive Shield
    
    static let defensiveShieldDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Defensive Shield - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "These cards, combined with the Starting Effects for each side, provide the player with a suite of defensive options to assist their deck. You may play one Defensive Shield card at any time that you are permitted to take an action, as long as no other action is currently resolving (and as limited by the Starting Effect game text). For example, a Defensive Shield could be played during your deploy phase, during the opponent’s turn, or even during the weapons segment of a battle (following the above rules). You could not play Do, Or Do Not in response to an opponent initiating a Sense card though, because playing a Defensive Shield is not a valid response to any other action.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        attributedText.append(NSAttributedString(string: "\n\nMany Defensive Shield cards replicate the name of a previously printed card. For example, Your Insight Serves You Well is an Effect from the Death Star II expansion, and is replicated as a Defensive Shield. Despite this similarity, these cards are in no way interchangeable. They are different card types, and often have an altered or reduced game function compared to the original card. The only rule that ties two such cards together is the “unique and restricted cards” rule, since many Defensive Shield cards often share the same card title as an existing Effect card.", attributes: [.foregroundColor: UIColor.gray])) //???
        
         attributedText.append(NSAttributedString(string: "\n\nDefensive Shields play rather than deploy, and therefore are not a valid target for actions that deploy cards, even if the card is mentioned by name. For this reason, you cannot use This Deal Is Getting Worse All The Time to deploy the Secret Plans shield, nor can you use Don't Tread On Me to deploy Ultimatum and/or Do, Or Do Not shields.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Warrior
    
    static let warriorDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Warrior - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "One important note, however, is that if a character has two printed warrior icons, that character is permitted to use two different weapons per turn; this supersedes all other weapon use rules. However, this only applies to using two weapons; you may not use the same weapon twice. Also, this rule applies only to printed warrior icons, not icons added in other ways. A character with two warrior icons is not considered to be two warriors.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Pilot
    
    static let pilotDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Pilot - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "When a pilot character is deployed or moved aboard a vehicle or starship, that character is considered to be acting as a pilot if sufficient pilot capacity is available. You may designate which characters are acting as pilots (that is, you may relocate them between pilot and passenger capacity) at any time during your deploy or your move phase (if the capacity offers a choice, you may also change it between pilot and passenger as well). Any pilots aboard a starship or vehicle in excess of its pilot capacity are passengers and thus may not enhance the starship or vehicle. Any modifiers to a pilot’s personal power do not increase the bonus that pilot grants to a starship or vehicle. While all characters aboard a starship or vehicle apply ability normally, on enclosed vehicles and starships only the pilot (or driver) applies their ability towards drawing battle destiny.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Permanent Weapon
    
    static let permanentWeaponDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        var attributedText = NSMutableAttributedString(string: "Permanent Weapons - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Permanent weapons may not be separated from the character (lost, stolen, transferred, retrieved etc.) except by cards that disarm. If a character is no longer disarmed, the weapon is restored. Game text that relocates weapons (e.g., to or from a pile) may not be used to relocate this character card, unless that action also relocates the character.\n\nIf the game text of a character with a permanent weapon is canceled or suspended, that character is still considered to be in possession of the weapon that is specified within the character’s game text; the uniqueness of that weapon still applies, but that character is incapable of utilizing the weapon's text. ‘Scanning’ or copying the game text of a character with a permanent weapon does not enable the scanning character to use that weapon, and the scanning character is not considered to possess that weapon.", attributes: [.foregroundColor: UIColor.gray])) //???
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
}
