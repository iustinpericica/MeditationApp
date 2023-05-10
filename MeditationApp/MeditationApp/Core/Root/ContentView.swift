//
//  ContentView.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 08.05.2023.
//

import SwiftUI
import Firebase

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    @State private var userIsLoggedIn = false

    var body: some View {
        Text("Success")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
