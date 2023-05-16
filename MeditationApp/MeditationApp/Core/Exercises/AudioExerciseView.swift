//
//  AudioExerciseView.swift
//  MeditationApp
//
//  Created by Student on 11.05.2023.
//

import SwiftUI

struct AudioExerciseView: View {
    
    @StateObject var meditationVM: MeditationViewModel
    @State private var showPlayer = false
    var body: some View {
        VStack(spacing: 0){
            Image(meditationVM.meditation.image)
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height / 3)
            ZStack{
                Color(red: 24/255, green: 23/255, blue:22/255)
                VStack(alignment: .leading,spacing:24)
                {
                    VStack(alignment: .leading, spacing:8){
                        Text("Music")
                        
                        Text(DateComponentsFormatter.abbreviated.string(from: meditationVM.meditation.duration ) ?? meditationVM.meditation.duration.formatted() + "s")
                    }
                    .font(.subheadline)
                    .textCase(.uppercase)
                    .opacity(0.7)
                    
                    //MARK: Title
                    Text(meditationVM.meditation.title)
                        .font(.title)
                    
                    //MARK: Button
                    Button{
                        showPlayer = true
                        
                    }label:{
                        Label("Play", systemImage: "play.fill").font(.headline).foregroundColor(.black).padding(.vertical, 10).frame(maxWidth: .infinity).background(.white).cornerRadius(20)
                    }
                    
                    //MARK: Description  
                    Text(meditationVM.meditation.description)
                    
                    Spacer()
                }
                .foregroundColor(.white)
                .padding(20)
            }
                    .frame(height: UIScreen.main.bounds.height * 2 / 3)
            }
            .ignoresSafeArea()
            .fullScreenCover(isPresented: $showPlayer){
                PlayerView(meditationVM: meditationVM)
            }
        
    }
}

struct AudioExerciseView_Previews: PreviewProvider {
    static let meditationVM = MeditationViewModel(meditation: Meditation.data)
    static var previews: some View {
        AudioExerciseView(meditationVM: meditationVM)
            .environmentObject(AudioManager() )
    }
}
