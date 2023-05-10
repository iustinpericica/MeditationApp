//
//  MeditationAppApp.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 08.05.2023.
//

import SwiftUI
import Firebase


@main
struct MeditationApp: App {
    @StateObject var viewModel = AuthViewModel()
    var body: some Scene {
      WindowGroup {
          ContentView()
              .environmentObject(viewModel)
      }
    }
    
    init() {
        FirebaseApp.configure()
    }
  }
