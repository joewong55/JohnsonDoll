//
//  SongsViewController.swift
//  JohnsonDoll
//
//  Created by Joe Wong on 9/30/18.
//  Copyright © 2018 Joe Wong. All rights reserved.
//

import UIKit
import AVFoundation

class SongsViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {

    var hereWeCome = AVAudioPlayer()
    var yellowSub = AVAudioPlayer()
    var hereComesSun = AVAudioPlayer()
    var downtown = AVAudioPlayer()
    var oneTwoThreeFour = AVAudioPlayer()
    var feelLikeWoman = AVAudioPlayer()
    var pencilThin = AVAudioPlayer()
    var rockBaby = AVAudioPlayer()
    var letItSnow = AVAudioPlayer()
    var goTellMountain = AVAudioPlayer()
    
    @IBOutlet var playBTNOne: UIButton!
    @IBOutlet var recordBTNOne: UIButton!
    
    @IBOutlet var playBTNTwo: UIButton!
    @IBOutlet var recordBTNTwo: UIButton!
    
    @IBOutlet var playBTNThree: UIButton!
    @IBOutlet var recordBTNThree: UIButton!
    
    @IBOutlet var playBTNFour: UIButton!
    @IBOutlet var recordBTNFour: UIButton!
    
    var soundRecorderOne : AVAudioRecorder!
    var soundPlayerOne : AVAudioPlayer!
    
    var soundRecorderTwo : AVAudioRecorder!
    var soundPlayerTwo : AVAudioPlayer!
    
    var soundRecorderThree : AVAudioRecorder!
    var soundPlayerThree : AVAudioPlayer!
    
    var soundRecorderFour : AVAudioRecorder!
    var soundPlayerFour : AVAudioPlayer!
    
    var fileNameOneSongs: String = "audioFileOneSongs.m4a"
    var fileNameTwoSongs: String = "audioFileTwoSongs.m4a"
    var fileNameThreeSongs: String = "audioFileThreeSongs.m4a"
    var fileNameFourSongs: String = "audioFileFourSongs.m4a"
    
    var customOneRecorded: Bool = false
    var customTwoRecorded: Bool = false
    var customThreeRecorded: Bool = false
    var customFourRecorded: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRecorder()
        playBTNOne.isEnabled = false
        playBTNTwo.isEnabled = false
        playBTNThree.isEnabled = false
        playBTNFour.isEnabled = false
        
        UserDefaults.standard.set(nil, forKey: "mySoundRecorderOne")
        
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        do{
            hereWeCome = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "herewecome", ofType: "mp3")!))
            hereWeCome.prepareToPlay()

            yellowSub = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "yellowsub", ofType: "mp3")!))
            yellowSub.prepareToPlay()

            hereComesSun = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sun", ofType: "mp3")!))
            hereComesSun.prepareToPlay()

            downtown = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "downtown", ofType: "mp3")!))
            downtown.prepareToPlay()

            oneTwoThreeFour = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "1234", ofType: "mp3")!))
            oneTwoThreeFour.prepareToPlay()

            feelLikeWoman = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "woman", ofType: "mp3")!))
            feelLikeWoman.prepareToPlay()

            pencilThin = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "pencil", ofType: "mp3")!))
            pencilThin.prepareToPlay()

            rockBaby = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "rock", ofType: "mp3")!))
            rockBaby.prepareToPlay()

            letItSnow = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "letitsnow", ofType: "mp3")!))
            letItSnow.prepareToPlay()

            goTellMountain = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "mountain", ofType: "mp3")!))
            goTellMountain.prepareToPlay()
        }
        catch{
            print(error)
        }
    }

