//
//  Scaffold.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 10.05.2023.
//

import SwiftUI

struct Scaffold: View {
    var body: some View {
        TabView {
            Execises()
                .tabItem() {
                    Image(systemName: "brain")
                }
            Profile()
                .tabItem() {
                    Image(systemName: "person.crop.circle.fill")
                }
        }
    }
}

struct Scaffold_Previews: PreviewProvider {
    static var previews: some View {
        Scaffold()
    }
}
