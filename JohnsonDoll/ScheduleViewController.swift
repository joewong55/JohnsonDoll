//
//  ScheduleViewController.swift
//  JohnsonDoll
//
//  Created by Joe Wong on 9/30/18.
//  Copyright © 2018 Joe Wong. All rights reserved.
//

import UIKit
import AVFoundation

class ScheduleViewController: UIViewController, AVAudioPlayerDelegate, AVAudioRecorderDelegate {
    
    @IBOutlet var townhouseBTN: UIButton!
    @IBOutlet var recordBTNOne: UIButton!
    
    @IBOutlet var elfBTN: UIButton!
    @IBOutlet var recordBTNTwo: UIButton!
    
    @IBOutlet var lunchBTN: UIButton!
    @IBOutlet var recordBTNThree: UIButton!
    
    @IBOutlet var workoutBTN: UIButton!
    @IBOutlet var recordBTNFour: UIButton!
    
    @IBOutlet var homeBTN: UIButton!
    @IBOutlet var recordBTNFive: UIButton!
 
    var soundRecorderOne : AVAudioRecorder!
    var soundPlayerOne : AVAudioPlayer!
    
    var soundRecorderTwo : AVAudioRecorder!
    var soundPlayerTwo : AVAudioPlayer!
    
    var soundRecorderThree : AVAudioRecorder!
    var soundPlayerThree : AVAudioPlayer!
    
    var soundRecorderFour : AVAudioRecorder!
    var soundPlayerFour : AVAudioPlayer!
    
    var soundRecorderFive : AVAudioRecorder!
    var soundPlayerFive : AVAudioPlayer!
 
