//
//  Player.swift
//  MusicPlayer
//
//  Created by Alexey Tsymlov on 2/23/15.
//  Copyright (c) 2015 Specialist. All rights reserved.
//

import UIKit

class Player{
    var source: String = ""
    var currentTrackIndex: Int?
    var list = Array<String>()
    var isPlaying = false
    
    init(){
        println("Плеер готов к работе!")
    }
    
    func playCurrentIndex(){
        play(list[currentTrackIndex!])
    }
    
    func play(source: String){
        self.source = source
        play()
    }
    
    func play(){
        isPlaying = true
        println("Я играю чудесную музыку из \(source)!")
    }
    
    func stop(){
        isPlaying = false
        println("Воспоизведение остановлено.")
    }
    
    func next(){
        if var unwrapedTrackIndex = currentTrackIndex{
            ++unwrapedTrackIndex
            if unwrapedTrackIndex >= list.count{
                println("Нет треков.")
            }else{
                play(list[unwrapedTrackIndex])
                currentTrackIndex = unwrapedTrackIndex
            }
        }
    }
    
    func forward(){
        if var unwrapedTrackIndex = currentTrackIndex{
            --unwrapedTrackIndex
            if unwrapedTrackIndex < 0 {
                println("Мы в начале списка.")
            }else if unwrapedTrackIndex >= list.count {
                println("Нет треков")
            }else{
                play(list[unwrapedTrackIndex])
                currentTrackIndex = unwrapedTrackIndex
            }
        }
    }
}
