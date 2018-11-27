//
//  FirstViewController.swift
//  JohnsonDoll
//
//  Created by Joe Wong on 9/30/18.
//  Copyright © 2018 Joe Wong. All rights reserved.
//

import UIKit
import AVFoundation

class PhrasesViewController: UIViewController {
    
    var laurenPlayer = AVAudioPlayer()
    var lovePlayer = AVAudioPlayer()
    var playPlayer = AVAudioPlayer()
    var hugPlayer = AVAudioPlayer()
    var momPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
            laurenPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "lauren", ofType: "mp3")!))
            laurenPlayer.prepareToPlay()
            
            lovePlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "love", ofType: "mp3")!))
            lovePlayer.prepareToPlay()
            
            playPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "play", ofType: "mp3")!))
            playPlayer.prepareToPlay()
            
            hugPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "hug", ofType: "mp3")!))
            hugPlayer.prepareToPlay()
            
            momPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mom", ofType: "mp3")!))
            momPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
    }
    
    func stopAll(){
        laurenPlayer.stop()
        laurenPlayer.currentTime = 0
        lovePlayer.stop()
        lovePlayer.currentTime = 0
        playPlayer.stop()
        playPlayer.currentTime = 0
        hugPlayer.stop()
        hugPlayer.currentTime = 0
        momPlayer.stop()
        momPlayer.currentTime = 0
    }

    @IBAction func hiLauren(_ sender: Any) {
        if !(laurenPlayer.isPlaying)
        {
            stopAll()
            laurenPlayer.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func ily(_ sender: Any) {
        if !(lovePlayer.isPlaying)
        {
            stopAll()
            lovePlayer.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func letsPlay(_ sender: Any) {
        if !(playPlayer.isPlaying)
        {
            stopAll()
            playPlayer.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func needHug(_ sender: Any) {
        if !(hugPlayer.isPlaying)
        {
            stopAll()
            hugPlayer.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func askMom(_ sender: Any) {
        if !(momPlayer.isPlaying)
        {
            stopAll()
            momPlayer.play()
        }
        else
        {
            stopAll()
        }
    }
    
}

