//
//  StoryViewController.swift
//  JohnsonDoll
//
//  Created by Joe Wong on 10/4/18.
//  Copyright © 2018 Joe Wong. All rights reserved.
//

import UIKit
import AVFoundation

class StoryViewController: UIViewController {
    
    var lunchPlayerOne = AVAudioPlayer()
    var lunchPlayerTwo = AVAudioPlayer()
    var lunchPlayerThree = AVAudioPlayer()
    var vacationPlayerOne = AVAudioPlayer()
    var vacationPlayerTwo = AVAudioPlayer()
    var vacationPlayerThree = AVAudioPlayer()
    var holidaysPlayerOne = AVAudioPlayer()
    var holidaysPlayerTwo = AVAudioPlayer()
    var holidaysPlayerThree = AVAudioPlayer()
    var holidaysPlayerFour = AVAudioPlayer()
    var islandsPlayerOne = AVAudioPlayer()
    var islandsPlayerTwo = AVAudioPlayer()
    var islandsPlayerThree = AVAudioPlayer()
    
    var lunchOneSelected: Bool = false
    var lunchTwoSelected: Bool = false
    var lunchThreeSelected: Bool = false
    var vacationOneSelected: Bool = false
    var vacationTwoSelected: Bool = false
    var vacationThreeSelected: Bool = false
    var holidaysOneSelected: Bool = false
    var holidaysTwoSelected: Bool = false
    var holidaysThreeSelected: Bool = false
    var holidaysFourSelected: Bool = false
    var islandsOneSelected: Bool = false
    var islandsTwoSelected: Bool = false
    var islandsThreeSelected: Bool = false
    
    var lunchOneNum: String = "0.0"
    var lunchTwoNum: String = "0.0"
    var lunchThreeNum: String = "0.0"
    var vacationOneNum: String = "0.0"
    var vacationTwoNum: String = "0.0"
    var vacationThreeNum: String = "0.0"
    var holidaysOneNum: String = "0.0"
    var holidaysTwoNum: String = "0.0"
    var holidaysThreeNum: String = "0.0"
    var holidaysFourNum: String = "0.0"
    var islandsOneNum: String = "0.0"
    var islandsTwoNum: String = "0.0"
    var islandsThreeNum: String = "0.0"
    
    @IBOutlet var lunchFoods: [UIButton]!
    @IBOutlet var lunchOneBTN: UIButton!
    
    @IBOutlet var lunchTastes: [UIButton]!
    @IBOutlet var lunchBTNTwo: UIButton!
    
    @IBOutlet var lunchActivities: [UIButton]!
    @IBOutlet var lunchBTNThree: UIButton!
    
    @IBOutlet var vacationPlaces: [UIButton]!
    @IBOutlet var vacationBTNOne: UIButton!
    
    @IBOutlet var vacationParks: [UIButton]!
    @IBOutlet var vacationBTNTwo: UIButton!
    
    @IBOutlet var vacationRides: [UIButton]!
    @IBOutlet var vacationBTNThree: UIButton!
    
    @IBOutlet var holidaysHoliday: [UIButton]!
    @IBOutlet var holidaysBTNOne: UIButton!
    
    @IBOutlet var holidaysDateOne: [UIButton]!
    @IBOutlet var holidaysBTNTwo: UIButton!
    
    @IBOutlet var holidaysDateTwo: [UIButton]!
    @IBOutlet var holidaysBTNThree: UIButton!
    
    @IBOutlet var holidaysDateThree: [UIButton]!
    @IBOutlet var holidaysBTNFour: UIButton!
    
    @IBOutlet var islandsPersons: [UIButton]!
    @IBOutlet var islandsBTNOne: UIButton!
    
    @IBOutlet var islandsRides: [UIButton]!
    @IBOutlet var islandsBTNTwo: UIButton!
    
    @IBOutlet var islandsFoods: [UIButton]!
    @IBOutlet var islandsBTNThree: UIButton!
        
    @IBOutlet var lunchRead: UIStackView!
    @IBOutlet var vacationRead: UIStackView!
    @IBOutlet var holidaysRead: UIStackView!
    @IBOutlet var islandsRead: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
////////////////////////////////////////////////////READ////////////////////////////////////////////////////
    
