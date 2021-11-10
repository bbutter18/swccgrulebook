//
//  IntroController.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 1/28/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class IntroController: BaseCollectionViewController, UICollectionViewDelegateFlowLayout {
    
    //MARK: - Properties
    var startingFrame: CGRect?
    var introFullScreenController: IntroFullScreenController!
    var topConstraint: NSLayoutConstraint?
    var leadingConstraint: NSLayoutConstraint?
    var widthConstraint: NSLayoutConstraint?
    var heightConstraint: NSLayoutConstraint?
    var introCellData = IntroCellData()
    
    //MARK: - View Did Load
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) //set this color
        
        navigationController?.isNavigationBarHidden = true
        
        collectionView.register(IntroCell.self, forCellWithReuseIdentifier: IntroCell.reuseIdentifier)
    }
    
    
    
    //MARK: - Collection View Delegate
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //return items.count
        return introCellData.phases.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: IntroCell.reuseIdentifier, for: indexPath) as! IntroCell
        cell.introItem = introCellData.phases[indexPath.item] //indexPath.row?
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return .init(width: view.frame.width - 64, height: 450)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        
        return 32
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return .init(top: 32, left: 0, bottom: 32, right: 0)
    }
    
    //MARK: - Did Select Item
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let introFullScreenController = IntroFullScreenController()
        introFullScreenController.introItem = introCellData.phases[indexPath.row]
        introFullScreenController.dismissHandler = {
            self.handleRemoveFullScreenView()
        }
        
        let fullScreenView = introFullScreenController.view!
        view.addSubview(fullScreenView)
        addChild(introFullScreenController)
        self.introFullScreenController = introFullScreenController
        
        fullScreenView.frame = CGRect(x: 0, y: 0, width: 100, height: 200)
        
        self.collectionView.isUserInteractionEnabled = false
        
        guard let cell = collectionView.cellForItem(at: indexPath) else { return }
        guard let startingFrame = cell.superview?.convert(cell.frame, to: nil) else { return }
        self.startingFrame = startingFrame
        
        fullScreenView.translatesAutoresizingMaskIntoConstraints = false
        
        topConstraint = fullScreenView.topAnchor.constraint(equalTo: view.topAnchor, constant: startingFrame.origin.y)
        leadingConstraint = fullScreenView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: startingFrame.origin.x)
        widthConstraint = fullScreenView.widthAnchor.constraint(equalToConstant: startingFrame.width)
        heightConstraint = fullScreenView.heightAnchor.constraint(equalToConstant: startingFrame.height)
        
        [topConstraint, leadingConstraint, widthConstraint, heightConstraint].forEach({ $0?.isActive = true })
        self.view.layoutIfNeeded()
        
        fullScreenView.layer.cornerRadius = 16
        
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
            
            //use constraints
            self.topConstraint?.constant = 0
            self.leadingConstraint?.constant = 0
            self.widthConstraint?.constant = self.view.frame.width
            self.heightConstraint?.constant = self.view.frame.height
            
            self.view.layoutIfNeeded()
            self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height

            guard let cell = self.introFullScreenController.tableView.cellForRow(at: [0,0]) as? IntroFullScreenHeaderCell else { return }
            cell.introCell.topConstraint.constant = 48
            cell.layoutIfNeeded()
            
        }, completion: nil)
        
    }
    
    //MARK: - Remove Full Screen View Function
    
    @objc func handleRemoveFullScreenView() {
        
        UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
            
            self.introFullScreenController.tableView.contentOffset = .zero
            
            guard let startingFrame = self.startingFrame else { return }
            
            self.topConstraint?.constant = startingFrame.origin.y
            self.leadingConstraint?.constant = startingFrame.origin.x
            self.widthConstraint?.constant = startingFrame.width
            self.heightConstraint?.constant = startingFrame.height
            
            self.view.layoutIfNeeded()
            if let tabBarFrame = self.tabBarController?.tabBar.frame {
                self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height - tabBarFrame.height
            }
            guard let cell = self.introFullScreenController.tableView.cellForRow(at: [0,0]) as? IntroFullScreenHeaderCell else { return }
            cell.introCell.topConstraint.constant = 24 //changed from 48
            cell.layoutIfNeeded()
            
        }, completion: { _ in
            
            self.introFullScreenController.view.removeFromSuperview()
            self.introFullScreenController.removeFromParent()
            self.collectionView.isUserInteractionEnabled = true
            
        })
        
    }
}
