//
//  UIColor.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/29/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



extension UIColor {
    
//    convenience init(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat) {
//        self.init(red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a/1.0)
//
//    }
    
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
        
    }
    
}