    //LUNCH
    @IBAction func handleLunchReadOne(_ sender: Any) {
        do{
            lunchPlayerOne = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: lunchOneNum, ofType: "mp3")!))
            lunchPlayerOne.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(lunchPlayerOne.isPlaying)
        {
            lunchPlayerOne.stop()
            lunchPlayerOne.currentTime = 0
            lunchPlayerOne.play()
        }
        else
        {
            lunchPlayerOne.stop()
            lunchPlayerOne.currentTime = 0
        }
    }
    @IBAction func handleLunchReadTwo(_ sender: Any) {
        do{
            lunchPlayerTwo = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: lunchTwoNum, ofType: "mp3")!))
            lunchPlayerTwo.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(lunchPlayerTwo.isPlaying)
        {
            lunchPlayerTwo.stop()
            lunchPlayerTwo.currentTime = 0
            lunchPlayerTwo.play()
        }
        else
        {
            lunchPlayerTwo.stop()
            lunchPlayerTwo.currentTime = 0
        }
    }
    @IBAction func handleLunchReadThree(_ sender: Any) {
        do{
            lunchPlayerThree = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: lunchThreeNum, ofType: "mp3")!))
            lunchPlayerThree.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(lunchPlayerThree.isPlaying)
        {
            lunchPlayerThree.stop()
            lunchPlayerThree.currentTime = 0
            lunchPlayerThree.play()
        }
        else
        {
            lunchPlayerTwo.stop()
            lunchPlayerTwo.currentTime = 0
        }
    }
    
    //VACATION
    
    @IBAction func handleVacationReadOne(_ sender: Any) {
        do{
            vacationPlayerOne = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: vacationOneNum, ofType: "mp3")!))
            vacationPlayerOne.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(vacationPlayerOne.isPlaying)
        {
            vacationPlayerOne.stop()
            vacationPlayerOne.currentTime = 0
            vacationPlayerOne.play()
        }
        else
        {
            vacationPlayerOne.stop()
            vacationPlayerOne.currentTime = 0
        }
    }
    @IBAction func handleVacationReadTwo(_ sender: Any) {
        do{
            vacationPlayerTwo = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: vacationTwoNum, ofType: "mp3")!))
            vacationPlayerTwo.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(vacationPlayerTwo.isPlaying)
        {
            vacationPlayerTwo.stop()
            vacationPlayerTwo.currentTime = 0
            vacationPlayerTwo.play()
        }
        else
        {
            vacationPlayerTwo.stop()
            vacationPlayerTwo.currentTime = 0
        }
    }
    @IBAction func handleVacationReadThree(_ sender: Any) {
        do{
            vacationPlayerThree = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: vacationThreeNum, ofType: "mp3")!))
            vacationPlayerThree.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(vacationPlayerThree.isPlaying)
        {
            vacationPlayerThree.stop()
            vacationPlayerThree.currentTime = 0
            vacationPlayerThree.play()
        }
        else
        {
            vacationPlayerThree.stop()
            vacationPlayerThree.currentTime = 0
        }
    }
    
    //HOLIDAYS
    @IBAction func handleHolidaysReadOne(_ sender: Any) {
        do{
            holidaysPlayerOne = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: holidaysOneNum, ofType: "mp3")!))
            holidaysPlayerOne.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(holidaysPlayerOne.isPlaying)
        {
            holidaysPlayerOne.stop()
            holidaysPlayerOne.currentTime = 0
            holidaysPlayerOne.play()
        }
        else
        {
            holidaysPlayerOne.stop()
            holidaysPlayerOne.currentTime = 0
        }
    }
    @IBAction func handleHolidaysReadTwo(_ sender: Any) {
        do{
            holidaysPlayerTwo = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: holidaysTwoNum, ofType: "mp3")!))
            holidaysPlayerTwo.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(holidaysPlayerTwo.isPlaying)
        {
            holidaysPlayerTwo.stop()
            holidaysPlayerTwo.currentTime = 0
            holidaysPlayerTwo.play()
        }
        else
        {
            holidaysPlayerTwo.stop()
            holidaysPlayerTwo.currentTime = 0
        }
    }
    @IBAction func handleHolidaysReadThree(_ sender: Any) {
        do{
            holidaysPlayerThree = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: holidaysThreeNum, ofType: "mp3")!))
            holidaysPlayerThree.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(holidaysPlayerThree.isPlaying)
        {
            holidaysPlayerThree.stop()
            holidaysPlayerThree.currentTime = 0
            holidaysPlayerThree.play()
        }
        else
        {
            holidaysPlayerThree.stop()
            holidaysPlayerThree.currentTime = 0
        }
    }
    @IBAction func handleHolidaysReadFour(_ sender: Any) {
        do{
            holidaysPlayerFour = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: holidaysFourNum, ofType: "mp3")!))
            holidaysPlayerFour.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(holidaysPlayerFour.isPlaying)
        {
            holidaysPlayerFour.stop()
            holidaysPlayerFour.currentTime = 0
            holidaysPlayerFour.play()
        }
        else
        {
            holidaysPlayerFour.stop()
            holidaysPlayerFour.currentTime = 0
        }
    }
    
    //ISLANDS
    @IBAction func handleIslandsReadOne(_ sender: Any) {
        do{
            islandsPlayerOne = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: islandsOneNum, ofType: "mp3")!))
            islandsPlayerOne.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(islandsPlayerOne.isPlaying)
        {
            islandsPlayerOne.stop()
            islandsPlayerOne.currentTime = 0
            islandsPlayerOne.play()
        }
        else
        {
            islandsPlayerOne.stop()
            islandsPlayerOne.currentTime = 0
        }
    }
    @IBAction func handleIslandsReadTwo(_ sender: Any) {
        do{
            islandsPlayerTwo = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: islandsTwoNum, ofType: "mp3")!))
            islandsPlayerTwo.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(islandsPlayerTwo.isPlaying)
        {
            islandsPlayerTwo.stop()
            islandsPlayerTwo.currentTime = 0
            islandsPlayerTwo.play()
        }
        else
        {
            islandsPlayerTwo.stop()
            islandsPlayerTwo.currentTime = 0
        }
    }
    @IBAction func handleIslandsReadThree(_ sender: Any) {
        do{
            islandsPlayerThree = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: islandsThreeNum, ofType: "mp3")!))
            islandsPlayerThree.prepareToPlay()
        }
        catch{
            print(error)
        }
        
        if !(islandsPlayerThree.isPlaying)
        {
            islandsPlayerThree.stop()
            islandsPlayerThree.currentTime = 0
            islandsPlayerThree.play()
        }
        else
        {
            islandsPlayerThree.stop()
            islandsPlayerThree.currentTime = 0
        }
    }
