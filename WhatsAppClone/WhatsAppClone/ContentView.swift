//
//  ContentView.swift
//  WhatsAppClone
//
//  Created by Hemanth Pulimi on 04/02/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StatusView()
                .tabItem {
                    Image(systemName: "circle")
                    Text("Status")
                }
            
            ChatView()
                .tabItem {
                    Image(systemName: "message")
                    Text("chats")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
