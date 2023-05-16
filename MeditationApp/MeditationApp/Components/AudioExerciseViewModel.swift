//
//  AudioExerciseViewModel.swift
//  MeditationApp
//
//  Created by Student on 16.05.2023.
//

import Foundation

final class MeditationViewModel:ObservableObject{
    private(set) var meditation: Meditation
    
    init(meditation: Meditation){
        self.meditation = meditation
    }
}

struct Meditation{
    let id = UUID()
    let title: String
    let description: String
    let duration: TimeInterval
    let track: String
    let image: String
    
    static let data = Meditation(title: "Relaxing Meditation Music", description: "Clear your mind and slumber into nothingness. Allocate only a few moments for a quick breather.", duration: 314, track: "meditation1", image: "image")
    
    
}
