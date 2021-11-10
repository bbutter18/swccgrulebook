//
//  AppFullScreenController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/29/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit



class IntroFullScreenController: UITableViewController {
    
    //MARK: - Properties
    
    var dismissHandler: (() -> ())?
    var introItem: IntroItem?
    
    //MARK: - View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.contentInsetAdjustmentBehavior = .never
        
        let height = UIApplication.shared.statusBarFrame.height
        tableView.contentInset = .init(top: 0, left: 0, bottom: height, right: 0)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.item == 0 {
            
            let headerCell = IntroFullScreenHeaderCell()
            headerCell.closeButton.addTarget(self, action: #selector(handleCloseButton), for: .touchUpInside)
            headerCell.introCell.introItem = introItem
            headerCell.introCell.layer.cornerRadius = 0
            return headerCell
        }
        
        let cell = IntroFullScreenDescriptionCell()
        if let introEnum = introItem?.detailedDescription {
            switch introEnum {
            case .beginGame:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.beginGameDescriptionLabel.attributedText
               
            case .activate:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.activatePhaseDescriptionLabel.attributedText
               
            case .control:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.controlPhaseDescriptionLabel.attributedText
        
            case .deploy:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.deployPhaseDescriptionLabel.attributedText
                
            case .battle:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.battlePhaseDescriptionLabel.attributedText
                
            case .move:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.movePhaseDescriptionLabel.attributedText
                
            case .draw:
                cell.cellDescriptionLabel.attributedText = IntroCellDescriptionLabelText.drawPhaseDescriptionLabel.attributedText
            }
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 450
        }
        
        return super.tableView(tableView, heightForRowAt: indexPath)
    }
    
    @objc fileprivate func handleCloseButton(button: UIButton) {
        button.isHidden = true
        dismissHandler?()
    }
    
    
}
