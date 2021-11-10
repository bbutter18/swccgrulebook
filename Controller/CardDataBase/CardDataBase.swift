//
//  CardDataBase.swift
//  Star Wars CCG Rulebook
//
//  Created by Blastoise on 2/18/20.
//  Copyright © 2020 Blastoise's Deluge, LLC. All rights reserved.
//

import Foundation
import UIKit


class CardDataBaseViewController: UIViewController, UICollectionViewDelegateFlowLayout {
    
    var arrayOfCards: [Card] = []
    var endpoint: String = ""
    var selectedIndexPath: Int = 0
    var searchFilteredCardData: [Card] = []
    var hasBeenTapped: Bool = false
    var selectedEndpoint: String = ""
    var objectiveHasBeenTapped: Bool = false
    var selectedSide: CardSide?
    var selectedType: CardType?
    var tabBarHiddenButtontapped: Bool = false
    var cardImage = UIImage()
    let boxView = UIView()

    
    lazy var dataSource: CardDataSource = {
        return CardDataSource(data: [])
    }()
    
    //MARK: - Layout Properties
    
    let customNavigationView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        return view
    }()
    
    let setLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont(name: "ArialRoundedMTBold", size: 25) //rounded bold?
        label.numberOfLines = 0
        label.textAlignment = .center
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    let imageName: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.textAlignment = .left
        label.font = UIFont(name: "Arial-BoldMT", size: 20)
        label.numberOfLines = 1
        return label
    }()
    
    let hamburgerIcon: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleHamburgerIcon), for: .touchUpInside)
        button.setImage(#imageLiteral(resourceName: "Hamburger Icon 2"), for: .normal)
        return button
    }()
    
    let shareOptionsIcon: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(handleShareOptionsIcon), for: .touchUpInside)
        button.setImage(#imageLiteral(resourceName: "Options Icon 1"), for: .normal)
        return button
    }()
    
    let filterOptionsView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.rgb(r: 104, g: 104, b: 104)
        view.isUserInteractionEnabled = true
        return view
    }()
    
    let filterOptionsViewUpArrow: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Up Arrow Resized"), for: .normal)
        button.addTarget(self, action: #selector(handleFilterOptionsUpArrow), for: .touchUpInside)
        return button
    }()
    
    let menuView: UIView = {
        let view = UIView()
        view.backgroundColor = .lightGray
        return view
    }()
    
    let cancelMenuViewButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "cancel photo_1"), for: .normal)
        button.addTarget(self, action: #selector(handleCancelHamburgerIconView), for: .touchUpInside)
        return button
    }()
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.backgroundColor = .white
        cv.invalidateIntrinsicContentSize()
        return cv
    }()
    
    let hideTabBarButton: UIButton = {
        let button = UIButton()
        button.setImage(#imageLiteral(resourceName: "Hide Tab Bar Button"), for: .normal)
        button.addTarget(self, action: #selector(handleHideTabBar), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Card Sets Filter Buttons
    let cardSideTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        label.text = "Side:"
        label.textColor = .white
        return label
    }()
    
    let anyButton = CardSetsFilterButtons.init().anyButton
    let lightSideButton = CardSetsFilterButtons.init().lightSideButton
    let darkSideButton = CardSetsFilterButtons.init().darkSideButton
    
    let cardSideContainerStackView = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    
    let cardTypeTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        label.textColor = .white
        label.text = "Type:"
        return label
    }()
    
    let anyButton2 = CardSetsFilterButtons.init().anyButton2
    let characterButton = CardSetsFilterButtons.init().characterButton
    let weaponButton = CardSetsFilterButtons.init().weaponButton
    let starshipButton = CardSetsFilterButtons.init().starshipButton
    let deviceButton = CardSetsFilterButtons.init().deviceButton
    let vehicleButton = CardSetsFilterButtons.init().vehicleButton
    let effectButton = CardSetsFilterButtons.init().effectButton
    let interruptButton = CardSetsFilterButtons.init().interruptButton
    let locationButton = CardSetsFilterButtons.init().locationButton
    let objectiveButton = CardSetsFilterButtons.init().objectiveButton
    let defensiveShieldButton = CardSetsFilterButtons.init().defensiveShieldButton
    let admiralsOrderButton = CardSetsFilterButtons.init().admiralsOrderButton
    
    let cardTypeStackView1 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardTypeStackView2 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardTypeStackView3 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardTypeStackView4 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    
    let cardTypeContainerStackView = VerticalStackView(arrangedSubviews: [], spacing: 2)
    
    
    //MARK: - Card Sets Buttons
    let cardSetsTitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "ArialRoundedMTBold", size: 30)
        label.textColor = .white
        label.text = "Sets:"
        return label
    }()
    
    let premiereButton = CardSetsButtons.init().premiereButton
    let premiere2PlayerButton = CardSetsButtons.init().premiere2PlayerButton
    let aNewHopeButton = CardSetsButtons.init().aNewHopeButton
    let jediPackButton = CardSetsButtons.init().jediPackButton
    let hothButton = CardSetsButtons.init().hothButton
    let esb2PlayerButton = CardSetsButtons.init().esb2PlayerButton
    let rlpButton = CardSetsButtons.init().rlpButton
    let dagobahButton = CardSetsButtons.init().dagobahButton
    let cloudCityButton = CardSetsButtons.init().cloudCityButton
    let otsdButton = CardSetsButtons.init().otsdButton
    let jabbasPalaceButton = CardSetsButtons.init().jabbasPalaceButton
    let enhancedPremiereButton = CardSetsButtons.init().enhancedPremiereButton
    let specialEditionButton = CardSetsButtons.init().specialEditionButton
    let eccButton = CardSetsButtons.init().eccButton
    let endorButton = CardSetsButtons.init().endorButton
    let ejpButton = CardSetsButtons.init().ejpButton
    let jpsdButton = CardSetsButtons.init().jpsdButton
    let deathStar2Button = CardSetsButtons.init().deathStar2Button
    let reflections2Button = CardSetsButtons.init().reflections2Button
    let thirdAnthologyButton = CardSetsButtons.init().thirdAnthologyButton
    let tatooineButton = CardSetsButtons.init().tatooineButton
    let coruscantButton = CardSetsButtons.init().coruscantButton
    let theedPalaceButton = CardSetsButtons.init().theedPalaceButton
    let reflections3Button = CardSetsButtons.init().reflections3Button
    
    //MARK: - Card Sets Stack Views
    let cardSetsStackView1 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView2 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView3 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView4 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView5 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView6 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView7 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    let cardSetsStackView8 = HorizontalStackView(arrangedSubViews: [], spacing: 2)
    
    let cardSetsContainerStackView = VerticalStackView(arrangedSubviews: [], spacing: 2)
    
    @objc func handleHideTabBar() {
        if self.tabBarHiddenButtontapped == false {
            self.hideTabBarButton.setImage(#imageLiteral(resourceName: "Show Tab Bar Icon 3"), for: .normal)
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
                self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height
            }, completion: { (_) in
                self.tabBarHiddenButtontapped = true
            })
        }
        
        if self.tabBarHiddenButtontapped == true {
            self.hideTabBarButton.setImage(#imageLiteral(resourceName: "Hide Tab Bar Button"), for: .normal)
            
            UIView.animate(withDuration: 0.7, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: .curveEaseOut, animations: {
                if let tabBarFrame = self.tabBarController?.tabBar.frame {
                    self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height - tabBarFrame.height
                }
            }, completion: { (_) in
                self.tabBarHiddenButtontapped = false
            })
        }
    }
    
    //MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        setupCollectionView()
        
        [customNavigationView, hamburgerIcon, shareOptionsIcon, setLabel, hideTabBarButton, collectionView, filterOptionsView, imageName, filterOptionsViewUpArrow, menuView, cancelMenuViewButton, cardSideTitleLabel, cardSideContainerStackView, cardTypeTitleLabel, cardTypeStackView1, cardTypeStackView2, cardTypeStackView3, cardTypeStackView4, cardTypeContainerStackView, cardSetsTitleLabel, cardSetsStackView1, cardSetsStackView2, cardSetsStackView3, cardSetsStackView4, cardSetsStackView5, cardSetsStackView6, cardSetsStackView7, cardSetsStackView8, cardSetsContainerStackView].forEach { view.addSubview($0) }
        
        setupCustomNavigationView()
        
        collectionView.frame = CGRect(x: 0, y: 175, width: view.frame.width, height: view.frame.height - 265)
        
        setupCardOptionsView()
        setupHamburgerIconView()
        setupCardSetFilterStackViews()
        setupCardSetFilterButtonsSelectors()
        setupCardSetsButtonsSelectors()
        setupCardSetsStackViews()
        
        //MARK: - API Call
        endpoint = CardSetsEndpoint.jabbasPalaceSealedDeck.description
        selectedEndpoint = endpoint
        
        fetchCards(with: "https://swccgdb.com/api/public/cards/\(endpoint).json")
        
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector:#selector(appMovedToForeground), name: UIApplication.willEnterForegroundNotification, object: nil)
        
    }
    
    @objc func appMovedToForeground() {
        if tabBarHiddenButtontapped == true {
            self.tabBarController?.tabBar.frame.origin.y = self.view.frame.size.height
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    //MARK: - JSON Fetch Code
    fileprivate func fetchJSON(with url: String, completion: @escaping (Result<[Card], Error>) -> Void) {
        
        let urlString = url
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            if let error = error {
                completion(.failure(error))
                return
            }
            
            //success
            do {
                let cards = try JSONDecoder().decode([Card].self, from: data!)
                completion(.success(cards))
            } catch let jsonError {
                completion(.failure(jsonError))
            }
            }.resume()
        
    }
    
    fileprivate func fetchCards(with url: String) {
        self.loadingImagesView()
        self.collectionView.isUserInteractionEnabled = false
        
        fetchJSON(with: url) { (result) in
            
            switch result {
            case .success(let cards):
                print("success")
                cards.forEach({ (card) in
                    self.arrayOfCards.append(card)
                    
                    DispatchQueue.main.async {
                        self.dataSource.updateData(self.arrayOfCards)
                        self.collectionView.reloadData()
                        self.boxView.removeFromSuperview()
                        
                        self.imageName.text = self.arrayOfCards[0].name
                        self.setLabel.text = self.arrayOfCards[0].set
                        self.collectionView.isUserInteractionEnabled = true
                    }
                })
            case .failure(let error):
                print("Failed to fetch cards:", error)
            }
        }
    }
    
    
    
    //MARK: - Setup Views
    fileprivate func setupCollectionView() {
        self.collectionView.dataSource = dataSource
        self.collectionView.delegate = self
        self.collectionView.register(CardCell.self, forCellWithReuseIdentifier: CardCell.reuseIdentifier)
    }
    
    fileprivate func setupCustomNavigationView() {
        customNavigationView.anchor(top: view.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 120))
        
        hamburgerIcon.anchor(top: nil, leading: customNavigationView.leadingAnchor, bottom: customNavigationView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 20, bottom: 15, right: 0), size: .init(width: 50, height: 40))
        
        shareOptionsIcon.anchor(top: nil, leading: nil, bottom: customNavigationView.bottomAnchor, trailing: customNavigationView.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 15, right: 20), size: .init(width: 50, height: 15))
        
        setLabel.anchor(top: nil, leading: nil, bottom: customNavigationView.bottomAnchor, trailing: nil, padding: .init(top: 0, left: 0, bottom: 4, right: 0), size: .init(width: 140, height: 70))
        setLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        hideTabBarButton.anchor(top: customNavigationView.bottomAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 37))
        
    }
    
    fileprivate func setupCardOptionsView() {
        let yValue = view.frame.height - 70
        filterOptionsView.frame = CGRect(x: 0, y: yValue, width: view.frame.width, height: view.frame.height - 120)
        imageName.frame = CGRect(x: 30, y: yValue + 5, width: 300, height: 35)
        filterOptionsViewUpArrow.frame = CGRect(x: view.frame.width - 57, y: view.frame.height - 62, width: 32, height: 28)
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(handleFilterOptionsViewTap))
        filterOptionsView.addGestureRecognizer(tap)
    }
    
    fileprivate func setupHamburgerIconView() {
        menuView.frame = CGRect(x: 0, y: 120, width: -view.frame.width, height: view.frame.height)
        cancelMenuViewButton.frame = CGRect(x: -70, y: 140, width: 40, height: 40)
    }
    
    fileprivate func setupCardSetFilterStackViews() {
        [anyButton, darkSideButton, lightSideButton].forEach { cardSideContainerStackView.addArrangedSubview($0) }
        
        cardSideTitleLabel.frame = CGRect(x: 30, y: view.frame.height + 40, width: view.frame.width - 60, height: 40)
        cardSideContainerStackView.frame = CGRect(x: 30, y: view.frame.height + 100, width: view.frame.width - 60, height: 50)
        cardSideContainerStackView.distribution = .fillEqually
        cardSideContainerStackView.backgroundColor = .lightGray
        
        [anyButton2, characterButton, weaponButton].forEach { cardTypeStackView1.addArrangedSubview($0) }
        [vehicleButton, starshipButton, effectButton].forEach { cardTypeStackView2.addArrangedSubview($0) }
        [interruptButton, locationButton, objectiveButton].forEach { cardTypeStackView3.addArrangedSubview($0) }
        [defensiveShieldButton, deviceButton, admiralsOrderButton].forEach { cardTypeStackView4.addArrangedSubview($0) }
        
        [cardTypeStackView1, cardTypeStackView2, cardTypeStackView3, cardTypeStackView4].forEach { cardTypeContainerStackView.addArrangedSubview($0) }
        
        cardTypeTitleLabel.frame = CGRect(x: 30, y: view.frame.height + 180, width: view.frame.width - 60, height: 40)
        cardTypeContainerStackView.frame = CGRect(x: 30, y: view.frame.height + 240, width: view.frame.width - 60, height: 210)
        cardTypeContainerStackView.distribution = .fillEqually
        cardTypeContainerStackView.backgroundColor = .lightGray
    }
    
    fileprivate func setupCardSetsStackViews() {
        
        [premiereButton, premiere2PlayerButton, aNewHopeButton].forEach { cardSetsStackView1.addArrangedSubview($0) }
        [jediPackButton, hothButton, esb2PlayerButton].forEach { cardSetsStackView2.addArrangedSubview($0) }
        [rlpButton, dagobahButton, cloudCityButton].forEach { cardSetsStackView3.addArrangedSubview($0) }
        [otsdButton, jabbasPalaceButton, enhancedPremiereButton].forEach { cardSetsStackView4.addArrangedSubview($0) }
        [specialEditionButton, eccButton, endorButton].forEach { cardSetsStackView5.addArrangedSubview($0) }
        [ejpButton, jpsdButton, deathStar2Button].forEach { cardSetsStackView6.addArrangedSubview($0) }
        [reflections2Button, thirdAnthologyButton, tatooineButton].forEach { cardSetsStackView7.addArrangedSubview($0) }
        [coruscantButton, theedPalaceButton, reflections3Button].forEach { cardSetsStackView8.addArrangedSubview($0) }
        
        [cardSetsStackView1, cardSetsStackView2, cardSetsStackView3, cardSetsStackView4, cardSetsStackView5, cardSetsStackView6, cardSetsStackView7, cardSetsStackView8].forEach { cardSetsContainerStackView.addArrangedSubview($0) }
        
        cardSetsTitleLabel.frame = CGRect(x: -view.frame.width + 30, y: 180, width: view.frame.width - 60, height: 30)
        cardSetsContainerStackView.frame = CGRect(x: -view.frame.width + 30, y: 230, width: view.frame.width - 60, height: 425)
        cardSetsContainerStackView.backgroundColor = .lightGray
        cardSetsContainerStackView.distribution = .fillEqually
    }
    
    fileprivate func setupCardSetFilterButtonsSelectors() {
        anyButton.addTarget(self, action: #selector(handleAnyButton), for: .touchUpInside)
        darkSideButton.addTarget(self, action: #selector(handleDarkSideButton), for: .touchUpInside)
        lightSideButton.addTarget(self, action: #selector(handleLightSideButton), for: .touchUpInside)
        
        anyButton2.addTarget(self, action: #selector(handleAnyButton2), for: .touchUpInside)
        characterButton.addTarget(self, action: #selector(handleCharacterButton), for: .touchUpInside)
        weaponButton.addTarget(self, action: #selector(handleWeaponButton), for: .touchUpInside)
        deviceButton.addTarget(self, action: #selector(handleDeviceButton), for: .touchUpInside)
        effectButton.addTarget(self, action: #selector(handleEffectButton), for: .touchUpInside)
        interruptButton.addTarget(self, action: #selector(handleInterruptButton), for: .touchUpInside)
        starshipButton.addTarget(self, action: #selector(handleStarshipButton), for: .touchUpInside)
        vehicleButton.addTarget(self, action: #selector(handleVehicleButton), for: .touchUpInside)
        objectiveButton.addTarget(self, action: #selector(handleObjectiveButtion), for: .touchUpInside)
        admiralsOrderButton.addTarget(self, action: #selector(handleAdmiralsOrdersButton), for: .touchUpInside)
        defensiveShieldButton.addTarget(self, action: #selector(handleDefensiveShieldButton), for: .touchUpInside)
        locationButton.addTarget(self, action: #selector(handleLocationButton), for: .touchUpInside)
    }
    
    fileprivate func setupCardSetsButtonsSelectors() {
        premiereButton.addTarget(self, action: #selector(handlePremiere), for: .touchUpInside)
        premiere2PlayerButton.addTarget(self, action: #selector(handlePremiere2Player), for: .touchUpInside)
        aNewHopeButton.addTarget(self, action: #selector(handleANewHope), for: .touchUpInside)
        jediPackButton.addTarget(self, action: #selector(handleJediPack), for: .touchUpInside)
        hothButton.addTarget(self, action: #selector(handleHoth), for: .touchUpInside)
        esb2PlayerButton.addTarget(self, action: #selector(handleESB2Player), for: .touchUpInside)
        rlpButton.addTarget(self, action: #selector(handleRLP), for: .touchUpInside)
        dagobahButton.addTarget(self, action: #selector(handleDagobah), for: .touchUpInside)
        cloudCityButton.addTarget(self, action: #selector(handleCloudCity), for: .touchUpInside)
        otsdButton.addTarget(self, action: #selector(handleOTSD), for: .touchUpInside)
        jabbasPalaceButton.addTarget(self, action: #selector(handleJabbasPalace), for: .touchUpInside)
        enhancedPremiereButton.addTarget(self, action: #selector(handleEnhancedPremiere), for: .touchUpInside)
        specialEditionButton.addTarget(self, action: #selector(handleSpecialEdition), for: .touchUpInside)
        eccButton.addTarget(self, action: #selector(handleECC), for: .touchUpInside)
        endorButton.addTarget(self, action: #selector(handleEndor), for: .touchUpInside)
        ejpButton.addTarget(self, action: #selector(handleEJP), for: .touchUpInside)
        jpsdButton.addTarget(self, action: #selector(handleJPSD), for: .touchUpInside)
        deathStar2Button.addTarget(self, action: #selector(handleDeathStar2), for: .touchUpInside)
        reflections2Button.addTarget(self, action: #selector(handleReflections2), for: .touchUpInside)
        thirdAnthologyButton.addTarget(self, action: #selector(handleThirdAnthology), for: .touchUpInside)
        tatooineButton.addTarget(self, action: #selector(handleTatooine), for: .touchUpInside)
        coruscantButton.addTarget(self, action: #selector(handleCoruscant), for: .touchUpInside)
        theedPalaceButton.addTarget(self, action: #selector(handleTheedPalace), for: .touchUpInside)
        reflections3Button.addTarget(self, action: #selector(handleReflections3), for: .touchUpInside)
    }
    
    private func loadingImagesView() {
           boxView.frame = CGRect(x: (view.frame.width - 200) / 2, y: (view.frame.height - 100) / 2, width: 200, height: 100)
           boxView.backgroundColor = .darkGray
           boxView.alpha = 0.8
           boxView.layer.cornerRadius = 10
           
           let activityView = UIActivityIndicatorView(style: .whiteLarge)
           activityView.frame = CGRect(x: 0, y: (self.boxView.frame.height - 60) / 2, width: 60, height: 60)
           activityView.startAnimating()
           
           let textLabel = UILabel(frame: CGRect(x: 70, y: (self.boxView.frame.height - 60) / 2, width: 120, height: 60))
           textLabel.textColor = .white
           textLabel.text = "Loading"
           textLabel.font = UIFont(name: "ArialRoundedMTBold", size: 25)
           
           boxView.addSubview(activityView)
           boxView.addSubview(textLabel)
           
           view.addSubview(boxView)
       }
    
}

//MARK: - Card Side Filter Button Selectors
extension CardDataBaseViewController {
    @objc func handleAnyButton() {
        self.selectedSide = .any
        resetCardSideFilterButtons()
        self.anyButton.setImage(#imageLiteral(resourceName: "Any Button Selected"), for: .normal)
    }
    
    @objc func handleLightSideButton() {
        self.selectedSide = .light
        resetCardSideFilterButtons()
        self.lightSideButton.setImage(#imageLiteral(resourceName: "Light Button Selected"), for: .normal)
    }
    
    @objc func handleDarkSideButton() {
        self.selectedSide = .dark
        resetCardSideFilterButtons()
        self.darkSideButton.setImage(#imageLiteral(resourceName: "Dark Button Selected"), for: .normal)
    }
    
    //MARK: - Card Type Filter Button Selectors
    @objc func handleAnyButton2() {
        self.selectedType = nil
        resetCardTypeButtons()
        self.anyButton2.setImage(#imageLiteral(resourceName: "Any Button 2 Selected"), for: .normal)
    }
    
    @objc func handleCharacterButton() {
        self.selectedType = .character
        resetCardTypeButtons()
        self.characterButton.setImage(#imageLiteral(resourceName: "Character Button Selected"), for: .normal)
    }
    
    @objc func handleWeaponButton() {
        self.selectedType = .weapon
        resetCardTypeButtons()
        self.weaponButton.setImage(#imageLiteral(resourceName: "Weapon Button Selected"), for: .normal)
    }
    
    @objc func handleVehicleButton() {
        self.selectedType = .vehicle
        resetCardTypeButtons()
        self.vehicleButton.setImage(#imageLiteral(resourceName: "Vehicle Button Selected"), for: .normal)
    }
    
    @objc func handleStarshipButton() {
        self.selectedType = .starship
        resetCardTypeButtons()
        self.starshipButton.setImage(#imageLiteral(resourceName: "Starship Button Selected"), for: .normal)
    }
    
    @objc func handleEffectButton() {
        self.selectedType = .effect
        resetCardTypeButtons()
        self.effectButton.setImage(#imageLiteral(resourceName: "Effect Button Selected"), for: .normal)
    }
    
    @objc func handleInterruptButton() {
        self.selectedType = .interrupt
        resetCardTypeButtons()
        self.interruptButton.setImage(#imageLiteral(resourceName: "Interrupt Button Selected"), for: .normal)
    }
    
    @objc func handleLocationButton() {
        self.selectedType = .location
        resetCardTypeButtons()
        self.locationButton.setImage(#imageLiteral(resourceName: "Location Button Selected"), for: .normal)
    }
    
    @objc func handleObjectiveButtion() {
        self.selectedType = .objective
        resetCardTypeButtons()
        self.objectiveButton.setImage(#imageLiteral(resourceName: "Objective Button Selected"), for: .normal)
    }
    
    @objc func handleDefensiveShieldButton() {
        self.selectedType = .defensiveShield
        resetCardTypeButtons()
        self.defensiveShieldButton.setImage(#imageLiteral(resourceName: "Defensive Shield Button Selected"), for: .normal)
    }
    
    @objc func handleDeviceButton() {
        self.selectedType = .device
        resetCardTypeButtons()
        self.deviceButton.setImage(#imageLiteral(resourceName: "Device Button Selected"), for: .normal)
    }
    
    @objc func handleAdmiralsOrdersButton() {
        self.selectedType = .admiralsOrder
        resetCardTypeButtons()
        self.admiralsOrderButton.setImage(#imageLiteral(resourceName: "Admiral Button Selected"), for: .normal)
    }
    
    
}

//MARK: - Card Sets Button Selectors
extension CardDataBaseViewController {
    
    @objc func handlePremiere() {
        resetCardSetsButtons()
        premiereButton.setImage(#imageLiteral(resourceName: "Premiere Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.premiere.description
    }
    
    @objc func handleANewHope() {
        resetCardSetsButtons()
        aNewHopeButton.setImage(#imageLiteral(resourceName: "A New Hope Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.aNewHope.description
    }
    
    @objc func handlePremiere2Player() {
        resetCardSetsButtons()
        premiere2PlayerButton.setImage(#imageLiteral(resourceName: "Premiere 2Player Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.premiere2player.description
    }
    
    @objc func handleJediPack() {
        resetCardSetsButtons()
        jediPackButton.setImage(#imageLiteral(resourceName: "Jedi Pack Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.jediPack.description
    }
    
    @objc func handleHoth() {
        resetCardSetsButtons()
        hothButton.setImage(#imageLiteral(resourceName: "Hoth Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.hoth.description
    }
    
    @objc func handleESB2Player() {
        resetCardSetsButtons()
        esb2PlayerButton.setImage(#imageLiteral(resourceName: "ESB 2Player Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.empireStrikesBack2player.description
    }
    
    @objc func handleRLP() {
        resetCardSetsButtons()
        rlpButton.setImage(#imageLiteral(resourceName: "RLP Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.rebelLeadersPack.description
    }
    
    @objc func handleDagobah() {
        resetCardSetsButtons()
        dagobahButton.setImage(#imageLiteral(resourceName: "Dagobah Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.dagobah.description
    }
    
    @objc func handleCloudCity() {
        resetCardSetsButtons()
        cloudCityButton.setImage(#imageLiteral(resourceName: "Cloud City Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.cloudCity.description
    }
    
    @objc func handleOTSD() {
        resetCardSetsButtons()
        otsdButton.setImage(#imageLiteral(resourceName: "OTSD Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.officialTournamentSealedDeck.description
    }
    
    @objc func handleJabbasPalace() {
        resetCardSetsButtons()
        jabbasPalaceButton.setImage(#imageLiteral(resourceName: "Jabbas Palace Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.jabbasPalace.description
    }
    
    @objc func handleEnhancedPremiere() {
        resetCardSetsButtons()
        enhancedPremiereButton.setImage(#imageLiteral(resourceName: "Enhanced Premiere Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.enhancedPremiere.description
    }
    
    @objc func handleSpecialEdition() {
        resetCardSetsButtons()
        specialEditionButton.setImage(#imageLiteral(resourceName: "Special Edition Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.specialEdition.description
    }
    
    @objc func handleECC() {
        resetCardSetsButtons()
        eccButton.setImage(#imageLiteral(resourceName: "ECC Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.enhancedCloudCity.description
    }
    
    @objc func handleEndor() {
        resetCardSetsButtons()
        endorButton.setImage(#imageLiteral(resourceName: "Endor Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.endor.description
    }
    
    @objc func handleEJP() {
        resetCardSetsButtons()
        ejpButton.setImage(#imageLiteral(resourceName: "EJP Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.enhancedJabbasPalace.description
    }
    
    @objc func handleJPSD() {
        resetCardSetsButtons()
        jpsdButton.setImage(#imageLiteral(resourceName: "JPSD Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.jabbasPalaceSealedDeck.description
    }
    
    @objc func handleDeathStar2() {
        resetCardSetsButtons()
        deathStar2Button.setImage(#imageLiteral(resourceName: "Death Star 2 Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.deathStar2.description
    }
    
    @objc func handleReflections2() {
        resetCardSetsButtons()
        reflections2Button.setImage(#imageLiteral(resourceName: "Reflections 2 Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.reflections2.description
    }
    
    @objc func handleThirdAnthology() {
        resetCardSetsButtons()
        thirdAnthologyButton.setImage(#imageLiteral(resourceName: "Third Anthology Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.thirdAnthology.description
    }
    
    @objc func handleTatooine() {
        resetCardSetsButtons()
        tatooineButton.setImage(#imageLiteral(resourceName: "Tatooine Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.tatooine.description
    }
    
    @objc func handleCoruscant() {
        resetCardSetsButtons()
        coruscantButton.setImage(#imageLiteral(resourceName: "Coruscant Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.coruscant.description
    }
    
    @objc func handleTheedPalace() {
        resetCardSetsButtons()
        theedPalaceButton.setImage(#imageLiteral(resourceName: "Theed Palace Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.theedPalace.description
    }
    
    @objc func handleReflections3() {
        resetCardSetsButtons()
        reflections3Button.setImage(#imageLiteral(resourceName: "Reflections 3 Selected Button"), for: .normal)
        self.endpoint = CardSetsEndpoint.reflections3.description
    }
    
    //MARK: - Reset Button Images
    fileprivate func resetCardSideFilterButtons() {
        self.anyButton.setImage(#imageLiteral(resourceName: "Any Button "), for: .normal)
        self.lightSideButton.setImage(#imageLiteral(resourceName: "Light Button "), for: .normal)
        self.darkSideButton.setImage(#imageLiteral(resourceName: "Dark Button"), for: .normal)
    }
    
    func resetCardTypeButtons() {
        self.anyButton2.setImage(#imageLiteral(resourceName: "Any Button 2"), for: .normal)
        self.characterButton.setImage(#imageLiteral(resourceName: "Character Button"), for: .normal)
        self.weaponButton.setImage(#imageLiteral(resourceName: "Weapon Button"), for: .normal)
        self.vehicleButton.setImage(#imageLiteral(resourceName: "Vehicle Button"), for: .normal)
        self.starshipButton.setImage(#imageLiteral(resourceName: "Starship Button"), for: .normal)
        self.effectButton.setImage(#imageLiteral(resourceName: "Effect Button"), for: .normal)
        self.interruptButton.setImage(#imageLiteral(resourceName: "Interrupt Button"), for: .normal)
        self.locationButton.setImage(#imageLiteral(resourceName: "Location Button"), for: .normal)
        self.objectiveButton.setImage(#imageLiteral(resourceName: "Objective Button"), for: .normal)
        self.defensiveShieldButton.setImage(#imageLiteral(resourceName: "Defensive Shield Button"), for: .normal)
        self.deviceButton.setImage(#imageLiteral(resourceName: "Device Button"), for: .normal)
        self.admiralsOrderButton.setImage(#imageLiteral(resourceName: "Admiral Button"), for: .normal)
    }
    
    fileprivate func resetCardSetsButtons() {
        self.premiereButton.setImage(#imageLiteral(resourceName: "Premiere Button"), for: .normal)
        self.premiere2PlayerButton.setImage(#imageLiteral(resourceName: "Premiere 2Player Button"), for: .normal)
        self.aNewHopeButton.setImage(#imageLiteral(resourceName: "A New Hope Button"), for: .normal)
        self.jediPackButton.setImage(#imageLiteral(resourceName: "Jedi Pack Button"), for: .normal)
        self.hothButton.setImage(#imageLiteral(resourceName: "Hoth Button"), for: .normal)
        self.esb2PlayerButton.setImage(#imageLiteral(resourceName: "ESB 2Player Button"), for: .normal)
        self.rlpButton.setImage(#imageLiteral(resourceName: "RLP Button"), for: .normal)
        self.dagobahButton.setImage(#imageLiteral(resourceName: "Dagobah Button"), for: .normal)
        self.cloudCityButton.setImage(#imageLiteral(resourceName: "Cloud City Button"), for: .normal)
        self.otsdButton.setImage(#imageLiteral(resourceName: "OTSD Button"), for: .normal)
        self.jabbasPalaceButton.setImage(#imageLiteral(resourceName: "Jabbas Palace Button"), for: .normal)
        self.enhancedPremiereButton.setImage(#imageLiteral(resourceName: "Enhanced Premiere Button"), for: .normal)
        self.specialEditionButton.setImage(#imageLiteral(resourceName: "Special Edition Button"), for: .normal)
        self.eccButton.setImage(#imageLiteral(resourceName: "ECC Button"), for: .normal)
        self.endorButton.setImage(#imageLiteral(resourceName: "Endor Button"), for: .normal)
        self.ejpButton.setImage(#imageLiteral(resourceName: "EJP Button"), for: .normal)
        self.jpsdButton.setImage(#imageLiteral(resourceName: "JPSD Button"), for: .normal)
        self.deathStar2Button.setImage(#imageLiteral(resourceName: "Death Star 2 Button"), for: .normal)
        self.reflections2Button.setImage(#imageLiteral(resourceName: "Reflections 2 Button"), for: .normal)
        self.thirdAnthologyButton.setImage(#imageLiteral(resourceName: "Third Anthology Button"), for: .normal)
        self.tatooineButton.setImage(#imageLiteral(resourceName: "Tatooine Button"), for: .normal)
        self.coruscantButton.setImage(#imageLiteral(resourceName: "Coruscant Button"), for: .normal)
        self.theedPalaceButton.setImage(#imageLiteral(resourceName: "Theed Palace Button"), for: .normal)
        self.reflections3Button.setImage(#imageLiteral(resourceName: "Reflections 3 Button"), for: .normal)
    }
    
}

//MARK: - Navigation Button Functions
extension CardDataBaseViewController {
    
    @objc func handleHamburgerIcon() {
        
        self.shareOptionsIcon.isEnabled = false
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.menuView.frame = CGRect(x: 0, y: 120, width: self.view.frame.width, height: self.view.frame.height)
            self.cancelMenuViewButton.frame = CGRect(x: self.view.frame.width - 70, y: 140, width: 40, height: 40)
            
            self.cardSetsTitleLabel.frame = CGRect(x: 30, y: 180, width: self.view.frame.width - 60, height: 30)
            self.cardSetsContainerStackView.frame = CGRect(x: 30, y: 230, width: self.view.frame.width - 60, height: 425)
            
        }, completion: nil)
    }
    
    @objc func handleCancelHamburgerIconView() {
        
        if self.selectedEndpoint == self.endpoint {
            print("No API Call Needed")
        } else {
            self.arrayOfCards = []
            self.searchFilteredCardData = []
            
            DispatchQueue.main.async {
                self.fetchCards(with: "https://swccgdb.com/api/public/cards/\(self.endpoint).json")
            }
            self.selectedEndpoint = self.endpoint
            self.hamburgerIcon.isEnabled = false
        }
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
            
            self.menuView.frame = CGRect(x: 0, y: 120, width: -self.view.frame.width, height: self.view.frame.height)
            self.cancelMenuViewButton.frame = CGRect(x: -70, y: 140, width: 40, height: 40)
            
            self.cardSetsTitleLabel.frame = CGRect(x: -self.view.frame.width + 30, y: 180, width: self.view.frame.width - 60, height: 30)
            self.cardSetsContainerStackView.frame = CGRect(x: -self.view.frame.width + 30, y: 230, width: self.view.frame.width - 60, height: 425)
            
        }, completion: { (_) in
            self.shareOptionsIcon.isEnabled = true
            self.hamburgerIcon.isEnabled = true 
        })
    }
    
    //MARK: - Card Sets Filters Options View
    @objc func handleFilterOptionsViewTap() {
        
        self.hamburgerIcon.isEnabled = false
        self.shareOptionsIcon.isEnabled = false
        self.hideTabBarButton.isEnabled = false 
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            
            self.filterOptionsView.frame = CGRect(x: 0, y: 130, width: self.view.frame.width, height: self.view.frame.height - 100)
            self.imageName.frame = CGRect(x: 30, y: 135, width: 300, height: 35)
            self.filterOptionsViewUpArrow.frame = CGRect(x: self.view.frame.width - 57, y: 140, width: 32, height: 28)
            
            self.cardSideTitleLabel.frame = CGRect(x: 30, y: 240, width: self.view.frame.width - 60, height: 40)
            self.cardSideContainerStackView.frame = CGRect(x: 30, y: 300, width: self.view.frame.width - 60, height: 50)
            
            self.cardTypeTitleLabel.frame = CGRect(x: 30, y: 380, width: self.view.frame.width - 60, height: 40)
            self.cardTypeContainerStackView.frame = CGRect(x: 30, y: 440, width: self.view.frame.width - 60, height: 210)
            
            UIView.animate(withDuration: 0.5) {
                self.filterOptionsViewUpArrow.transform = CGAffineTransform(rotationAngle: .pi)
            }
        }, completion: { (_) in
            self.hasBeenTapped = true
        })
        
        
    }
    
    @objc func handleFilterOptionsUpArrow() {
        
        if self.hasBeenTapped == true {
            
            searchArrayOfCardsFilterLogic(with: arrayOfCards, ofSide: selectedSide, ofType: selectedType)
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseIn, animations: {
                
                self.filterOptionsView.frame = CGRect(x: 0, y: self.view.frame.height - 70, width: self.view.frame.width, height: self.view.frame.height - 100)
                self.imageName.frame = CGRect(x: 30, y: self.view.frame.height - 65, width: 300, height: 35)
                
                self.cardSideTitleLabel.frame = CGRect(x: 30, y: self.view.frame.height + 40, width: self.view.frame.width - 60, height: 40)
                self.cardSideContainerStackView.frame = CGRect(x: 30, y: self.view.frame.height + 100, width: self.view.frame.width - 60, height: 50)
                
                self.cardTypeTitleLabel.frame = CGRect(x: 30, y: self.view.frame.height + 180, width: self.view.frame.width - 60, height: 40)
                self.cardTypeContainerStackView.frame = CGRect(x: 30, y: self.view.frame.height + 240, width: self.view.frame.width - 60, height: 210)
                
                self.filterOptionsViewUpArrow.frame = CGRect(x: self.view.frame.width - 57, y: self.view.frame.height - 62, width: 32, height: 28)
                
                UIView.animate(withDuration: 0.5) {
                    self.filterOptionsViewUpArrow.transform = CGAffineTransform.identity
                }
                
            }, completion: { (_) in
                self.hasBeenTapped = false
                self.hamburgerIcon.isEnabled = true
                self.shareOptionsIcon.isEnabled = true
                self.hideTabBarButton.isEnabled = true
            })
        }
        
        if self.hasBeenTapped == false {
            
            self.hamburgerIcon.isEnabled = false
            self.shareOptionsIcon.isEnabled = false
            self.hideTabBarButton.isEnabled = false
            
            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                self.filterOptionsView.frame = CGRect(x: 0, y: 130, width: self.view.frame.width, height: self.view.frame.height - 100)
                self.imageName.frame = CGRect(x: 30, y: 135, width: 300, height: 35)
                
                self.cardSideTitleLabel.frame = CGRect(x: 30, y: 240, width: self.view.frame.width - 60, height: 40)
                self.cardSideContainerStackView.frame = CGRect(x: 30, y: 300, width: self.view.frame.width - 60, height: 50)
                
                self.cardTypeTitleLabel.frame = CGRect(x: 30, y: 380, width: self.view.frame.width - 60, height: 40)
                self.cardTypeContainerStackView.frame = CGRect(x: 30, y: 440, width: self.view.frame.width - 60, height: 210)
                
                self.filterOptionsViewUpArrow.frame = CGRect(x: self.view.frame.width - 57, y: 140, width: 32, height: 28)
                
                UIView.animate(withDuration: 0.5) {
                    self.filterOptionsViewUpArrow.transform = CGAffineTransform(rotationAngle: .pi)
                }
                
            }, completion: { (_) in
                self.hasBeenTapped = true
            })
        }
        
    }
    
    //MARK: - action sheet functions
    @objc func handleShareOptionsIcon() {
        
        let actionSheetController: UIAlertController = UIAlertController(title: "Card Options:", message: nil, preferredStyle: .actionSheet)
        
        let shareAction: UIAlertAction = UIAlertAction(title: "Share", style: .default) { action -> Void in
            
            if self.searchFilteredCardData.count > 0 {
                self.retrieveCardImageData(from: self.searchFilteredCardData)
                
                let item = [self.cardImage]
                let ac = UIActivityViewController(activityItems: item, applicationActivities: nil)
                self.present(ac, animated: true)
            }
            
            if self.searchFilteredCardData.count == 0 {
                self.retrieveCardImageData(from: self.arrayOfCards)
                
                let item = [self.cardImage]
                let ac = UIActivityViewController(activityItems: item, applicationActivities: nil)
                self.present(ac, animated: true)
            }
        }
        
        let saveToPhotosAction: UIAlertAction = UIAlertAction(title: "Save To Photos", style: .default) { action -> Void in
            
            if self.searchFilteredCardData.count > 0 {
                self.retrieveCardImageData(from: self.searchFilteredCardData)
                let image = self.cardImage
                
                UIImageWriteToSavedPhotosAlbum(image, self, #selector(self.image(_:didFinishSavingWithError:contextInfo:)), nil)
            }
            
            if self.searchFilteredCardData.count == 0 {
                self.retrieveCardImageData(from: self.arrayOfCards)
                let image = self.cardImage

                UIImageWriteToSavedPhotosAlbum(image, self, #selector(self.image(_:didFinishSavingWithError:contextInfo:)), nil)
            }
        }
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "Cancel", style: .cancel) { action -> Void in }
        
        actionSheetController.addAction(shareAction)
        actionSheetController.addAction(saveToPhotosAction)
        actionSheetController.addAction(cancelAction)
        
        present(actionSheetController, animated: true) {
        }
        
    }
    
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
        if let error = error {
            // we got back an error!
            let ac = UIAlertController(title: "Save error", message: error.localizedDescription, preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        } else {
            let ac = UIAlertController(title: "Saved!", message: "Your card image has been saved to your photos.", preferredStyle: .alert)
            ac.addAction(UIAlertAction(title: "OK", style: .default))
            present(ac, animated: true)
        }
    }
    
    fileprivate func retrieveCardImageData(from cardArray: [Card]) {
        let indexPath = self.selectedIndexPath

        let cardUrl = cardArray[indexPath].imageUrl
        let url = URL(string: cardUrl)
        if let data = try? Data(contentsOf: url!) {
            if let image: UIImage = UIImage(data: data) {
                self.cardImage = image
            } else {
                self.displayAlertError(with: "Error", message: "API Not Responding, please reload app")
            }
        }
        
    }
    
    func displayAlertError(with title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        alert.present(alert, animated: true, completion: nil)
    }
    
    
}



//MARK: - Collection View Delegate
extension CardDataBaseViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.width
        let height = self.collectionView.frame.height
        
        return CGSize(width: width, height: height)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! CardCell
        
        if self.searchFilteredCardData.count == 0 {
            let selectedCard = self.arrayOfCards[indexPath.item]
            
            if selectedCard.imageUrl2 != nil {
                print("this card is an objective")
                if let imageUrl = selectedCard.imageUrl2 {
                    if self.objectiveHasBeenTapped == false {
                        cell.cardImage.loadImage(urlString: imageUrl)
                        self.objectiveHasBeenTapped = true
                    } else if self.objectiveHasBeenTapped == true {
                        cell.cardImage.loadImage(urlString: selectedCard.imageUrl)
                        self.objectiveHasBeenTapped = false
                    }
                }
            }
        }
        
        if self.searchFilteredCardData.count > 0 {
            let selectedCard = self.searchFilteredCardData[indexPath.item]
            
            if selectedCard.imageUrl2 != nil {
                print("this card is an objective")
                if let imageUrl = selectedCard.imageUrl2 {
                    if self.objectiveHasBeenTapped == false {
                        cell.cardImage.loadImage(urlString: imageUrl)
                        self.objectiveHasBeenTapped = true
                    } else if self.objectiveHasBeenTapped == true {
                        cell.cardImage.loadImage(urlString: selectedCard.imageUrl)
                        self.objectiveHasBeenTapped = false
                    }
                }
            }
        }
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        self.collectionView.scrollToNearestVisibleCollectionViewCell()
        
        var visibleRect = CGRect()
        
        visibleRect.origin = collectionView.contentOffset
        visibleRect.size = collectionView.bounds.size
        
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        
        guard let indexPath = collectionView.indexPathForItem(at: visiblePoint) else { return }
        
        if searchFilteredCardData.count == 0 {
            self.selectedIndexPath = indexPath.row
            self.imageName.text = self.arrayOfCards[selectedIndexPath].name
        }
        
        if searchFilteredCardData.count > 0 {
            self.selectedIndexPath = indexPath.row
            self.imageName.text = searchFilteredCardData[selectedIndexPath].name
        }
        
        self.objectiveHasBeenTapped = false
        
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        self.collectionView.scrollToNearestVisibleCollectionViewCell()
        
        var visibleRect = CGRect()
        
        visibleRect.origin = collectionView.contentOffset
        visibleRect.size = collectionView.bounds.size
        
        let visiblePoint = CGPoint(x: visibleRect.midX, y: visibleRect.midY)
        
        guard let indexPath = collectionView.indexPathForItem(at: visiblePoint) else { return }
        
        if searchFilteredCardData.count == 0 {
            self.selectedIndexPath = indexPath.row
            self.imageName.text = self.arrayOfCards[selectedIndexPath].name
        }
        
        if searchFilteredCardData.count > 0 {
            self.selectedIndexPath = indexPath.row
            self.imageName.text = searchFilteredCardData[selectedIndexPath].name
        }
        
        self.objectiveHasBeenTapped = false
    }
}

//MARK: - Search Filter Logic
extension CardDataBaseViewController {
    
    func searchArrayOfCardsFilterLogic(with data: [Card], ofSide: CardSide?, ofType: CardType?) {
        
        self.searchFilteredCardData = []
        var copyOfArrayOfCards: [Card] = data
        var sideFilter: [Card] = []
        var typeFilter: [Card] = []
        
        if ofSide == .any && ofType == .any {
            self.dataSource.updateData(self.arrayOfCards)
            self.collectionView.reloadData()
            return
        }
        
        if let side = ofSide {
            if side == .any {
                copyOfArrayOfCards = data
            } else {
                sideFilter = copyOfArrayOfCards.filter { $0.side == side.description }
                copyOfArrayOfCards = sideFilter
            }
        }
        
        if let type = ofType {
            if type == .any {
                copyOfArrayOfCards = sideFilter
            } else {
                typeFilter = copyOfArrayOfCards.filter { $0.type == type.description }
                copyOfArrayOfCards = typeFilter
            }
        }
        
        self.searchFilteredCardData = copyOfArrayOfCards
        self.dataSource.updateData(self.searchFilteredCardData)
        self.collectionView.reloadData()
        
        if searchFilteredCardData.count == 0 {
            self.imageName.text = "NO SEARCH RESULTS FOUND"
        }
        
        if searchFilteredCardData.count > 0 {
            if selectedIndexPath > searchFilteredCardData.count - 1 {
                selectedIndexPath = searchFilteredCardData.count - 1
                self.imageName.text = self.searchFilteredCardData[selectedIndexPath].name
            } else {
                self.imageName.text = self.searchFilteredCardData[selectedIndexPath].name
            }
        }
    }
    
    
}

