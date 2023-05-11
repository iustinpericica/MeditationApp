//
//  AudioExerciseView.swift
//  MeditationApp
//
//  Created by Student on 11.05.2023.
//

import SwiftUI

struct AudioExerciseView: View {
    var body: some View {
        VStack(spacing: 0){
            Image("image")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            ZStack{
                Color(red: 24/255, green: 23/255, blue:22/255)
                VStack(alignment: .leading,spacing:24)
                {
                    VStack(alignment: .leading, spacing:8){
                        Text("Music")
                        
                        Text("0s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
                    .frame(height: UIScreen.main.bounds.height * 2 / 3)
            }
            .ignoresSafeArea()
        
    }
}

struct AudioExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        AudioExerciseView()
    }
}
