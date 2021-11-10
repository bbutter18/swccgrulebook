//
//  CardInfoHeadersData.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHeadersData {
    
    
    let headers = [
        HeaderModel(headerName: "What is Star Wars CCG?", headerSubTitle: "A complicated, fun, eventful game that is the chess of CCG's.", headerImage: #imageLiteral(resourceName: "What is SWCCG Icon"), backgroundColor: UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0), headerType: .whatIsSWCCG),
        HeaderModel(headerName: "Additional Rules", headerSubTitle: "More Information and Supplementary Rule Guides", headerImage: #imageLiteral(resourceName: "Additional Rules Icon"), backgroundColor: UIColor(red: 43/255, green: 43/255, blue: 43/255, alpha: 1.0), headerType: .additionalRules),
        HeaderModel(headerName: "The History of Star Wars CCG", headerSubTitle: "Take a look back at the history of the game, from inception to end...?", headerImage: #imageLiteral(resourceName: "History SWCCG"), backgroundColor: .black, headerType: .historyOfSWCCG)
    
    ]
    
    
}