//////////////////////////////////////////////////END READ//////////////////////////////////////////////////
    
////////////////////////////////////////////////////LUNCH////////////////////////////////////////////////////
    enum Foods: String {
        case chicken = " chicken"
        case softTacos = " chicken soft tacos"
        case hotdog = " a hot dog"
        case spaghetti = " spaghetti"
        case tacoSalad = " a taco salad"
        case sandwich = " a sandwich"
    }
    
    enum Tastes: String {
        case okay = " okay"
        case good = " good"
        case great = " great!"
    }
    
    enum Activities: String {
        case walk = " went for a walk"
        case chore = " did a house chore"
        case table = " had table time"
        case music = " listened to music"
        case drew = " drew pictures"
        case exercise = " exercised"
    }
    
    @IBAction func handleLunchOne(_ sender: UIButton) {
        lunchFoods.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        lunchOneBTN.setTitle(" Select food", for: .normal)
        lunchOneBTN.titleLabel?.font =  UIFont(name: "Gill Sans", size: 20)
        lunchOneBTN.isEnabled = false
        lunchBTNTwo.isEnabled = false
        lunchBTNThree.isEnabled = false
        lunchRead.isHidden = true
    }
    
    @IBAction func foodOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let food = Foods(rawValue: title) else{
            return
        }
        
        lunchFoods.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        lunchOneBTN.isEnabled = true
        lunchBTNTwo.isEnabled = true
        lunchBTNThree.isEnabled = true
        lunchOneSelected = true
        
        switch food {
        case .chicken:
            lunchOneBTN.setTitle(" chicken", for: .normal)
            lunchOneNum = "Lunch 1.1"
        case .softTacos:
            lunchOneBTN.setTitle(" chicken soft tacos", for: .normal)
            lunchOneBTN.titleLabel?.font =  UIFont(name: "Gill Sans", size: 17)
            lunchOneNum = "Lunch 1.2"
        case .hotdog:
            lunchOneBTN.setTitle(" a hot dog", for: .normal)
            lunchOneNum = "Lunch 1.3"
        case .spaghetti:
            lunchOneBTN.setTitle(" spaghetti", for: .normal)
            lunchOneNum = "Lunch 1.4"
        case .tacoSalad:
            lunchOneBTN.setTitle(" a taco salad", for: .normal)
            lunchOneNum = "Lunch 1.5"
        case .sandwich:
            lunchOneBTN.setTitle(" a sandwich", for: .normal)
            lunchOneNum = "Lunch 1.6"
        }
        
        if (lunchOneSelected == true && lunchTwoSelected == true && lunchThreeSelected == true) {
            lunchRead.isHidden = false
        }
        else {
            lunchRead.isHidden = true
        }
        
    }
    
    @IBAction func handleLunchTwo(_ sender: UIButton) {
        lunchTastes.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        lunchBTNTwo.setTitle(" Select taste", for: .normal)
        lunchOneBTN.isEnabled = false
        lunchBTNTwo.isEnabled = false
        lunchBTNThree.isEnabled = false
        lunchRead.isHidden = true
    }
    
    @IBAction func tastesOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let taste = Tastes(rawValue: title) else{
            return
        }
        
        lunchTastes.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        lunchOneBTN.isEnabled = true
        lunchBTNTwo.isEnabled = true
        lunchBTNThree.isEnabled = true
        lunchTwoSelected = true
        
        switch taste {
        case .okay:
            lunchBTNTwo.setTitle(" okay", for: .normal)
            lunchTwoNum = "Lunch 2.1"
        case .good:
            lunchBTNTwo.setTitle(" good", for: .normal)
            lunchTwoNum = "Lunch 2.2"
        case .great:
            lunchBTNTwo.setTitle(" great!", for: .normal)
            lunchTwoNum = "Lunch 2.3"
        }
        
        if (lunchOneSelected == true && lunchTwoSelected == true && lunchThreeSelected == true) {
            lunchRead.isHidden = false
        }
 
    }
    
    @IBAction func handleLunchThree(_ sender: UIButton) {
        lunchActivities.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        lunchBTNThree.setTitle(" Select activity", for: .normal)
        lunchOneBTN.isEnabled = false
        lunchBTNTwo.isEnabled = false
        lunchBTNThree.isEnabled = false
        lunchRead.isHidden = true
    }
    
    @IBAction func activitiesOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let activities = Activities(rawValue: title) else{
            return
        }
        
        lunchActivities.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        lunchOneBTN.isEnabled = true
        lunchBTNTwo.isEnabled = true
        lunchBTNThree.isEnabled = true
        lunchThreeSelected = true
        
        switch activities {
        case .walk:
            lunchBTNThree.setTitle(" went for a walk", for: .normal)
            lunchThreeNum = "Lunch 3.1"
        case .chore:
            lunchBTNThree.setTitle(" did a house chore", for: .normal)
            lunchThreeNum = "Lunch 3.2"
        case .table:
            lunchBTNThree.setTitle(" had table time", for: .normal)
            lunchThreeNum = "Lunch 3.3"
        case .music:
            lunchBTNThree.setTitle(" listened to music", for: .normal)
            lunchThreeNum = "Lunch 3.4"
        case .drew:
            lunchBTNThree.setTitle(" drew pictures", for: .normal)
            lunchThreeNum = "Lunch 3.5"
        case .exercise:
            lunchBTNThree.setTitle(" exercised", for: .normal)
            lunchThreeNum = "Lunch 3.6"
        }
        
        if (lunchOneSelected == true && lunchTwoSelected == true && lunchThreeSelected == true) {
            lunchRead.isHidden = false
        }
        
    }
