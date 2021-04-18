//
//  InfoView.swift
//  Slot Machine
//
//  Created by Stanly Shiyanovskiy on 15.04.2021.
//

import SwiftUI

struct InfoView: View {
    
    @Environment(\.presentationMode)
    var presentationMode
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            LogoView()
            
            Spacer()
            
            Form {
                Section(header: Text("About the application")) {
                    FormRowView(firstItem: "Application", secondItem: "Slot Machine")
                    FormRowView(firstItem: "Platforms", secondItem: "iPone, iPad, Mac")
                    FormRowView(firstItem: "Developer", secondItem: "Stanly Shiyanovskiy")
                    FormRowView(firstItem: "Designer", secondItem: "Robert Petras")
                    FormRowView(firstItem: "Music", secondItem: "Dan Labowitz")
                    FormRowView(firstItem: "Twitter", secondItem: "@stsmall1985")
                    FormRowView(firstItem: "Copyright", secondItem: "© 2021 All rights reserved")
                    FormRowView(firstItem: "Version", secondItem: "1.0.0")
                }
            }
            .font(.system(.body, design: .rounded))
        }
        .padding(.top, 40)
        .overlay(
            Button(action: {
                audioPlayer?.stop()
                presentationMode.wrappedValue.dismiss()
            }) {
                Image(systemName: "xmark.circle")
                    .font(.title)
            }
            .padding(.top, 30)
            .padding(.trailing, 20)
            .accentColor(.secondary)
            , alignment: .topTrailing
        )
        .onAppear(perform: {
            playSound(sound: "background-music", type: "mp3")
        })
    }
}

struct FormRowView: View {
    
    var firstItem: String
    var secondItem: String
    
    var body: some View {
        HStack {
            Text(firstItem)
                .foregroundColor(.gray)
            Spacer()
            Text(secondItem)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}
