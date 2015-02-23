//
//  ViewController.swift
//  MusicPlayer
//
//  Created by Alexey Tsymlov on 2/23/15.
//  Copyright (c) 2015 Specialist. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player = Player()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func play() {
        let classicAlbum = ["Шопен Ноктюрн №2", "Чайковский 4-ая Симфония", "Чайковский Лебединое Озеро"]
        player.list = classicAlbum
        player.currentTrackIndex = 0
        player.playCurrentIndex()
    }

    @IBAction func next() {
        player.next()
    }
    
    @IBAction func forward() {
        player.forward()
    }
}

