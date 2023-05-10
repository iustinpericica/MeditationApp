//
//  ExercisesView.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 10.05.2023.
//

import SwiftUI

struct ExercisesView: View {
    var body: some View {
        NavigationStack {
            VStack (alignment: .leading) {
                Text("Hello").font(.title).bold()
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<5) {_ in
                            NavigationLink{
                                BreatheExerciseView()
                            }  label: {
                                ExerciseCardView(exerciseName: "Deep breaths", exerciseDescription: "Lorem ipsum, Lorem ipsum")
                            }
                        }
                    }
                }
            }
            .padding(.leading, 30)
        }
        
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
