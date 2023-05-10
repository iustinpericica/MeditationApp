//
//  ScaffoldView.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 10.05.2023.
//

import SwiftUI

struct ScaffoldView: View {
    var body: some View {
        TabView {
            ExercisesView()
                .tabItem {
                    Label("Exercises", systemImage: "heart.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ScaffoldView_Previews: PreviewProvider {
    static var previews: some View {
        ScaffoldView()
    }
}
