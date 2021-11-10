//
//  CardInfoDetailController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/3/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit

class CardInfoDetailController: BaseCollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var cardInfo: IconModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .white
        
        //3 cells registered
        collectionView.register(CardInfoDetailsCell.self, forCellWithReuseIdentifier: CardInfoDetailsCell.reuseIdentifier)
        collectionView.register(CardInfoDetailsImagesCell.self, forCellWithReuseIdentifier: CardInfoDetailsImagesCell.reuseIdentifier)
        collectionView.register(CardInfoDetailsRulesCell.self, forCellWithReuseIdentifier: CardInfoDetailsRulesCell.reuseIdentifier)
        
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
           
            self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height
            
        }, completion: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if self.isMovingFromParent {
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
           
                if let tabBarFrame = self.tabBarController?.tabBar.frame {
                    self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height - tabBarFrame.height
                }
                
            }, completion: nil)
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3 //for number of custom cells above
    }
    
    var capturedLabelHeight: CGFloat = 100.0

    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if indexPath.item == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoDetailsCell.reuseIdentifier, for: indexPath) as! CardInfoDetailsCell
            cell.cardInfo = cardInfo
            return cell
        } else if indexPath.item == 1 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoDetailsImagesCell.reuseIdentifier, for: indexPath) as! CardInfoDetailsImagesCell
            cell.horizontalController.cardInfo = self.cardInfo
            return cell
        } else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoDetailsRulesCell.reuseIdentifier, for: indexPath) as! CardInfoDetailsRulesCell
            
            if let cardType = cardInfo?.iconType {
                switch cardType {
                case .alien:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.alienDescriptionLabel.attributedText
                case .rebel:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.rebelDescriptionLabel.attributedText
                case .imperial:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.imperialDescriptionLabel.attributedText
                case .droid:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.droidDescriptionLabel.attributedText
                case .device:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.deviceDescriptionLabel.attributedText
                case .effect:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.effectDescriptionLabel.attributedText
                case .interrupt:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.interruptDescriptionLabel.attributedText
                case .objective:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.objectiveDescriptionLabel.attributedText
                case .starship:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.starshipsDescriptionLabel.attributedText
                case .vehicle:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.vehiclesDescriptionLabel.attributedText
                case .weapon:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.weaponsDescriptionLabel.attributedText
                case .admiralsOrder:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.admiralsOrderDescriptionLabel.attributedText
                case .defensiveShield:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.defensiveShieldDescriptionLabel.attributedText
                case .warrior:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.warriorDescriptionLabel.attributedText
                case .pilot:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.pilotDescriptionLabel.attributedText
                case .permanentWeapon:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.permanentWeaponDescriptionLabel.attributedText
                case .navComputer:
                    cell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.pilotDescriptionLabel.attributedText
                    
                }
            }
            
            return cell 
        }
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
     
        if indexPath.item == 0 {
            //calculate the necessary size for Card Info label
            let dummyCell = CardInfoDetailsCell(frame: .init(x: 0, y: 0, width: view.frame.width, height: 1000))
            dummyCell.cardInfo = cardInfo
            dummyCell.layoutIfNeeded()
            
            let estimateSize = dummyCell.systemLayoutSizeFitting(.init(width: view.frame.width, height: 1000))
            
            return .init(width: view.frame.width, height: estimateSize.height)
            
        } else if indexPath.item == 1 {
            
            return .init(width: view.frame.width, height: 460) //adjusts height of collection view with images
            
        } else if indexPath.item == 2 {
            let dumyCell = CardInfoDetailsRulesCell(frame: .init(x: 0, y: 0, width: view.frame.width, height: 1000))
            
            if let cardInfoType = cardInfo?.iconType {
                switch cardInfoType {
                case .alien:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.alienDescriptionLabel.attributedText
                case .rebel:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.rebelDescriptionLabel.attributedText
                case .imperial:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.imperialDescriptionLabel.attributedText
                case .droid:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.droidDescriptionLabel.attributedText
                case .device:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.deviceDescriptionLabel.attributedText
                case .effect:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.effectDescriptionLabel.attributedText
                case .interrupt:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.interruptDescriptionLabel.attributedText
                case .objective:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.objectiveDescriptionLabel.attributedText
                case .starship:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.starshipsDescriptionLabel.attributedText
                case .vehicle:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.vehiclesDescriptionLabel.attributedText
                case .weapon:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.weaponsDescriptionLabel.attributedText
                case .admiralsOrder:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.admiralsOrderDescriptionLabel.attributedText
                case .defensiveShield:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.defensiveShieldDescriptionLabel.attributedText
                case .warrior:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.warriorDescriptionLabel.attributedText
                case .pilot:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.pilotDescriptionLabel.attributedText
                case .permanentWeapon:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.permanentWeaponDescriptionLabel.attributedText
                case .navComputer:
                    dumyCell.cellDescriptionLabel.attributedText = CardInfoDetailsDescriptionLabelText.pilotDescriptionLabel.attributedText
                }
            }
            
            dumyCell.layoutIfNeeded()
            let estSize = dumyCell.systemLayoutSizeFitting(.init(width: view.frame.width, height: 1000))
            
            return .init(width: view.frame.width, height: estSize.height)
        } else {
            return .init(width: view.frame.width, height: 460)
        }
        
        
    }
}
