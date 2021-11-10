//
//  CardInfoController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/2/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



class CardInfoController: BaseCollectionViewController, UICollectionViewDelegateFlowLayout {
        
    let cardInfoCellData = CardInfoCellData()
    let cardInfoHeaderData = CardInfoHeadersData()
    var groups: [IconGroup] = []
    var headerGroups: [HeaderGroup] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.backgroundColor = .white
        
        collectionView.register(CardInfoGroupCell.self, forCellWithReuseIdentifier: CardInfoGroupCell.reuseIdentifier)
        
        //header
        collectionView.register(CardInfoHeader.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: CardInfoHeader.reuseIdentifier)
        
        setupGroupData()
        setupHeaderGroupData()
        
    }
    
    func setupGroupData() {
        let arrayOfCardTypes = cardInfoCellData.cardTypes
        let arrayOfSkillsTypes = cardInfoCellData.skillsTypes
        
        let cardTypeGroup = IconGroup(nameOfIcons: "Card Types", arrayOfIcons: arrayOfCardTypes)
        let skillsTypeGroup = IconGroup(nameOfIcons: "Skills", arrayOfIcons: arrayOfSkillsTypes)
        
        [cardTypeGroup, skillsTypeGroup].forEach({ self.groups.append($0) })
    }
    
    func setupHeaderGroupData() {
        let arrayOfHeaders = cardInfoHeaderData.headers
        let headersGroup = HeaderGroup(arrayOfHeaders: arrayOfHeaders)
        
        [headersGroup].forEach({ self.headerGroups.append($0) })
    }
    
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let header = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: CardInfoHeader.reuseIdentifier, for: indexPath) as! CardInfoHeader //if this doesn't work use header iD
        
        let headerGroup = headerGroups[indexPath.item]
        header.cardInfoHeaderHorizontalController.headerGroup = headerGroup
        header.cardInfoHeaderHorizontalController.collectionView.reloadData()
        
        header.cardInfoHeaderHorizontalController.didSelectHandler = { headerModel in
            let controller = CardInfoHeaderDetailsController()
            controller.navigationItem.title = headerModel.headerName
            controller.headerModel = headerModel
            self.navigationController?.pushViewController(controller, animated: true)
        }
        return header
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        return .init(width: view.frame.width, height: 300)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return 2 //change this accordingly to maybe 3 or however many icon groups you will be using, at least 2
        return groups.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardInfoGroupCell.reuseIdentifier, for: indexPath) as! CardInfoGroupCell
        
        let iconGroup = groups[indexPath.item]
        
        cell.titleLabel.text = iconGroup.nameOfIcons
        cell.horizontalController.iconGroup = iconGroup
        cell.horizontalController.collectionView.reloadData()
        
        cell.horizontalController.didSelectHandler = { [weak self] iconModel in
            
            let controller = CardInfoDetailController()
            controller.navigationItem.title = iconModel.iconName
            controller.cardInfo = iconModel
            self?.navigationController?.pushViewController(controller, animated: true)
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: view.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return .init(top: 16, left: 0, bottom: 0, right: 0)
    }
    
    
}
