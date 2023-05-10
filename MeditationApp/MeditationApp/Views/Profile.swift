//
//  Profile.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 10.05.2023.
//

import SwiftUI
import Firebase

struct Profile: View {
    var body: some View {
        VStack {
            Text("Profile")
            Button(action: {
                do {
                    try Auth.auth().signOut();
                }
                catch {
                    print("Error at logout")
                }
            }) {
                Text("Logout")
            }
        }
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}
