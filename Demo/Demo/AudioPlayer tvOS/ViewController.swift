//
//  ViewController.swift
//  AudioPlayer Sample
//
//  Created by Tom Baranes on 17/01/16.
//  Copyright © 2016 tbaranes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    
    var sound1: AudioPlayer?
    var sound2: AudioPlayer?

    // MARK: Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            sound1 = try AudioPlayer(fileName: "sound1.caf")
            sound1?.numberOfLoops = -1
            sound2 = try AudioPlayer(fileName: "sound2.caf")
            sound1?.volume = 0.5
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
    
}

