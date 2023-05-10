//
//  ExerciseCardView.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 10.05.2023.
//

import SwiftUI

struct ExerciseCardView: View {
    var exerciseName = ""
    var exerciseDescription = ""
    var body: some View {
        VStack(alignment: .leading) {
            ZStack {
                Rectangle()
                    .frame(width: 300, height: 200)
                    .foregroundColor(Color("Main"))
                Image("plant")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 120)
            }
                
            Text(exerciseName)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.horizontal, 16)
            
            Text(exerciseDescription)
                .font(.subheadline)
                .lineLimit(3)
                .padding(.top, 4)
                .padding(.horizontal, 16)
                .foregroundColor(.gray)
            Spacer()
        }
        .frame(width: 300, height: 340)
        .background(.white)
        .cornerRadius(30)
    }
}

struct ExerciseCardView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseCardView(exerciseName: "Deep breaths", exerciseDescription: "Lorem ipsum lorem ipsum lorem ipsum lorem ipsum")
    }
}
