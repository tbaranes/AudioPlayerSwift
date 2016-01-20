//
//  ViewController.swift
//  AudioPlayer Sample
//
//  Created by Tom Baranes on 17/01/16.
//  Copyright © 2016 tbaranes. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    // MARK: Properties
    
    var sound1: AudioPlayer?
    var sound2: AudioPlayer?
    
    // MARK: Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            sound1 = try AudioPlayer(fileName: "sound1.caf")
            sound2 = try AudioPlayer(fileName: "sound2.caf")
        } catch {
            print("Sound initialization failed")
        }
    }
    
    // MARK: IBAction
    
    @IBAction func playSound1Pressed(sender: AnyObject) {
        sound1?.play()
    }
    
    @IBAction func playSound2Pressed(sender: AnyObject) {
        sound2?.play()
    }
    
    @IBAction func stopSound1Pressed(sender: AnyObject) {
        sound1?.stop()
    }
    
    @IBAction func stopSound2Pressed(sender: AnyObject) {
        sound2?.stop()
    }
    
    @IBAction func sound1LoopPressed(sender: NSButton) {
        sound1?.numberOfLoops = sender.state == NSOnState ? -1 : 0
    }
    
    @IBAction func sound2LoopPressed(sender: NSButton) {
        sound2?.numberOfLoops = sender.state == NSOnState ? -1 : 0
    }
    
    @IBAction func sound1VolumeValueDidChange(sender: NSSlider) {
        sound1?.volume = Float(sender.doubleValue)
    }
    
    @IBAction func sound2VolumeValueDidChange(sender: NSSlider) {
        sound2?.volume = Float(sender.doubleValue)
    }

}

