//
//  ContentViewAudio.swift
//  MeditationApp
//
//  Created by Student on 16.05.2023.
//

import SwiftUI

struct ContentViewAudio: View {
    var body: some View {
        AudioExerciseView(meditationVM: MeditationViewModel(meditation: Meditation.data))
    }
}

struct ContentViewAudio_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewAudio().environmentObject(AudioManager())
    }
}
