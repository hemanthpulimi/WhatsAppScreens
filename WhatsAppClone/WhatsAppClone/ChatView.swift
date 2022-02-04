//
//  ChatView.swift
//  WhatsAppClone
//
//  Created by Hemanth Pulimi on 04/02/22.
//

import SwiftUI

struct ChatCell: View {
    var name: String
    var body: some View {
        HStack {
            Image(name)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .leading)
                .clipShape(Circle())
            
            VStack(alignment: .leading) {
                Text(name)
                    .bold()
                Text("last seen \(Int.random(in: 1...10)) minutes ago")
            }
        }
    }
}

struct ChatView: View {
    var friends = ["Mark", "Ted", "Tim"]
    @State private var showingNewChat = false
    var body: some View {
        NavigationView {
            List(friends, id: \.self) { friend in
                NavigationLink {
                    Text("Message \(friend)")
                } label: {
                    ChatCell(name: friend)
                }
            }
            .navigationTitle("Chats")
            .toolbar {
                Button {
                    showingNewChat = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showingNewChat) {
                AddChatView()
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
