//
//  ViewController.swift
//  AudioPalyerTest
//
//  Created by Andrii on 11/29/18.
//  Copyright © 2018 Andrii. All rights reserved.
//


import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()
    
    @IBAction func Play(_ sender: UIButton) {
        player.play()
    }
    @IBAction func Stop(_ sender: UIButton) {
        player.stop()
    }
    @IBAction func Repaly(_ sender: UIButton) {
        player.currentTime = 0 
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do{
         let audioPath = Bundle.main.path(forResource: "song", ofType: "mp3")
            try player = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }catch{
            //ERRORS
        }
        
    }


}