//////////////////////////////////////////////////END LUNCH//////////////////////////////////////////////////
    
//////////////////////////////////////////////////VACATION//////////////////////////////////////////////////
    enum Places: String {
        case hotel = " hotel"
        case condo = " condo"
        case beachHouse = " beach house"
    }
    
    enum Parks: String {
        case magicKingdom = " Magic Kingdom"
        case islands = " Islands of Adventure"
        case universal = " Universal Studio"
        case epcot = " Epcot"
    }
    
    enum Rides: String {
        case harryPotter = " Harry Potter"
        case bigThunder = " Big Thunder Mt. Railroad"
        case haunted = " Haunted Mansion"
        case smallWorld = " It's A Small World"
        case pirates = " Pirates of the Caribbean"
        case buzz = " Buzz Lightyear"
    }
    
    @IBAction func handleVacationOne(_ sender: UIButton) {
        vacationPlaces.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        vacationBTNOne.setTitle(" Select place", for: .normal)
        vacationBTNOne.isEnabled = false
        vacationBTNTwo.isEnabled = false
        vacationBTNThree.isEnabled = false
        vacationRead.isHidden = true
    }
    
    @IBAction func placesOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let places = Places(rawValue: title) else{
            return
        }
        
        vacationPlaces.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        vacationBTNOne.isEnabled = true
        vacationBTNTwo.isEnabled = true
        vacationBTNThree.isEnabled = true
        vacationOneSelected = true
        
        switch places {
        case .hotel:
            vacationBTNOne.setTitle(" hotel", for: .normal)
            vacationOneNum = "Vacation 1.1"
        case .condo:
            vacationBTNOne.setTitle(" condo", for: .normal)
            vacationOneNum = "Vacation 1.2"
        case .beachHouse:
            vacationBTNOne.setTitle(" beach house", for: .normal)
            vacationOneNum = "Vacation 1.3"
        }
        
        if (vacationOneSelected == true && vacationTwoSelected == true && vacationThreeSelected == true) {
            vacationRead.isHidden = false
        }
        
    }
    
    @IBAction func handleVacationTwo(_ sender: UIButton) {
        vacationParks.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        vacationBTNTwo.setTitle(" Select park", for: .normal)
        vacationBTNTwo.titleLabel?.font =  UIFont(name: "Gill Sans", size: 20)
        vacationBTNOne.isEnabled = false
        vacationBTNTwo.isEnabled = false
        vacationBTNThree.isEnabled = false
        vacationRead.isHidden = true
    }
    
    @IBAction func parksOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let parks = Parks(rawValue: title) else{
            return
        }
        
        vacationParks.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        vacationBTNOne.isEnabled = true
        vacationBTNTwo.isEnabled = true
        vacationBTNThree.isEnabled = true
        vacationTwoSelected = true
        
        switch parks {
        case .magicKingdom:
            vacationBTNTwo.setTitle(" Magic Kingdom", for: .normal)
            vacationTwoNum = "Vacation 2.1"
        case .islands:
            vacationBTNTwo.setTitle(" Islands of Adventure", for: .normal)
            vacationBTNTwo.titleLabel?.font =  UIFont(name: "Gill Sans", size: 16)
            vacationTwoNum = "Vacation 2.2"
        case .universal:
            vacationBTNTwo.setTitle(" Universal Studio", for: .normal)
            vacationTwoNum = "Vacation 2.3"
        case .epcot:
            vacationBTNTwo.setTitle(" Epcot", for: .normal)
            vacationTwoNum = "Vacation 2.4"
        }
        
        if (vacationOneSelected == true && vacationTwoSelected == true && vacationThreeSelected == true) {
            vacationRead.isHidden = false
        }
        
    }
    
    @IBAction func handleVacationThree(_ sender: UIButton) {
        vacationRides.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        vacationBTNThree.setTitle(" Select ride", for: .normal)
        vacationBTNThree.titleLabel?.font =  UIFont(name: "Gill Sans", size: 20)
        vacationBTNOne.isEnabled = false
        vacationBTNTwo.isEnabled = false
        vacationBTNThree.isEnabled = false
        vacationRead.isHidden = true
    }
      
    @IBAction func ridesOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let rides = Rides(rawValue: title) else{
            return
        }
        
        vacationRides.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        vacationBTNOne.isEnabled = true
        vacationBTNTwo.isEnabled = true
        vacationBTNThree.isEnabled = true
        vacationThreeSelected = true
        
        switch rides {
        case .harryPotter:
            vacationBTNThree.setTitle(" Harry Potter", for: .normal)
            vacationThreeNum = "Vacation 3.1"
        case .bigThunder:
            vacationBTNThree.setTitle(" Big Thunder Mt. Railroad", for: .normal)
            vacationBTNThree.titleLabel?.font =  UIFont(name: "Gill Sans", size: 19)
            vacationThreeNum = "Vacation 3.2"
        case .haunted:
            vacationBTNThree.setTitle(" Haunted Mansion", for: .normal)
            vacationThreeNum = "Vacation 3.3"
        case .smallWorld:
            vacationBTNThree.setTitle(" It's A Small World", for: .normal)
            vacationThreeNum = "Vacation 3.4"
        case .pirates:
            vacationBTNThree.setTitle(" Pirates of the Caribbean", for: .normal)
            vacationBTNThree.titleLabel?.font =  UIFont(name: "Gill Sans", size: 19)
            vacationThreeNum = "Vacation 3.5"
        case .buzz:
            vacationBTNThree.setTitle(" Buzz Lightyear", for: .normal)
            vacationThreeNum = "Vacation 3.6"
        }
        
        if (vacationOneSelected == true && vacationTwoSelected == true && vacationThreeSelected == true) {
            vacationRead.isHidden = false
        }
    }
