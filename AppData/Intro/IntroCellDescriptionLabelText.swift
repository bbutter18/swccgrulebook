//
//  IntroCellDescriptionLabelData.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/30/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import UIKit


class IntroCellDescriptionLabelText {

    //MARK: - Begin Game
    static let beginGameDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Beginning the Game - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "To begin the game, each player chooses one location card from their game deck and places it face down on the table. Both players reveal these starting locations at the same time. If both players choose starting locations with the same card title, set them aside temporarily and choose again. Once two different starting locations have been selected, place them both face up on the table; orient the cards so that the sides with the blue lightsaber icons face the Light Side player and the sides with the red lightsaber icons face the Dark Side player. (If any locations were set aside because of choosing duplicates, add them back into the respective game decks.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nThere are two basic kinds of locations: System and Site.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSystem: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)])) //bold and italic??
        
        attributedText.append(NSAttributedString(string: "Each system location in the game represents a planet somewhere in the Star Wars galaxy where starships may deploy, battle and move.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSite: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Each site location represents a different area on a planet (or within a mobile facility such as Cloud City) where characters and vehicles may deploy, battle and move.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nIf both players’ starting locations are related (part of the same planet), place them next to each other on the table. Otherwise, leave a little space between them. As the game progresses, each planet’s location cards will be grouped together and will remain separated from those of other planets.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSome sites are ‘generic,’ meaning that they represent environments found on a variety of different planets. These sites may be identified by a single diamond ◊ in their card title (e.g., ◊Swamp). Generic sites may not be used as starting locations.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAfter starting locations are placed on the table, shuffle your remaining cards and place them face down in front of you. These cards now form your Reserve Deck, which is one of the three components of your Life Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYour Life Force - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)]))
        
        attributedText.append(NSAttributedString(string: "Your Life Force is like a flow of energy; how well you manage it is a key strategic factor. If your Life Force is totally depleted, you lose the game!", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nReserve Deck: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Throughout the game, cards will flow from your Reserve Deck to your Force Pile to your Used Pile and back again to the bottom of your Reserve Deck.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nForce Pile: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Your Force Pile represents the amount of Force that is available for you to use to perform various actions. Cards flow from your Force Pile and then to your hand or your Used Pile. You may accumulate Force in your Force Pile over multiple turns.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nUsed Pile: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Bringing cards into play and performing actions often requires you to “use the Force.” To use Force, move cards from your Force Pile, one at a time and face down, to your Used Pile to represent the required expenditure. At the end of every turn, both players recirculate their Used Piles by placing them back under their Reserve Decks; thus, unlike the Force Pile, the Used Pile does not accumulate cards from turn to turn.\n\n", attributes: [.foregroundColor: UIColor.gray])) //this is where the graphic is of the layout of used pile, reserve deck, force pile
        
        let cardPlacementAttachment = NSTextAttachment()
        cardPlacementAttachment.image = UIImage(named: "Card Placement SWCCG")
        let cardPlacementString = NSAttributedString(attachment: cardPlacementAttachment)
        
        attributedText.append(cardPlacementString)
        
        attributedText.append(NSAttributedString(string: "\n\nCards on table, in your Lost Pile or in your hand are not part of your Life Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYour Lost Pile - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)]))
        
        attributedText.append(NSAttributedString(string: "This is a pile where lost cards are placed face up. Frequently, you are required to forfeit (lose) cards from table at the location of a battle; at other times you will be instructed to “lose Force.” Whenever you are required to lose Force, you must discard cards face up to your Lost Pile, one at a time. You may choose cards to be lost from your hand or from the top of your Reserve Deck, Force Pile or Used Pile. Cards in your Lost Pile are generally not available for the rest of the game, but you can use certain cards to retrieve some of them.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYour Hand - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)]))
        
        attributedText.append(NSAttributedString(string: "Each player draws 8 cards from the top of their Reserve Deck to make a starting hand. During the game, you will be able to draw additional cards into your hand from your Force Pile. There is no limit to the number of cards you may hold in your hand throughout the game.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPlaying the Game - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)]))
        
        attributedText.append(NSAttributedString(string: "The Dark Side player takes the first turn of the game. Each turn consists of six phases: Activate, Control, Deploy, Battle, Move and Draw. (Doing things in each of these phases is optional.) The Dark Side player completes all six of these phases and ends that turn. The Light Side player then takes a turn, proceeding through the same six phases. Players alternate taking turns this way until one player wins the game. Keep in mind that rules are made to be broken! Accordingly, cards frequently override rules, and specific rules always override more general rules.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label 
    }()
    
    //MARK: - Activate Phase
    
    static let activatePhaseDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Activate Phase - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Most locations ‘generate’ Force for the Light Side or Dark Side player (or both), as indicated by the Force icons on the location card. \n\nCount your Force icons on all locations on table (Blue lightsabers for the Light Side; red lightsabers for the Dark Side). Add 1 to represent your personal Force (the Force you generate yourself). \n\nThe total represents the amount of Force you may activate this turn (move cards one at a time and face down from the top of your Reserve Deck to the top of your Force Pile). Do not look at the cards or put them into your hand.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYou do not have to activate all of the Force you are entitled to, although most of the time you will want to.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Control Phase
    
    static let controlPhaseDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Control Phase - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "You can cause your opponent to lose Force if your Characters and Starships control one or more Locations during your control phase. All of your characters (except droids) have a certain level of ability to manipulate the Force, as indicated on each card. If you have total ability of 1 or more (from characters or other cards) at a location and your opponent does not, then you control that location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nLook at all of the locations on table to see how many of them you control. At each of those locations, you may choose to initiate a Force drain for an amount equal to the opponent’s Force icons at that location. Announce your Force drains one at a time; complete each one before initiating the next.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEach time you Force drain, your opponent must lose one card for each Force that you drained. Your opponent may choose whether to lose those cards from hand and/or Life Force, and must place the lost cards face up on the Lost Pile.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSome cards provide a bonus to be added to a Force drain (for example, “Force drain +1 here”). Add this bonus to the total Force lost by your opponent.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nForce icons are a double-edged sword. The more Force icons on your side of a location, the more Life Force you can activate at the start of each of your turns (see - Activate Phase). But if your opponent gains control of that location, you lose more Force there whenever your opponent initiates a Force drain. Control of a location may occur at any time, not just during the control phase.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Deploy Phase
    
    static let deployPhaseDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Deploy Phase - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Your characters, vehicles, starships etc. ‘deploy’ (enter play) during your deploy phase. To deploy a card, take it from your hand and place it face up at an appropriate place on table. You may deploy as many cards as you like, as long as you have enough Force in your Force Pile to cover their deploy costs (described below).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeploying Locations - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)]))
        
        attributedText.append(NSAttributedString(string: "Locations have no deploy cost. You may place any number of locations on table from your hand during your deploy phase.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSites are deployed in a manner which emulates natural planet topographies while allowing the players to actually create the layout of the planet as they play. In general, the sites for a planet are placed in a pattern where interior and exterior sites are separated from each other by a docking bay. After several turns of deployment, a typical planet layout might appear as follows: \n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        let locationMapAttachment = NSTextAttachment()
        locationMapAttachment.image = UIImage(named: "Location Map SW 3")
        //locationMapAttachment.bounds = CGRect(x: , y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
        let locationMapString = NSAttributedString(attachment: locationMapAttachment)
        
        attributedText.append(locationMapString)
        
        attributedText.append(NSAttributedString(string: "\n\nA system location is placed on one end the row of related site locations if such sites are already on table (otherwise, the system card is placed alone). The system location is related to all sites in the same system (for example, the Tatooine system is related to all Tatooine sites).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAs long as you maintain this pattern, when a new site is deployed to an existing system, it may be inserted between (or placed at the end of) the related sites. For example, in the diagram above, there are four places where you could deploy a new exterior site (inserted anywhere between the docking bay and the system location). Once deployed, locations may not be rearranged.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nThere are Dark Side and Light Side versions of many locations. (The game text and Force icons may vary.) You may convert your opponent’s version of a location on table by deploying your own version on top of it. A location may change back and forth (Light to Dark, Dark to Light) more than once during a game if you have more than one copy of that location card in your deck.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWhen two sites that belong to the same planet are physically next to each other on table, they are defined as adjacent to each other. During movement, characters and vehicles may move from one site to an adjacent site like a sequence of connected spaces on a game board. (Although system cards are placed physically next to sites, system locations are not considered adjacent to any other location cards for game purposes.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nGeneric sites — Sites with a single diamond ◊ symbol in their card title represent environments found on a variety of different planets. They may be deployed as part of any planet (except those excluded by their game text) that is already represented on table by a system card or a non-generic site. Each generic site becomes part of, and related to, the system where it is deployed.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSome generic sites have the word ‘spaceport’ in their title (e.g., ◊Spaceport Docking Bay). Whenever you deploy a generic spaceport site to a planet, you must place it adjacent to another of that planet’s generic spaceport sites (if any).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeploying Characters, Vehicles and Starships - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "Characters, vehicles and starships list their deploy cost in a small white box on the card (see card below). This is the amount of Force you must use to deploy the card.", attributes: [.foregroundColor: UIColor.gray])) //INSERT CARD IMAGE HERE OR NOT??? adjust text in this attribute if not
        
        attributedText.append(NSAttributedString(string: "\n\nYou can deploy characters, vehicles and starships where you have Force icons on your side of a location, or where you already have presence — total ability of 1 or more at a location. (A character whose lore indicates they are a spy may deploy regardless of presence and Force icons.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCharacters: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "may deploy to sites, or aboard vehicles and starships.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nVehicles: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "may deploy to exterior sites, or aboard starships.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCapital Starship: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "may deploy to a System Location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nStarfighter: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "may deploy to a docking bay. It may also deploy to a System Location if it has a permanent pilot or if it is deployed simultaneously with a pilot (which counts as a single action).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYou may also deploy Characters, Vehicles and Starfighters directly aboard your Vehicles or Starships at any Location where you have presence or Force icons. The Vehicle or Starship must also have sufficient capacity which is listed in its gametext of how many pilots/passengers it can hold.\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        let deployCostImageAttachment = NSTextAttachment()
        deployCostImageAttachment.image = UIImage(named: "Deploy Cost Rule")
        let deployCostImageString = NSAttributedString(attachment: deployCostImageAttachment)
        
        attributedText.append(deployCostImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nDeploying Weapons and Devices - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "You may deploy weapons and devices on your characters, vehicles and starships (regardless of presence or Force icons). Weapons and devices deploy for free unless they list a deploy cost in their game text. You may not deploy weapons or devices on your opponent’s characters, vehicles and starships (unless specifically allowed to do so by the card itself).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYou may deploy as many weapons and devices as you like on your character, vehicle or starship. However, each character, vehicle or starfighter may fire only one weapon and may use only one device per turn. (Capital starships may use any number of weapons and devices per turn.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeploying Effects - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "Effects (as well as Epic events and Jedi tests) deploy according to their game text. You do not need presence or Force icons. An effect may have a deploy cost in its game text (for example, “Use 1 Force to deploy…”). If it does not, the effect deploys for free. You deploy most effects during your deploy phase (although one kind of effect, the immediate effect, specifies that it deploys at other times).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEffects modify other cards and game conditions while they are on table. They remain on table for the rest of the game, unless canceled. If an effect is canceled, any cards or conditions the effect was modifying revert to their previous status.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeploying cards with dots (•) - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "If a card’s title starts with one or more dots, that card is called unique (•) or restricted (••, ••• etc.). The dots indicate the maximum number of cards with that title that may be on table at one time. (There is no limit to the number of copies of each card that may be in your game deck.) If a unique (•) card leaves the table, another copy of that card may be deployed later.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCards with a diamond (◊) symbol work in a similar manner, although the limit applies per system. Thus, a generic site such as ◊Forest may occur on a number of different planets but is limited to one copy per planet.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Battle Phase
    
    static let battlePhaseDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Battle Phase - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "A battle is a conflict you initiate during your battle phase in an attempt to deplete your opponent’s Life Force. Battle can occur at a location only if both players occupy that location with total ability of 1 or more. Weapons are not required to initiate a battle; weapons simply allow you to target specific characters, vehicles, starships etc. You may battle more than once during this phase (but not more than once per turn at the same location). Each of your characters, vehicles and starships may battle only once per turn. Other cards such as devices, artillery weapons and effects may be used in more than one battle per turn.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYou must use 1 Force to initiate each battle. Just after its initiation, your opponent may be able to ‘react’ by moving or deploying cards to the battle location, if your opponent has a card that allows this (additional details on ‘reacts’ are provided in the Glossary).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAfter any ‘reacts’ are completed, the battle has three segments that must occur in sequence: weapons segment, power segment and damage segment. (Conceptually, the entire battle is happening simultaneously, although for game purposes the individual steps are carried out sequentially.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWeapons Segment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "Any weapons involved in the battle may be fired one at a time, beginning with the player who initiated the battle and then alternating between the players. Each weapon describes how it works, including the kinds of cards it may target, the Force required to fire it, the destiny draw (see sidebar) required for success and, if successful, the consequences for the target. Generally, a weapon must be present with its target to be fired (for example, character weapons may not fire into or out of a starship or a vehicle which is labeled ‘enclosed’).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nMost weapons specify that they ‘hit’ their target when successful. Any ‘hit’ cards are turned sideways, but they still participate in the battle. For example, a card that is ‘hit’ can still fire its own weapon, if it has one. (Later on during the damage segment, all ‘hit’ cards will have to be forfeited to their owners’ Lost Piles, regardless of who wins the battle.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDuring the weapons segment, other things may happen in place of firing a weapon (e.g., playing an Interrupt card; see sidebar). Once both players finish firing weapons and playing cards, the weapons segment ends.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDrawing Destiny: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Most cards have a number in the top right corner. This is that card’s “destiny number” and represents the element of fate or chance in the game. Whenever you are required to “draw destiny,” take the top card from your Reserve Deck, reveal its destiny number to both players, and then place it face down on top of your Used Pile. If a card has no destiny number (such as a location), its destiny value is zero.\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        let destinyNumberImageAttachment = NSTextAttachment()
        destinyNumberImageAttachment.image = UIImage(named: "Destiny Number Rule")
        let destinyNumberImageString = NSAttributedString(attachment: destinyNumberImageAttachment)
        
        attributedText.append(destinyNumberImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nPower Segment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "To determine who wins the battle, add up the total power you have participating in the battle; your opponent does likewise.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\n  • At a system (or sector), add the power of each of your piloted starship cards", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\n  • At a site, add the power of each of your vehicle cards, and of each of your character cards (except those aboard starships and ‘enclosed’ vehicles).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDon’t forget that your ‘hit’ cards still get to add to total power.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nOften you can increase your total power in a battle by drawing battle destiny. Each player who has a combined ability of 4 or more participating in the battle may make one destiny draw. (Having 8 ability present does not entitle you to draw two battle destiny.) To meet the 4 ability requirement, you may add up the ability numbers of any of your cards present at the battle Location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEach player increases his total power by the amount of his total battle destiny (if they drew any), then places his battle destiny card(s) on his Used Pile. (Battle destiny draws also create attrition in the damage segment, so make a mental note of the battle destiny totals.) The palyer with the higher overall total power (including battle destiny) wins the battle. If there is a tie, then the battle has no winner and no loser.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDamage Segment - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 21)])) //21?
        
        attributedText.append(NSAttributedString(string: "In this segment, players typically lose cards because of three factors: Weapon ‘hits,’ attrition and battle damage.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWeapon 'hits': ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Cards 'hit' during the weapons segment must be forfeited (lost) during the damage segment. Forfeiting a card causes everything on that card to be lost as well. Exception: Characters aboard a Creature Vehicle may 'jump off' (disembark).\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        let forfeitValueImageAttachment = NSTextAttachment()
        forfeitValueImageAttachment.image = UIImage(named: "Forfeit Value Rule")
        let forfeitValueImageString = NSAttributedString(attachment: forfeitValueImageAttachment)
        
        attributedText.append(forfeitValueImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nAttrition: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Attrition represents inevitable losses in battle that occur regardless of who wins the battle. (For example, in 'The Empire Strikes Back,' the Dark Side clearly won the Battle of Hoth, yet they still lost some Imperial Walkers due to attrition.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAttrition agains you equals the total battle destiny drawn by your opponent. This attrition against you requires a mandatory forfeiture of your cards from the battle Location. For example, if your opponent's total battle destiny was 3, the attrition against you will be 3 and you will be required to forfeit (if possible) one or more cards whose forfeit values combined total at least 3.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYour 'hit' cards may apply their forfeit values toward satisfying attrition. If forfeiting all your 'hit' cards does not satisfy all of the attrition against you, then you must forfeit additional cards until your attrition has been satisified. (If you have no cards left to forfeit, any remaining attrition against you is ignored.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSometimes you have to forfeit cards with a total forfeit value in excess of your attrition; for example, if your attrition is 5 and your cards that participated in the battle each have a forfeit value of 3, to satisfy your attrition you will have to forfeit two of those cards for a total of 6 forfeit.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nBattle Damage: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Unlike weapon ‘hits,’ battle damage applies only to the player who lost the battle. The loser’s battle damage is equal to the difference between the winner’s total power and the loser’s total power in the battle. For example, if your opponent’s total was 11 and yours was 7, you suffer battle damage of 4. You can satisfy your battle damage in either or both of two ways: by forfeiting cards that participated in the battle, and by losing Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nUnlike weapon ‘hits,’ battle damage may also be satisfied by losing Force from your hand and/or Life Force. Each card lost satisfies 1 unit of battle damage. You may select which cards to lose from your hand, but if you choose to lose cards from your Life Force they must come from the top of your Force Pile, Used Pile and/or Reserve Deck. To satisfy your battle damage, you may use any combination of forfeiture and losing Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nSometimes you will forfeit cards with a total forfeit value in excess of your battle damage. For example, if your battle damage is 4 but your only card that participated in the battle has a forfeit value of 6, to satisfy your battle damage you will have to either forfeit that card or lose 4 Force from hand or Life Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYou may forfeit your cards in any sequence, but the order you choose sometimes has strategic importance. After both players have met all requirements of the damage phase, such as weapon ‘hits’ and battle damage, the battle ends.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Move Phase
    
    static let movePhaseDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Move Phase - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "In this phase you may move any or all of your characters, vehicles and starships from location to location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCharacters and Vehicles - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Your characters and vehicles move in five basic ways: ", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nLandspeed: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Each vehicle or character may use 1 Force to move from one site to another related site. The card’s landspeed indicates the maximum distance the card may travel, measured in sites (1 site = 1 unit of landspeed). (Characters have landspeed of 1. Vehicles have landspeed as indicated on each card, but must have a driver or pilot aboard to move.) Vehicles may move only to exterior sites, but they can carry any number of characters (capacity permitting) for that use of 1 Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nShuttling: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "A character or vehicle may be shuttled (by the symbolic use of dedicated shuttles, which are assumed to be aboard every capital starship) from an exterior site to a capital starship with ship-docking capability at the related system (or vice versa) for 1 Force. Shuttling is not allowed to or from a starfighter.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTransferring: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Any number of characters and vehicles may be transferred (by the symbolic docking of two starships or use of dedicated shuttles) from one starship to another at the same system (or sector) for 1 Force if at least one of those starships (even if a starfighter) is piloted and has ship-docking capability.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDocking Bay Transit: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "You may relocate any or all of your characters and vehicles as a group from one docking bay to another docking bay (by the symbolic use of independent starships for hire) for an expenditure of Force as listed on the docking bay card.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEmbarking and Disembarking: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Your characters and vehicles may ‘embark’ on and ‘disembark’ from your vehicles and starfighters for free when at the same site. Vehicles must have a driver or pilot to use landspeed, embarking or disembarking. Vehicles do not need drivers or pilots to be shuttled or transferred, or to use docking bay transit.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nStarships - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Your capital starships and starfighters move in three basic ways: ", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nHyperspeed: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Each piloted starship may use 1 Force to move from one system to another system. The starship’s hyperspeed indicates the maximum distance the starship may travel, measured in parsecs (1 parsec = 1 unit of hyperspeed). The parsec distance between two systems is determined by subtracting the lower parsec number from the higher. (It is not necessary for the parsec numbers “in between” to be on table; for example, a starship with hyperspeed of 3 may move from a planet at parsec 5 to a planet at parsec 8, even if no systems with parsec numbers 6 and 7 happen to be on table.)\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        let parsecNumberImageAttachment = NSTextAttachment()
        parsecNumberImageAttachment.image = UIImage(named: "Parsec Number Rule")
        let parsecNumberImageString = NSAttributedString(attachment: parsecNumberImageAttachment)
        
        attributedText.append(parsecNumberImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nTo use its hyperspeed, a starship also needs a nav computer. This may be provided by a permanent nav computer icon on the starship itself, or by a passenger (typically an astromech droid) which has a nav computer icon.", attributes: [.foregroundColor: UIColor.gray]))
        
        //insert Nav computer image
        
        attributedText.append(NSAttributedString(string: "\n\nLanding and Taking Off: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "A piloted starfighter at a system location may land at any related exterior site. Similarly, a piloted starfighter at an exterior site may take off to the related system. (TIEs require docking bay facilities and thus may not land or take off at exterior sites other than docking bays.) Landing or taking off requires 1 Force, but is free at a docking bay. Landing and taking off do not require a nav computer.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nA landed starfighter has no landspeed, power or maneuver. It may not utilize game text (except game text relating to occupant capacity or permanent pilots), normal starship weapons or any cards which would logically require the starfighter to be moving.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEmbarking and Disembarking: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Your starfighters may embark on and disembark from your capital starships with starfighter capacity for free when at the same system (or sector).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nNumber of Moves per Turn - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Landspeed, docking bay transit, shuttling, hyperspeed, landing and taking off are mutually exclusive; each card may make only one of those moves per turn. Transferring, embarking and disembarking are unlimited and may be performed any number of times per turn.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nOccupants of Vehicles and Starships - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Characters aboard a vehicle or starship fall into three categories: pilots, drivers and passengers. Indicate which characters are aboard a vehicle or starship by placing them underneath that card. You may designate which characters are acting as pilots or drivers at any time during your deploy phase or move phase.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPilots: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "A starship, combat vehicle or shuttle vehicle must be piloted (by a character pilot or a permanent pilot) to move or to use its power or maneuver. Any pilots aboard a starship or vehicle in excess of its pilot capacity are passengers and thus do not pilot the starship or vehicle.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDrivers: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "A transport vehicle must have a driver aboard to move or to use its power or maneuver. (A creature vehicle, e.g. a bantha, has ability and thus does not require a driver.) Typically, the driver must be a character with ability. If more than one character is aboard, you must designate which one is driving.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nPassengers: ", attributes: [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 20)]))
        
        attributedText.append(NSAttributedString(string: "Passengers are any characters aboard a starship or vehicle who are not acting as a pilot or driver of that starship or vehicle. The passengers aboard a creature vehicle are sometimes referred to as ‘riders.’", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Draw Phase
    
    static let drawPhaseDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "Draw Phase - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "In this phase you may replenish your hand. If you have cards left in your Force Pile, you may draw any number of them into your hand, one at a time. (There is no limit to the number of cards you may have in your hand.) You will often want to leave some cards in your Force Pile to use during your opponent’s turn (say, to fire your weapons) or to save up to deploy a card with a high deploy cost on one of your later turns.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEnding Your Turn - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "When you have finished all six phases, announce to your opponent, “The Force is with you!” Both players then re-circulate their Used Piles by placing them beneath the appropriate Reserve Deck. (If you forget, your opponent may insist that you re-circulate.) During subsequent turns, these cards will work their way back to the top of your Reserve Deck to be activated again.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAfter you finish your turn, your opponent takes a complete turn of six phases, then you take another one and so on.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWinning the Game - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "If at any time your opponent’s entire Life Force — Reserve Deck, Force Pile and Used Pile — is depleted, you win the game!", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    
}