///////////////////////////////////////////////////////////////////////////////////////////////////////
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    func setupRecorder() {
        let audioFilenameOneSongs = getDocumentsDirectory().appendingPathComponent(fileNameOneSongs)
        let audioFilenameTwoSongs = getDocumentsDirectory().appendingPathComponent(fileNameTwoSongs)
        let audioFilenameThreeSongs = getDocumentsDirectory().appendingPathComponent(fileNameThreeSongs)
        let audioFilenameFourSongs = getDocumentsDirectory().appendingPathComponent(fileNameFourSongs)
        
        let recordSetting = [ AVFormatIDKey : kAudioFormatAppleLossless,
                              AVEncoderAudioQualityKey : AVAudioQuality.max.rawValue,
                              AVEncoderBitRateKey : 320000,
                              AVNumberOfChannelsKey : 2,
                              AVSampleRateKey : 44100.2] as [String : Any]
        
        do {
            soundRecorderOne = try AVAudioRecorder(url: audioFilenameOneSongs, settings: recordSetting )
            soundRecorderOne.delegate = self
            soundRecorderOne.prepareToRecord()
            
            soundRecorderTwo = try AVAudioRecorder(url: audioFilenameTwoSongs, settings: recordSetting )
            soundRecorderTwo.delegate = self
            soundRecorderTwo.prepareToRecord()
            
            soundRecorderThree = try AVAudioRecorder(url: audioFilenameThreeSongs, settings: recordSetting )
            soundRecorderThree.delegate = self
            soundRecorderThree.prepareToRecord()
            
            soundRecorderFour = try AVAudioRecorder(url: audioFilenameFourSongs, settings: recordSetting )
            soundRecorderFour.delegate = self
            soundRecorderFour.prepareToRecord()
        } catch {
            print(error)
        }
    }
    
    func setupPlayerOne() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        let audioFilenameOneSongs = getDocumentsDirectory().appendingPathComponent(fileNameOneSongs)
        do {
            soundPlayerOne = try AVAudioPlayer(contentsOf: audioFilenameOneSongs)
            soundPlayerOne.delegate = self
            soundPlayerOne.prepareToPlay()
            soundPlayerOne.volume = 1.0
        } catch {
            print(error)
        }
    }
    
    func setupPlayerTwo() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        let audioFilenameTwoSongs = getDocumentsDirectory().appendingPathComponent(fileNameTwoSongs)
        do {
            soundPlayerTwo = try AVAudioPlayer(contentsOf: audioFilenameTwoSongs)
            soundPlayerTwo.delegate = self
            soundPlayerTwo.prepareToPlay()
            soundPlayerTwo.volume = 1.0
        } catch {
            print(error)
        }
    }
    
    func setupPlayerThree() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        let audioFilenameThreeSongs = getDocumentsDirectory().appendingPathComponent(fileNameThreeSongs)
        do {
            soundPlayerThree = try AVAudioPlayer(contentsOf: audioFilenameThreeSongs)
            soundPlayerThree.delegate = self
            soundPlayerThree.prepareToPlay()
            soundPlayerThree.volume = 1.0
        } catch {
            print(error)
        }
    }
    
    func setupPlayerFour() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        let audioFilenameFourSongs = getDocumentsDirectory().appendingPathComponent(fileNameFourSongs)
        do {
            soundPlayerFour = try AVAudioPlayer(contentsOf: audioFilenameFourSongs)
            soundPlayerFour.delegate = self
            soundPlayerFour.prepareToPlay()
            soundPlayerFour.volume = 1.0
        } catch {
            print(error)
        }
    }
    
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if customOneRecorded == true
        {
            playBTNOne.isEnabled = true
        }
        if customTwoRecorded == true
        {
            playBTNTwo.isEnabled = true
        }
        if customThreeRecorded == true
        {
            playBTNThree.isEnabled = true
        }
        if customFourRecorded == true
        {
            playBTNFour.isEnabled = true
        }
    }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        recordBTNOne.isEnabled = true
        playBTNOne.setTitle("Play", for: .normal)
        
        recordBTNTwo.isEnabled = true
        playBTNTwo.setTitle("Play", for: .normal)
        
        recordBTNThree.isEnabled = true
        playBTNThree.setTitle("Play", for: .normal)
        
        recordBTNFour.isEnabled = true
        playBTNFour.setTitle("Play", for: .normal)
    }
    
    func stopCustom(){
        if playBTNOne.isEnabled == true
        {
            if soundPlayerOne != nil {
                if soundPlayerOne.isPlaying
                {
                    soundPlayerOne.stop()
                    soundPlayerOne.currentTime = 0
                }
            }
        }
        
        if playBTNTwo.isEnabled == true
        {
            if soundPlayerTwo != nil {
                if soundPlayerTwo.isPlaying
                {
                    soundPlayerTwo.stop()
                    soundPlayerTwo.currentTime = 0
                }
            }
        }
        
        if playBTNThree.isEnabled == true
        {
            if soundPlayerThree != nil {
                if soundPlayerThree.isPlaying
                {
                    soundPlayerThree.stop()
                    soundPlayerThree.currentTime = 0
                }
            }
        }
        
        if playBTNFour.isEnabled == true
        {
            if soundPlayerFour != nil {
                if soundPlayerFour.isPlaying
                {
                    soundPlayerFour.stop()
                    soundPlayerFour.currentTime = 0
                }
            }
        }
    }
    
    func disableRecord(){
        recordBTNOne.isEnabled = false
        recordBTNTwo.isEnabled = false
        recordBTNThree.isEnabled = false
        recordBTNFour.isEnabled = false
    }
    
    func enableRecord(){
        recordBTNOne.isEnabled = true
        recordBTNTwo.isEnabled = true
        recordBTNThree.isEnabled = true
        recordBTNFour.isEnabled = true
    }
    
    func disablePlay(){
        playBTNOne.isEnabled = false
        playBTNTwo.isEnabled = false
        playBTNThree.isEnabled = false
        playBTNFour.isEnabled = false
    }
    
    func enablePlay(){
        if customOneRecorded == true
        {
            playBTNOne.isEnabled = true
        }
        if customTwoRecorded == true
        {
            playBTNTwo.isEnabled = true
        }
        if customThreeRecorded == true
        {
            playBTNThree.isEnabled = true
        }
        if customFourRecorded == true
        {
            playBTNFour.isEnabled = true
        }
    }
    
    @IBAction func recordOne(_ sender: Any) {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.record, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        if recordBTNOne.titleLabel?.text == "Record" {
            soundRecorderOne.record()
            recordBTNOne.setTitle("Stop", for: .normal)
            disablePlay()
            recordBTNTwo.isEnabled = false
            recordBTNThree.isEnabled = false
            recordBTNFour.isEnabled = false
        } else {
            soundRecorderOne.stop()
            recordBTNOne.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customOneRecorded = true
        }
    }
    
    @IBAction func playCustomOne(_ sender: Any) {
        if playBTNOne.titleLabel?.text == "Play" {
            playBTNOne.setTitle("Stop", for: .normal)
            setupPlayerOne()
            stopCustom()
            stopAll()
            if soundPlayerOne != nil {
                soundPlayerOne.play()
            }
        } else {
            if soundPlayerOne != nil {
                soundPlayerOne.stop()
            }
            playBTNOne.setTitle("Play", for: .normal)
            enableRecord()
        }
    }
    
    @IBAction func recordTwo(_ sender: Any) {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.record, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        if recordBTNTwo.titleLabel?.text == "Record" {
            soundRecorderTwo.record()
            recordBTNTwo.setTitle("Stop", for: .normal)
            disablePlay()
            recordBTNOne.isEnabled = false
            recordBTNThree.isEnabled = false
            recordBTNFour.isEnabled = false
        } else {
            soundRecorderTwo.stop()
            recordBTNTwo.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customTwoRecorded = true
        }
    }
    
    @IBAction func playCustomTwo(_ sender: Any) {
        if playBTNTwo.titleLabel?.text == "Play" {
            playBTNTwo.setTitle("Stop", for: .normal)
            setupPlayerTwo()
            stopCustom()
            stopAll()
            disableRecord()
            if soundPlayerTwo != nil {
                soundPlayerTwo.play()
            }
        } else {
            if soundPlayerTwo != nil {
                soundPlayerTwo.stop()
            }
            playBTNTwo.setTitle("Play", for: .normal)
            recordBTNTwo.isEnabled = false
            enableRecord()
        }
    }
    
    @IBAction func recordThree(_ sender: Any) {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.record, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        if recordBTNThree.titleLabel?.text == "Record" {
            soundRecorderThree.record()
            recordBTNThree.setTitle("Stop", for: .normal)
            disablePlay()
            recordBTNOne.isEnabled = false
            recordBTNTwo.isEnabled = false
            recordBTNFour.isEnabled = false
        } else {
            soundRecorderThree.stop()
            recordBTNThree.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customThreeRecorded = true
        }
    }
    
    @IBAction func playCustomThree(_ sender: Any) {
        if playBTNThree.titleLabel?.text == "Play" {
            playBTNThree.setTitle("Stop", for: .normal)
            setupPlayerThree()
            stopCustom()
            stopAll()
            disableRecord()
            if soundPlayerThree != nil {
                soundPlayerThree.play()
            }
        } else {
            if soundPlayerThree != nil {
                soundPlayerThree.stop()
            }
            playBTNThree.setTitle("Play", for: .normal)
            recordBTNThree.isEnabled = false
            enableRecord()
        }
    }
    
    @IBAction func recordFour(_ sender: Any) {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.record, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        if recordBTNFour.titleLabel?.text == "Record" {
            soundRecorderFour.record()
            recordBTNFour.setTitle("Stop", for: .normal)
            disablePlay()
            recordBTNOne.isEnabled = false
            recordBTNTwo.isEnabled = false
            recordBTNThree.isEnabled = false
        } else {
            soundRecorderFour.stop()
            recordBTNFour.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customFourRecorded = true
        }
    }
    
    @IBAction func playCustomFour(_ sender: Any) {
        if playBTNFour.titleLabel?.text == "Play" {
            playBTNFour.setTitle("Stop", for: .normal)
            setupPlayerFour()
            stopCustom()
            stopAll()
            disableRecord()
            if soundPlayerFour != nil {
                soundPlayerFour.play()
            }
        } else {
            if soundPlayerFour != nil {
                soundPlayerFour.stop()
            }
            playBTNFour.setTitle("Play", for: .normal)
            recordBTNFour.isEnabled = false
            enableRecord()
        }
    }
    
 //////////////////////////////////////////// SONGS ////////////////////////////////////////////
    func stopAll(){
        hereWeCome.stop()
        hereWeCome.currentTime = 0
        yellowSub.stop()
        yellowSub.currentTime = 0
        hereComesSun.stop()
        hereComesSun.currentTime = 0
        downtown.stop()
        downtown.currentTime = 0
        oneTwoThreeFour.stop()
        oneTwoThreeFour.currentTime = 0
        feelLikeWoman.stop()
        feelLikeWoman.currentTime = 0
        pencilThin.stop()
        pencilThin.currentTime = 0
        rockBaby.stop()
        rockBaby.currentTime = 0
        letItSnow.stop()
        letItSnow.currentTime = 0
        goTellMountain.stop()
        goTellMountain.currentTime = 0
    }
    
    @IBAction func playHereWeCome(_ sender: Any) {
        if !(hereWeCome.isPlaying)
        {
            stopAll()
            stopCustom()
            hereWeCome.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playYellowSubmarine(_ sender: Any) {
        if !(yellowSub.isPlaying)
        {
            stopAll()
            stopCustom()
            yellowSub.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playHereComesTheSun(_ sender: Any) {
        if !(hereComesSun.isPlaying)
        {
            stopAll()
            stopCustom()
            hereComesSun.play()
        }
        else
        {
            stopAll()
        }
    }
    @IBAction func playDowntown(_ sender: Any) {
        if !(downtown.isPlaying)
        {
            stopAll()
            stopCustom()
            downtown.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func play1234(_ sender: Any) {
        if !(oneTwoThreeFour.isPlaying)
        {
            stopAll()
            stopCustom()
            oneTwoThreeFour.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playWoman(_ sender: Any) {
        if !(feelLikeWoman.isPlaying)
        {
            stopAll()
            stopCustom()
            feelLikeWoman.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playPencilThinMustache(_ sender: Any) {
        if !(pencilThin.isPlaying)
        {
            stopAll()
            stopCustom()
            pencilThin.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playRock(_ sender: Any) {
        if !(rockBaby.isPlaying)
        {
            stopAll()
            stopCustom()
            rockBaby.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playLetItSnow(_ sender: Any) {
        if !(letItSnow.isPlaying)
        {
            stopAll()
            stopCustom()
            letItSnow.play()
        }
        else
        {
            stopAll()
        }
    }
    
    @IBAction func playMountain(_ sender: Any) {
        if !(goTellMountain.isPlaying)
        {
            stopAll()
            stopCustom()
            goTellMountain.play()
        }
        else
        {
            stopAll()
        }
    }
}