////////////////////////////////////////////////END VACATION////////////////////////////////////////////////

//////////////////////////////////////////////////HOLIDAYS//////////////////////////////////////////////////
    enum Holidays: String {
        case christmas = " Christmas"
        case birthday = " my birthday"
    }
    
    enum Dates: String {
        case december = "December 25th"
        case november = "November"
        case january = "January 1st"
    }

    @IBAction func handleHolidaysOne(_ sender: UIButton) {
        holidaysHoliday.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        holidaysBTNOne.setTitle(" Select holiday", for: .normal)
        holidaysBTNOne.isEnabled = false
        holidaysBTNTwo.isEnabled = false
        holidaysBTNThree.isEnabled = false
        holidaysBTNFour.isEnabled = false
        holidaysRead.isHidden = true
    }
    @IBAction func holidaysOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let holidays = Holidays(rawValue: title) else{
            return
        }
        
        holidaysHoliday.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        holidaysBTNOne.isEnabled = true
        holidaysBTNTwo.isEnabled = true
        holidaysBTNThree.isEnabled = true
        holidaysBTNFour.isEnabled = true
        holidaysOneSelected = true
        
        switch holidays {
        case .christmas:
            holidaysBTNOne.setTitle(" Christmas", for: .normal)
            holidaysOneNum = "Holidays 1.1"
        case .birthday:
            holidaysBTNOne.setTitle(" my birthday", for: .normal)
            holidaysOneNum = "Holidays 1.2"
        }
        
        if (holidaysOneSelected == true && holidaysTwoSelected == true && holidaysThreeSelected == true && holidaysFourSelected == true) {
            holidaysRead.isHidden = false
        }

    }
    
    @IBAction func handleHolidaysTwo(_ sender: UIButton) {
        holidaysDateOne.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        holidaysBTNTwo.setTitle(" Select date", for: .normal)
        holidaysBTNOne.isEnabled = false
        holidaysBTNTwo.isEnabled = false
        holidaysBTNThree.isEnabled = false
        holidaysBTNFour.isEnabled = false
        holidaysRead.isHidden = true
    }
    
    @IBAction func dateOneOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let dates = Dates(rawValue: title) else{
            return
        }
        
        holidaysDateOne.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        holidaysBTNOne.isEnabled = true
        holidaysBTNTwo.isEnabled = true
        holidaysBTNThree.isEnabled = true
        holidaysBTNFour.isEnabled = true
        holidaysTwoSelected = true
        
        switch dates {
        case .december:
            holidaysBTNTwo.setTitle("December 25th", for: .normal)
            holidaysTwoNum = "Holidays 2.1"
        case .november:
            holidaysBTNTwo.setTitle("November", for: .normal)
            holidaysTwoNum = "Holidays 2.2"
        case .january:
            holidaysBTNTwo.setTitle("January 1st", for: .normal)
            holidaysTwoNum = "Holidays 2.3"
        }
        
        if (holidaysOneSelected == true && holidaysTwoSelected == true && holidaysThreeSelected == true && holidaysFourSelected == true) {
            holidaysRead.isHidden = false
        }
    }
    
    @IBAction func handleHolidaysThree(_ sender: UIButton) {
        holidaysDateTwo.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        holidaysBTNThree.setTitle(" Select date", for: .normal)
        holidaysBTNOne.isEnabled = false
        holidaysBTNTwo.isEnabled = false
        holidaysBTNThree.isEnabled = false
        holidaysBTNFour.isEnabled = false
        holidaysRead.isHidden = true
    }
    
    @IBAction func dateTwoOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let dates = Dates(rawValue: title) else{
            return
        }
        
        holidaysDateTwo.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        holidaysBTNOne.isEnabled = true
        holidaysBTNTwo.isEnabled = true
        holidaysBTNThree.isEnabled = true
        holidaysBTNFour.isEnabled = true
        holidaysThreeSelected = true
        
        switch dates {
        case .december:
            holidaysBTNThree.setTitle("December 25th", for: .normal)
            holidaysThreeNum = "Holidays 3.1"
        case .november:
            holidaysBTNThree.setTitle("November", for: .normal)
            holidaysThreeNum = "Holidays 3.2"
        case .january:
            holidaysBTNThree.setTitle("January 1st", for: .normal)
            holidaysThreeNum = "Holidays 3.3"
        }
        
        if (holidaysOneSelected == true && holidaysTwoSelected == true && holidaysThreeSelected == true && holidaysFourSelected == true) {
            holidaysRead.isHidden = false
        }
    }
    
    @IBAction func handleHolidaysFour(_ sender: UIButton) {
        holidaysDateThree.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        holidaysBTNFour.setTitle(" Select date", for: .normal)
        holidaysBTNOne.isEnabled = false
        holidaysBTNTwo.isEnabled = false
        holidaysBTNThree.isEnabled = false
        holidaysBTNFour.isEnabled = false
        holidaysRead.isHidden = true
    }
    @IBAction func dateThreeOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let dates = Dates(rawValue: title) else{
            return
        }
        
        holidaysDateThree.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        holidaysBTNOne.isEnabled = true
        holidaysBTNTwo.isEnabled = true
        holidaysBTNThree.isEnabled = true
        holidaysBTNFour.isEnabled = true
        holidaysFourSelected = true
        
        switch dates {
        case .december:
            holidaysBTNFour.setTitle("December 25th", for: .normal)
            holidaysFourNum = "Holidays 4.1"
        case .november:
            holidaysBTNFour.setTitle("November", for: .normal)
            holidaysFourNum = "Holidays 4.2"
        case .january:
            holidaysBTNFour.setTitle("January 1st", for: .normal)
            holidaysFourNum = "Holidays 4.3"
        }
        
        if (holidaysOneSelected == true && holidaysTwoSelected == true && holidaysThreeSelected == true && holidaysFourSelected == true) {
            holidaysRead.isHidden = false
        }
    }
