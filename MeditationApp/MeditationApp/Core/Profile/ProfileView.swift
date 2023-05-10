//
//  ProfileView.swift
//  MeditationApp
//
//  Created by Iustin Pericica on 10.05.2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        List {
            Section {
                Text("IP")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 72, height: 72)
                    .background(Color(.systemGray3))
                    .clipShape(Circle())
                
                VStack {
                    Text("IUSTIN PERICICA")
                        .fontWeight(.semibold)
                        .padding(.top, 4)
                    
                    Text("iustin@test.com")
                        .font(.footnote)
                        .accentColor(.gray)
                }
            }
            
            Section("General") {
                HStack{
                    SettingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                    Spacer()
                    Text("1.0.0")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            
            Section("Account") {
                Button {
                    print("Sign out..")
                } label: {
                    SettingsRowView(imageName: "arrow.left.circle.fill", title: "Sign out", tintColor: .red)
                }
                
                Button {
                    print("Delete account")
                } label: {
                    SettingsRowView(imageName: "xmark.circle.fill", title: "Delete account", tintColor: .red)
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