    //Used to set up recording stuff
    var fileNameOneSchedule: String = "audioFileOneSchedule.m4a"
    var fileNameTwoSchedule: String = "audioFileTwoSchedule.m4a"
    var fileNameThreeSchedule: String = "audioFileThreeSchedule.m4a"
    var fileNameFourSchedule: String = "audioFileFourSchedule.m4a"
    var fileNameFiveSchedule: String = "audioFileFiveSchedule.m4a"
    
    
    //Flag for if a button was recorded or not
    var customOneRecorded: Bool = false
    var customTwoRecorded: Bool = false
    var customThreeRecorded: Bool = false
    var customFourRecorded: Bool = false
    var customFiveRecorded: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupRecorder()
        //Play buttons are disabled at first before anything is recorded
        townhouseBTN.isEnabled = false
        elfBTN.isEnabled = false
        lunchBTN.isEnabled = false
        workoutBTN.isEnabled = false
        homeBTN.isEnabled = false
    }

    //Recording set up stuff, found online
    func getDocumentsDirectory() -> URL {
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        return paths[0]
    }
    
    //More recording set up stuff
    func setupRecorder() {
        let audioFilenameOneSchedule = getDocumentsDirectory().appendingPathComponent(fileNameOneSchedule)
        let audioFilenameTwoSchedule = getDocumentsDirectory().appendingPathComponent(fileNameTwoSchedule)
        let audioFilenameThreeSchedule = getDocumentsDirectory().appendingPathComponent(fileNameThreeSchedule)
        let audioFilenameFourSchedule = getDocumentsDirectory().appendingPathComponent(fileNameFourSchedule)
        let audioFilenameFiveSchedule = getDocumentsDirectory().appendingPathComponent(fileNameFiveSchedule)
        
        let recordSetting = [ AVFormatIDKey : kAudioFormatAppleLossless,
                              AVEncoderAudioQualityKey : AVAudioQuality.max.rawValue,
                              AVEncoderBitRateKey : 320000,
                              AVNumberOfChannelsKey : 2,
                              AVSampleRateKey : 44100.2] as [String : Any]
        
        do {
            soundRecorderOne = try AVAudioRecorder(url: audioFilenameOneSchedule, settings: recordSetting )
            soundRecorderOne.delegate = self
            soundRecorderOne.prepareToRecord()
        } catch {
            print(error)
        }
        
        do {
            soundRecorderTwo = try AVAudioRecorder(url: audioFilenameTwoSchedule, settings: recordSetting )
            soundRecorderTwo.delegate = self
            soundRecorderTwo.prepareToRecord()
        } catch {
        print(error)
        }
        
        do {
            soundRecorderThree = try AVAudioRecorder(url: audioFilenameThreeSchedule, settings: recordSetting )
            soundRecorderThree.delegate = self
            soundRecorderThree.prepareToRecord()
        } catch {
            print(error)
        }
        
        do {
            soundRecorderFour = try AVAudioRecorder(url: audioFilenameFourSchedule, settings: recordSetting )
            soundRecorderFour.delegate = self
            soundRecorderFour.prepareToRecord()
        } catch {
            print(error)
        }
        
        do {
            soundRecorderFive = try AVAudioRecorder(url: audioFilenameFiveSchedule, settings: recordSetting )
            soundRecorderFive.delegate = self
            soundRecorderFive.prepareToRecord()
        } catch {
            print(error)
        }
    }

    //setupPlayer functions are used to prepare play buttons to play a recorded audio
    func setupPlayerOne() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        let audioFilenameOneSchedule = getDocumentsDirectory().appendingPathComponent(fileNameOneSchedule)
        do {
            soundPlayerOne = try AVAudioPlayer(contentsOf: audioFilenameOneSchedule)
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
        
        let audioFilenameTwoSchedule = getDocumentsDirectory().appendingPathComponent(fileNameTwoSchedule)
        do {
            soundPlayerTwo = try AVAudioPlayer(contentsOf: audioFilenameTwoSchedule)
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
        
        let audioFilenameThreeSchedule = getDocumentsDirectory().appendingPathComponent(fileNameThreeSchedule)
        do {
            soundPlayerThree = try AVAudioPlayer(contentsOf: audioFilenameThreeSchedule)
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
        
        let audioFilenameFourSchedule = getDocumentsDirectory().appendingPathComponent(fileNameFourSchedule)
        do {
            soundPlayerFour = try AVAudioPlayer(contentsOf: audioFilenameFourSchedule)
            soundPlayerFour.delegate = self
            soundPlayerFour.prepareToPlay()
            soundPlayerFour.volume = 1.0
        } catch {
            print(error)
        }
    }
    
    func setupPlayerFive() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        let audioFilenameFiveSchedule = getDocumentsDirectory().appendingPathComponent(fileNameFiveSchedule)
        do {
            soundPlayerFive = try AVAudioPlayer(contentsOf: audioFilenameFiveSchedule)
            soundPlayerFive.delegate = self
            soundPlayerFive.prepareToPlay()
            soundPlayerFive.volume = 1.0
        } catch {
            print(error)
        }
    }
    
    //Checks if audio is done recorded, enables play buttons to be able to be clicked
    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if customOneRecorded == true
        {
            townhouseBTN.isEnabled = true
        }
        if customTwoRecorded == true
        {
            elfBTN.isEnabled = true
        }
        if customThreeRecorded == true
        {
            lunchBTN.isEnabled = true
        }
        if customFourRecorded == true
        {
            workoutBTN.isEnabled = true
        }
        if customFiveRecorded == true
        {
            homeBTN.isEnabled = true
        }
    }
    
    //Checks if audio is done playing
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        recordBTNOne.isEnabled = true
        townhouseBTN.setTitle("Play", for: .normal)
        
        recordBTNTwo.isEnabled = true
        elfBTN.setTitle("Play", for: .normal)
        
        recordBTNThree.isEnabled = true
        lunchBTN.setTitle("Play", for: .normal)
        
        recordBTNFour.isEnabled = true
        workoutBTN.setTitle("Play", for: .normal)
        
        recordBTNFive.isEnabled = true
        homeBTN.setTitle("Play", for: .normal)
    }
    
    //Ignore this function for now, not called anywhere yet
    func stopCustom(){
        if townhouseBTN.isEnabled == true
        {
            if soundPlayerOne != nil {
                if soundPlayerOne.isPlaying
                {
                    soundPlayerOne.stop()
                    soundPlayerOne.currentTime = 0
                }
            }
        }
        
        if elfBTN.isEnabled == true
        {
            if soundPlayerTwo != nil {
                if soundPlayerTwo.isPlaying
                {
                    soundPlayerTwo.stop()
                    soundPlayerTwo.currentTime = 0
                }
            }
        }
        
        if lunchBTN.isEnabled == true
        {
            if soundPlayerThree != nil {
                if soundPlayerThree.isPlaying
                {
                    soundPlayerThree.stop()
                    soundPlayerThree.currentTime = 0
                }
            }
        }
        
        if workoutBTN.isEnabled == true
        {
            if soundPlayerFour != nil {
                if soundPlayerFour.isPlaying
                {
                    soundPlayerFour.stop()
                    soundPlayerFour.currentTime = 0
                }
            }
        }
        
        if homeBTN.isEnabled == true
        {
            if soundPlayerFive != nil {
                if soundPlayerFive.isPlaying
                {
                    soundPlayerFive.stop()
                    soundPlayerFive.currentTime = 0
                }
            }
        }
    }
    
    func disableRecord(){
        recordBTNOne.isEnabled = false
        recordBTNTwo.isEnabled = false
        recordBTNThree.isEnabled = false
        recordBTNFour.isEnabled = false
        recordBTNFive.isEnabled = false
    }
    
    func enableRecord(){
        recordBTNOne.isEnabled = true
        recordBTNTwo.isEnabled = true
        recordBTNThree.isEnabled = true
        recordBTNFour.isEnabled = true
        recordBTNFive.isEnabled = true
    }
    
    func disablePlay(){
        townhouseBTN.isEnabled = false
        elfBTN.isEnabled = false
        lunchBTN.isEnabled = false
        workoutBTN.isEnabled = false
        homeBTN.isEnabled = false
    }
    
    func enablePlay(){
        if customOneRecorded == true
        {
            townhouseBTN.isEnabled = true
        }
        if customTwoRecorded == true
        {
            elfBTN.isEnabled = true
        }
        if customThreeRecorded == true
        {
            lunchBTN.isEnabled = true
        }
        if customFourRecorded == true
        {
            workoutBTN.isEnabled = true
        }
        if customFiveRecorded == true
        {
            homeBTN.isEnabled = true
        }
    }
    
    //The next 5 function pairs (record___ and then play___ work the same way)
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
            recordBTNFive.isEnabled = false
        } else {
            soundRecorderOne.stop()
            recordBTNOne.setTitle("Record", for: .normal)
            customOneRecorded = true
            enablePlay()
            enableRecord()
        }
    }
    
    @IBAction func playTownhouse(_ sender: Any) {
        if townhouseBTN.titleLabel?.text == "Play" {
            townhouseBTN.setTitle("Stop", for: .normal)
            recordBTNOne.isEnabled = false
            disableRecord()
            setupPlayerOne()
            stopCustom()
            if soundPlayerOne != nil {
                soundPlayerOne.play() //Error occurs here
            }
        } else {
            if soundPlayerOne != nil {
                soundPlayerOne.stop()
            }
            townhouseBTN.setTitle("Play", for: .normal)
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
            recordBTNFive.isEnabled = false
        } else {
            soundRecorderTwo.stop()
            recordBTNTwo.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customTwoRecorded = true
        }
    }
    
    @IBAction func playElm(_ sender: Any) {
        if elfBTN.titleLabel?.text == "Play" {
            elfBTN.setTitle("Stop", for: .normal)
            setupPlayerTwo()
            stopCustom()
            disableRecord()
            if soundPlayerTwo != nil {
                soundPlayerTwo.play()
            }
        } else {
            if soundPlayerTwo != nil {
                soundPlayerTwo.stop()
            }
            elfBTN.setTitle("Play", for: .normal)
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
            recordBTNFive.isEnabled = false
        } else {
            soundRecorderThree.stop()
            recordBTNThree.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customThreeRecorded = true
        }
    }
    
    @IBAction func playLunch(_ sender: Any) {
        if lunchBTN.titleLabel?.text == "Play" {
            lunchBTN.setTitle("Stop", for: .normal)
            setupPlayerThree()
            stopCustom()
            disableRecord()
            if soundPlayerThree != nil {
                soundPlayerThree.play()
            }
        } else {
            if soundPlayerThree != nil {
                soundPlayerThree.stop()
            }
            lunchBTN.setTitle("Play", for: .normal)
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
            recordBTNFive.isEnabled = false
        } else {
            soundRecorderFour.stop()
            recordBTNFour.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customFourRecorded = true
        }
    }
    
    @IBAction func playWorkout(_ sender: Any) {
        if workoutBTN.titleLabel?.text == "Play" {
            workoutBTN.setTitle("Stop", for: .normal)
            setupPlayerFour()
            stopCustom()
            disableRecord()
            if soundPlayerFour != nil {
                soundPlayerFour.play()
            }
        } else {
            if soundPlayerFour != nil {
                soundPlayerFour.stop()
            }
            workoutBTN.setTitle("Play", for: .normal)
            recordBTNFour.isEnabled = false
            enableRecord()
        }
    }
    
    @IBAction func recordFive(_ sender: Any) {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.record, mode: .default)
            try audioSession.setActive(true)
        } catch let error as NSError {
            print(error.description)
        }
        
        if recordBTNFive.titleLabel?.text == "Record" {
            soundRecorderFive.record()
            recordBTNFive.setTitle("Stop", for: .normal)
            disablePlay()
            recordBTNOne.isEnabled = false
            recordBTNTwo.isEnabled = false
            recordBTNThree.isEnabled = false
            recordBTNFour.isEnabled = false
        } else {
            soundRecorderFive.stop()
            recordBTNFive.setTitle("Record", for: .normal)
            enablePlay()
            enableRecord()
            customFiveRecorded = true
        }
    }
    
    @IBAction func playHome(_ sender: Any) {
        if homeBTN.titleLabel?.text == "Play" {
            homeBTN.setTitle("Stop", for: .normal)
            setupPlayerFive()
            stopCustom()
            disableRecord()
            if soundPlayerFive != nil {
                soundPlayerFive.play()
            }
        } else {
            if soundPlayerFive != nil {
                soundPlayerFive.stop()
            }
            homeBTN.setTitle("Play", for: .normal)
            recordBTNFive.isEnabled = false
            enableRecord()
        }
    }
}
