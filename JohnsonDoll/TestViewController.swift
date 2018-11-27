//
//  StoryViewController.swift
//  JohnsonDoll
//
//  Created by Joe Wong on 10/4/18.
//  Copyright © 2018 Joe Wong. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    @IBOutlet var foodButtons: [UIButton]!
    @IBOutlet var selectBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func handleSelect(_ sender: UIButton) {
        foodButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    enum Foods: String {
        case burger = "Burger"
        case salad = "Salad"
        case water = "Water"
    }
    
    @IBAction func foodTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let food = Foods(rawValue: title) else{
            return
        }
        
        foodButtons.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
        
        switch food {
        case .burger:
            selectBTN.setTitle("Burger", for: .normal)
        case .salad:
            selectBTN.setTitle("Salad", for: .normal)
        case .water:
            selectBTN.setTitle("Water", for: .normal)
        }
    }
    
}
