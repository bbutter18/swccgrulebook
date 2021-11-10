//
//  CardInfoHeadersDescriptionLabelText.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

class CardInfoHeadersDescriptionLabelText {
    
    //MARK: - What is Star wars ccg
    
    static let whatIsSWCCGDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)]
        var attributedText = NSMutableAttributedString(string: "CCG- ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Customizable card game was Decipher’s trademark for what the card game industry generally calls a “collectible card game” (or occasionally a “trading card game”). Most collectible card games are typically sold in randomized packages of common, uncommon and rare cards, not unlike baseball cards. To play a game, you build a deck from your collection of cards, then challenge an opponent who built a different deck from their collection. There’s usually a wide variety of different cards to collect and trade, and thus many different deck types and game strategies.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nThe cards in the Star Wars Customizable Card Game represented every imaginable element from Star Wars: characters, creatures, starships, weather conditions, using the Force, weapons, planets, Death Stars, locations, capturing, battles, bounty hunting, Jedi training, vehicles — you name it!", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEvery card was canonical and officially approved by Lucasfilm Ltd. Many present little-known facts introduced here for the first time. This exceptional level of authenticity, combined with the finest quality images in the industry, made these cards highly collectible as well as playable. The Star Wars Customizable Card Game consists of hundreds of different cards that you can collect and trade. Since your skill in customizing your game deck has an impact on your chances of winning, part of the fun is discovering what cards work together.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYour First Deck - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Every game is a contest between two players, one with a Light Side deck and the other with a Dark Side deck. (Light Side cards have the Rebel symbol on the back; Dark Side cards, the Imperial symbol.) Each game deck must contain exactly 60 cards, all from one side of the Force.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nIf you’re new to the game, the 60 cards that came with this rulebook will be your first game deck. Later on, as you collect and trade for additional cards, you will be able to experiment with different decks by exchanging some cards for other ones to try different strategies, and even learn to build your own personalized game decks from scratch.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nYour game deck will contain characters and starships, plus plenty of locations where those characters and starships can move around and battle. In addition, most decks include a mixture of other card types to help their characters and starships in their adventures. (See the icon guide inside the front cover for a list of all the card types.) The various card types all work together to create a richly detailed game that re-creates many different aspects of the Star Wars universe.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nLocations cards lay out on the table as you play, creating a kind of gameboard that’s new and different every time. Characters, vehicles and starships are your primary gamepieces and may move from location to location. Weapons, devices and effects give your characters, vehicles and starships additional capabilities. And interrupts play at various times to provide a wide variety of plot twists, typically introducing changes to the gameplay and then being discarded.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nHow to Win - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "The game is all about “using the Force.” Doing so wisely will be crucial to your success. Your 60-card game deck represents the amount of Force available to you during the game. The elegant design of the game uses the cards themselves as a natural scorekeeper; no tokens or counters are necessary. The basic unit of measurement in the game is 1 Force (1 unit of Force = 1 card).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDeplete your opponent’s Life Force and you win the game. Of course, there’s a lot more strategy, but with minimal effort, you’ll master the basics faster than a Jedi Knight!", attributes: [.foregroundColor: UIColor.gray]))
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    //MARK: - Additional Rules
    
    static let additionalRulesDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)] //21?
        var attributedText = NSMutableAttributedString(string: "Retrieve - ", attributes: attrs)
        
        attributedText.append(NSAttributedString(string: "Retrieving a card (or retrieving 1 force) is defined as taking the top card of your Lost Pile, revealing it to both players and placing it face down on your Used Pile. To retrieve multiple cards, simply retrieve multiple times (this is all one action). To randomly retrieve a card, shuffle, cut and replace the Lost Pile and then retrieve normally. To retrieve a specific card, search the Lost Pile; if a copy of the card is there you must reveal it and then place it face down on your Used Pile (do not reshuffle unless instructed to do so).\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        //insert retrieve card image here from gametext only
        let retrieveImageAttachment = NSTextAttachment()
        retrieveImageAttachment.image = UIImage(named: "Retrieve Rule")
        let retrieveImageString = NSAttributedString(attachment: retrieveImageAttachment)
        
        attributedText.append(retrieveImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nImmune to Attrition - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "Some Characters, Vehicles, and Starships are protected from varying levels of attrition, as listed on their cards. When forfeiting cards to satisfy attrition, you are not required to forfeit any card that has immunity (unless the total attrition is greater than the card’s immunity level).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nFor example, suppose your Lord Vader and one Stormtrooper (forfeit = 2) are in a battle and the attrition against you is 4. You do not have to forfeit Vader because of his immunity to attrition less than 6, but you must still satisfy as much attrition as possible; thus you must forfeit the Stormptrooper. (Because you forfeited all cards which were vulnerable to attrition, you may ignore the remaining attrition.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nOn the other hand, if the attrition against you is 6 or more, your Vader is no longer protected. In this instance, he would have to be forfeited – even if you forfeit the Stormtrooper first – because you do not have enough other cards available to satisfy all attrition against you. (You cannot forfeit the Stormtrooper and then compare Vader’s immunity to the remaining unsatisfied attrition, because immunity is only applicable against total attrition.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAn enclosed Vehicle or Starship with immunity to attrition protects itself and all cards aboard. Immunity is not cumulative; thus, if a card is granted immunity to attrition from more than one source, it benefits only from the highest such immunity. Any card which is immune to attrition may still be voluntarily forfeited to satisfy attrition or battle damage.\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        //insert image of immune to attrition
        let attritionImageAttachment = NSTextAttachment()
        attritionImageAttachment.image = UIImage(named: "Attrition Rule")
        let attritionImageString = NSAttributedString(attachment: attritionImageAttachment)
        
        attributedText.append(attritionImageString)
        
        attributedText.append(NSAttributedString(string: "\n\n'React' - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "This is a special form of deployment or movement (granted by cards that say ‘react’) that may occur during your opponent’s turn. A ‘react’ occurs just after your opponent initiates a battle or Force drain, and allows you to deploy or move one or more cards to the Location of the battle or Force drain (at normal use of the Force).", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTo deploy as a ‘react,’ a card must comply with all deployment rules.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTo move as a ‘react,’ a card must comply with all movement rules and must be within range of the battle or Force drain Location. If it is a Starship or non-Creature Vehicle, it must have a pilot or driver aboard (and a nav computer if moving through hyperspace). The ‘reacting’ card may use its landspeed or hyperspeed; may land or take off; and may embark on or disembark from the ‘reacting’ card just before it departs and just after it arrives. (Embarking and disembarking is possible even if the ‘reacting’ card is already at the battle or Force drain Location.)", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nEach card that deploys or moves is a separate ‘react,’ regardless of which card allowed them to ‘react.’ Cards such as CZ-3 or Myn Kyneugh are not intended to imply that all of the movements or deployments are one big ‘react.’ Thus, each opponent’s Sense card may cancel only one card’s deployment or movement.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\n‘Reacting’ to a Force drain cancels the Force drain, if you bring presence to the Location. ‘Reacting’ away from a battle (e.g. using a tauntaun) cancels the battle if you remove your presence form the battle Location.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nCards involved in a ‘react’ are prevented from ‘reacting’ again during the same turn, even if the ‘react’ is canceled.\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        //insert image of 'react'
        let reactImageAttachment = NSTextAttachment()
        reactImageAttachment.image = UIImage(named: "React Rule")
        let reactImageString = NSAttributedString(attachment: reactImageAttachment)
        
        attributedText.append(reactImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nCummulatively - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A term used in game text to indicate that multiple copies of a card can increasingly modify the same thing. For example, the Scimitar Squadron TIE says, “Cumulatively adds 1 to total weapon destiny of your other TIE/sa present firing Concussion Missiles.” Three Scimitar Squadron TIEs would therefore add 3 to your TIE Defender firing a Concussion Missile Weapon card.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nConversely, the Green Squadron Pilot card says, “Add 2 to power of anything he pilots.” This text is not cumulative, and thus a single Y-wing piloted by two Green Squadron Pilot cards is only power + 2, not power + 4. (No modifiers are cumulative unless they specifically say they are.) The pilots could both provide bonuses if they were on different ships. Alternately, two different pilots could both provide bonuses on that single Y-wing.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nThus, if a modifying card does not state that is is cumulative, then more than one copy of that modifying card will have not further effect on the value being modified.\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        //insert image of cummulatively
        let cummulativelyImageAttachment = NSTextAttachment()
        cummulativelyImageAttachment.image = UIImage(named: "Cummulatively Rule")
        let cummulativelyImageString = NSAttributedString(attachment: cummulativelyImageAttachment)
        
        attributedText.append(cummulativelyImageString)
        
        attributedText.append(NSAttributedString(string: "\n\nDefense Value - ", attributes: [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)])) //21?
        
        attributedText.append(NSAttributedString(string: "A collective term which refers to the various attributes used when cards are targeted by weapons. A character’s defense value is its ability or armor, whichever is higher. (Unarmed droids have a defense value of zero.) A vehicle or starship’s defense value is its armor or maneuver.\n\n", attributes: [.foregroundColor: UIColor.gray]))
        
        //insert image of defense value
        let defenseValueImageAttachment = NSTextAttachment()
        defenseValueImageAttachment.image = UIImage(named: "Defense Value Rule")
        let defenseValueImageString = NSAttributedString(attachment: defenseValueImageAttachment)
        
        attributedText.append(defenseValueImageString)
        
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()

    
    //MARK: - History of STWCCG
    
    static let historyOfSWCCGDescriptionLabel: UILabel = {
        let label = UILabel()
        var attrs = [NSAttributedString.Key.font: UIFont.italicSystemFont(ofSize: 15)]
        var attributedText = NSMutableAttributedString(string: "Original article, 'The Force Is Strong With This Star Wars Subculture' by Ben Lindbergh is over at theringer.com", attributes: attrs)
        
        
        attributedText.append(NSAttributedString(string: "\n\n...Star Wars CCG was conceived by Decipher Inc., a gaming company founded by businessman Warren Holland in 1983. In its early years, Decipher made puzzles, party games, and Pente sets, but its business changed soon after a competing company, Wizards of the Coast, released Magic in 1993, starting the customizable/collectible card game craze. CCGs—which exist today in digital form as well as in games featuring physical cards—couple the compulsive appeal of traditional trading cards with the strategy of tabletop games, allowing players to buy booster packs of randomly drawn cards that can be combined into decks and used to battle opposing players.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAfter Magic quickly caught on, independent designers Tom Braunlich and Rollie Tesh approached Holland with the idea of creating CCGs based on beloved, licensed properties. They’d already come up with the concept for a Star Trek customizable card game, and Holland liked it enough to acquire the Star Trek gaming license from Paramount. The resulting game was a success, which convinced Holland to secure the Star Wars license from Lucasfilm and ask Braunlich and Tesh to design Star Wars CCG. “Our goal was to not copy what Magic: The Gathering was doing, but have a game that really captured the essence of these licenses,” Braunlich says by phone.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nHolland helped them do that by purchasing an original print of Star Wars and an expensive editing machine that (Braunlich recalls) carried a $50,000 price tag. Decipher imported the equipment from Hollywood to its headquarters in Norfolk, Virginia, and used the machine to capture high-quality images for use on the cards. “That was one of the reasons I always thought it was such a successful game—because the cards were just awesome,” Braunlich says. “Sometimes an image that’s fleeting in the movie, just in the background, we’d want to make a card out of it. And the artists there would do computer magic, and the players really loved that.”", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nDecipher’s game debuted at the tail end of an extended drought between Star Wars films, when interest in the Expanded Universe was exploding. Decipher could capture an in-focus image of a barely glimpsed alien in the corner of the Cantina and flesh out the franchise’s lore by creating a card out of it, working with Lucasfilm to bestow backstories and names on any character that didn’t already have them. “We also had access to their props department and had high-quality photographs taken of all these little do-dads and props and things that are in the movie,” Braunlich adds. That collaboration lent an air of authenticity to the product that roped in fans who were new to CCGs.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTo ensure that Star Wars would be a pervasive gameplay presence, Braunlich and Tesh also crafted a core mechanic based on the Force, orienting the game around expending Force power from a draw deck and regenerating it from a reserve pile in a way that they thought mirrored the movies’ vision of an omnipresent, mystical energy source. The two designers were expert chess players, and they aspired to replicate the ancient game’s elegance, producing something that was easy to learn on a rudimentary level but could take a lifetime to master. “It’s very easy in a game like this to overcomplicate things, and we worked really hard to have a balance between simple rules, but the ramifications of the rules are huge and almost unending,” Braunlich says. Overseeing a large team of testers, they tweaked each card’s attributes until they were confident that the game would be in balance, with no one card or combination of cards from the CCG’s hundreds-deep library lending its owner an unfair advantage.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nWhen they were finished, Braunlich says, he knew that the game would have “a huge amount of repeat-play value,” but even he underestimated its depths. When he attended the first big tournament, he found that the players had far surpassed the creators. “I was just amazed at how good they were,” he says. “I thought I was a pretty good player, and I realized right at that point that I was a total novice compared to these guys, that they were already way beyond what I even realized was in the game. They were talking about strategies that I hadn’t even thought of.”", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nBraunlich believes that the game he cocreated played a role in bringing about the current golden age of tabletop gaming. In the past, he says, the market was cluttered with “a lot of board games that were just overly complicated and a little bit hackneyed in their design, and they would have a lot of features that didn’t add to the game.” In recent years, though, the trend has been toward “elegant game designs with unique functionalities but simple gameplay that still allows you a lot of strategical options.” In Braunlich’s view, “the Star Trek and the Star Wars—particularly the Star Wars—CCGs were kind of the first, or one of the first, in that trend in the mid- to late ’90s.”", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nIn 2001, Star Wars CCG survived its closest brush with extinction. “We lost the license for reasons that had nothing to do with the popularity of the game,” Braunlich says.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAccording to Holland, Decipher and Lucasfilm had always enjoyed a close working relationship; Decipher, he says via email, was one of only two licensees Lucasfilm allowed to remove the Episode I script from Skywalker Ranch before the film opened. But Holland claims that Lucasfilm didn’t fully understand the bond that Decipher had formed with the Star Wars CCG community or the intricacies of interfacing with fans and maintaining a competitive card game: organizing tournaments, designing new card sets, and adjusting rules, all of which went beyond Lucasfilm’s core business.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nAfter Hasbro bought Wizards of the Coast for $325 million in September 1999, Holland says, his smaller company was slowly muscled out. “Hasbro was a $500 million account, and when they acquired Wizards of the Coast, they put a lot of pressure on Lucas to move the license to Wizards,” Holland recalls. “To their credit, Lucas[film] said no for a long time. … But the internal pressure from their largest licensor eventually became overwhelming.” In 2001, Lucasfilm altered the deal, and Decipher lost the license. The company had no choice but to cancel an upcoming expansion set and cease production of Star Wars CCG.", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nThat could have—should have—been the end. With no new content, the game would have grown stale, and without a guiding hand to monitor player feedback and make tweaks to the metagame, emerging strategies would have dominated unchecked and upset SWCCG’s precarious competitive balance. But after spending several years as the stewards of the game, Decipher felt attached to its thriving player community. “The fans were like a surrogate family in some respects,” Holland says. “Our entire team of over 100 employees knew many players and collectors from the community. In fact, many of our team had been hired from [the] community. … As best we could, we needed to protect not only the thousands of dollars many of our players had invested, but more importantly, the place Star Wars CCG had in their hearts.”", attributes: [.foregroundColor: UIColor.gray]))
        
        attributedText.append(NSAttributedString(string: "\n\nTo keep the game going, Decipher’s leadership decided to start a “Players Committee” led by six of the community’s most respected members. Those Decipher-designated “player advocates” would work with the company to shift responsibility for the game’s administration from Decipher to the fans, setting up communication channels, organizing tournaments, settling rules disputes and, as Holland wrote in January 2002, “keeping Star Wars CCG in the limelight for a long time to come.” It was an unprecedented idea born of a desperate situation. “I’m not aware that anything like this had ever been done before,” Holland says.", attributes: [.foregroundColor: UIColor.gray]))
        
        label.isUserInteractionEnabled = true
        //label.addGestureRecognizer(UIGestureRecognizer(target: self, action: #selector(handleTap)))
        label.font = UIFont.systemFont(ofSize: 20, weight: .regular)
        label.attributedText = attributedText
        label.numberOfLines = 0
        return label
    }()
    
    
    
}