////////////////////////////////////////////////END HOLIDAYS////////////////////////////////////////////////
    
//////////////////////////////////////////////////ISLANDS//////////////////////////////////////////////////
    enum Persons: String {
        case mom = " my mom"
        case dad = " my dad"
        case brother = " my brother, Travis"
    }
    
    enum Ride: String {
        case harryPotter = " Harry Potter & the Forbidden Journey"
        case express = " Hogwarts Express"
    }
    
    enum Food: String {
        case chicken = " chicken"
        case softTacos = " chicken soft tacos"
        case hotdog = " hot dogs"
        case spaghetti = " spaghetti"
        case tacoSalad = " taco salads"
        case sandwich = " sandwiches"
    }
    
    @IBAction func handleIslandsOne(_ sender: UIButton) {
        islandsPersons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        islandsBTNOne.setTitle(" Select person", for: .normal)
        islandsBTNOne.isEnabled = false
        islandsBTNTwo.isEnabled = false
        islandsBTNThree.isEnabled = false
        islandsRead.isHidden = true
    }
    @IBAction func personsOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let persons = Persons(rawValue: title) else{
            return
        }
        
        islandsPersons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        islandsBTNOne.isEnabled = true
        islandsBTNTwo.isEnabled = true
        islandsBTNThree.isEnabled = true
        islandsOneSelected = true

        switch persons {
        case .mom:
            islandsBTNOne.setTitle(" my mom", for: .normal)
            islandsOneNum = "Islands 1.1"
        case .dad:
            islandsBTNOne.setTitle(" my dad", for: .normal)
            islandsOneNum = "Islands 1.2"
        case .brother:
            islandsBTNOne.setTitle(" my brother, Travis", for: .normal)
            islandsOneNum = "Islands 1.3"
        }

        if (islandsOneSelected == true && islandsTwoSelected == true && islandsThreeSelected == true) {
            islandsRead.isHidden = false
        }
        
    }
    
    @IBAction func handleIslandsTwo(_ sender: UIButton) {
        islandsRides.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        islandsBTNTwo.setTitle(" Select ride", for: .normal)
        islandsBTNTwo.titleLabel?.font =  UIFont(name: "Gill Sans", size: 20)
        islandsBTNOne.isEnabled = false
        islandsBTNTwo.isEnabled = false
        islandsBTNThree.isEnabled = false
        islandsRead.isHidden = true
    }
    @IBAction func rideOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let rides = Ride(rawValue: title) else{
            return
        }
        
        islandsRides.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        islandsBTNOne.isEnabled = true
        islandsBTNTwo.isEnabled = true
        islandsBTNThree.isEnabled = true
        islandsTwoSelected = true
        
        switch rides {
        case .harryPotter:
            islandsBTNTwo.setTitle(" Harry Potter & the Forbidden Journey", for: .normal)
            islandsBTNTwo.titleLabel?.font =  UIFont(name: "Gill Sans", size: 18)
            islandsTwoNum = "Islands 2.1"
        case .express:
            islandsBTNTwo.setTitle(" Hogwarts Express", for: .normal)
            islandsTwoNum = "Islands 2.2"
        }
        
        if (islandsOneSelected == true && islandsTwoSelected == true && islandsThreeSelected == true) {
            islandsRead.isHidden = false
        }

    }
    
    @IBAction func handleIslandsThree(_ sender: UIButton) {
        islandsFoods.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        islandsBTNThree.setTitle(" Select food", for: .normal)
        islandsBTNOne.isEnabled = false
        islandsBTNTwo.isEnabled = false
        islandsBTNThree.isEnabled = false
        islandsRead.isHidden = true
    }
    
    @IBAction func foodsOptions(_ sender: UIButton) {
        guard let title = sender.currentTitle, let food = Food(rawValue: title) else{
            return
        }
        
        islandsFoods.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        islandsBTNOne.isEnabled = true
        islandsBTNTwo.isEnabled = true
        islandsBTNThree.isEnabled = true
        islandsThreeSelected = true
        
        switch food {
        case .chicken:
            islandsBTNThree.setTitle(" chicken", for: .normal)
            islandsThreeNum = "Islands 2.1"
        case .softTacos:
            islandsBTNThree.setTitle(" chicken soft tacos", for: .normal)
            islandsThreeNum = "Islands 3.2"
        case .hotdog:
            islandsBTNThree.setTitle(" hot dogs", for: .normal)
            islandsThreeNum = "Islands 3.3"
        case .spaghetti:
            islandsBTNThree.setTitle(" spaghetti", for: .normal)
            islandsThreeNum = "Islands 3.4"
        case .tacoSalad:
            islandsBTNThree.setTitle(" taco salads", for: .normal)
            islandsThreeNum = "Islands 3.5"
        case .sandwich:
            islandsBTNThree.setTitle(" sandwiches", for: .normal)
            islandsThreeNum = "Islands 3.6"
        }
        
        if (islandsOneSelected == true && islandsTwoSelected == true && islandsThreeSelected == true) {
            islandsRead.isHidden = false
        }

    }
////////////////////////////////////////////////END ISLANDS////////////////////////////////////////////////
}
