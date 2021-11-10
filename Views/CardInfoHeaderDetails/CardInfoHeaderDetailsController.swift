//
//  CardInfoHeaderDetailsController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/5/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardInfoHeaderDetailsController: UITableViewController {
    
    var headerModel: HeaderModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white //black?
        
        if #available(iOS 13.0, *) {
            let appearance = UINavigationBarAppearance()
            appearance.titleTextAttributes = [.foregroundColor: UIColor.black]
            appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.black]
            
            navigationItem.standardAppearance = appearance
            navigationItem.scrollEdgeAppearance = appearance
        } else {
            // Fallback on earlier versions
        }
        
        tableView.tableFooterView = UIView()
        tableView.separatorStyle = .none
        tableView.allowsSelection = false
        tableView.contentInsetAdjustmentBehavior = .never
        
        let height = UIApplication.shared.statusBarFrame.height
        tableView.contentInset = .init(top: 0, left: 0, bottom: height, right: 0) //under navigation bar adjust this to 0??? adjust the bottom also
        
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
            self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height + 70
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
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.item == 0 {
            let headerCell = CardInfoBullshitCell()
            headerCell.cardHeaderCell.headerModel = headerModel
            return headerCell
        }
        
        //add a third cell here? a table view within a cell???
        
        let cell = CardInfoHeaderDetailsDescriptionCell()
        if let headerEnum = headerModel?.headerType {
            switch headerEnum {
            case .whatIsSWCCG:
                cell.cellDescriptionLabel.attributedText = CardInfoHeadersDescriptionLabelText.whatIsSWCCGDescriptionLabel.attributedText
            case .additionalRules:
                cell.cellDescriptionLabel.attributedText = CardInfoHeadersDescriptionLabelText.additionalRulesDescriptionLabel.attributedText
            case .historyOfSWCCG:
                cell.cellDescriptionLabel.attributedText = CardInfoHeadersDescriptionLabelText.historyOfSWCCGDescriptionLabel.attributedText
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
    
}
