//
//  SecondViewController.swift
//  JohnsonDoll
//
//  Created by Joe Wong on 9/30/18.
//  Copyright © 2018 Joe Wong. All rights reserved.
//

import UIKit
import AVKit

class DumbledoreViewController: UIViewController {

    var videoPlayerOne = AVPlayerViewController()
    var videoOne = AVPlayer()
    var videoPlayerTwo = AVPlayerViewController()
    var videoTwo = AVPlayer()
    var videoPlayerThree = AVPlayerViewController()
    var videoThree = AVPlayer()
    var videoPlayerFour = AVPlayerViewController()
    var videoFour = AVPlayer()
    var videoPlayerFive = AVPlayerViewController()
    var videoFive = AVPlayer()
    var videoPlayerSix = AVPlayerViewController()
    var videoSix = AVPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let pathOne = Bundle.main.path(forResource: "d1", ofType: "MOV"){
            videoOne = AVPlayer(url: URL(fileURLWithPath: pathOne))
            videoPlayerOne.player = videoOne
        }
        
        if let pathTwo = Bundle.main.path(forResource: "d2", ofType: "MOV"){
            videoTwo = AVPlayer(url: URL(fileURLWithPath: pathTwo))
            videoPlayerTwo.player = videoTwo
        }
        
        if let pathThree = Bundle.main.path(forResource: "d3", ofType: "MOV"){
            videoThree = AVPlayer(url: URL(fileURLWithPath: pathThree))
            videoPlayerThree.player = videoThree
        }
        
        if let pathFour = Bundle.main.path(forResource: "d4", ofType: "MOV"){
            videoFour = AVPlayer(url: URL(fileURLWithPath: pathFour))
            videoPlayerFour.player = videoFour
        }
        
        if let pathFive = Bundle.main.path(forResource: "d5", ofType: "MOV"){
            videoFive = AVPlayer(url: URL(fileURLWithPath: pathFive))
            videoPlayerFive.player = videoFive
        }
        
        if let pathSix = Bundle.main.path(forResource: "d6", ofType: "MOV"){
            videoSix = AVPlayer(url: URL(fileURLWithPath: pathSix))
            videoPlayerSix.player = videoSix
        }
    }

    @IBAction func quoteOne(_ sender: Any) {
        self.videoOne.seek(to: CMTime.zero)
        present(videoPlayerOne, animated: true, completion:
        {
            self.videoOne.play()
        })
    }
    
    @IBAction func quoteTwo(_ sender: Any) {
        self.videoTwo.seek(to: CMTime.zero)
        present(videoPlayerTwo, animated: true, completion:
        {
            self.videoTwo.play()
        })
    }

    @IBAction func quoteThree(_ sender: Any) {
        self.videoThree.seek(to: CMTime.zero)
        present(videoPlayerThree, animated: true, completion:
        {
            self.videoThree.play()
        })
    }
    
    @IBAction func quoteFour(_ sender: Any) {
        self.videoFour.seek(to: CMTime.zero)
        present(videoPlayerFour, animated: true, completion:
        {
            self.videoFour.play()
        })
    }
    
    @IBAction func quoteFive(_ sender: Any) {
        self.videoFive.seek(to: CMTime.zero)
        present(videoPlayerFive, animated: true, completion:
        {
            self.videoFive.play()
        })
    }
    
    @IBAction func quoteSix(_ sender: Any) {
        self.videoSix.seek(to: CMTime.zero)
        present(videoPlayerSix, animated: true, completion:
        {
            self.videoSix.play()
        })
    }
}

