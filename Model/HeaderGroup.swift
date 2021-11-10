//
//  HeaderGroup.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

protocol HeaderGuide {
    var headerName: String { get }
}

enum HeaderType {
    
    case whatIsSWCCG
    case additionalRules
    case historyOfSWCCG
    
}

//this will be the group for the section, so section of Characters will be nameOfIcons: Character Icons or Card Types
struct HeaderGroup {
    var arrayOfHeaders: [HeaderModel]
}

struct HeaderModel: HeaderGuide {
    let headerName: String
    let headerSubTitle: String
    let headerImage: UIImage
    //let iconDescription: String
    //let iconCardImages: [UIImage]
    let backgroundColor: UIColor
    let headerType: HeaderType
}
