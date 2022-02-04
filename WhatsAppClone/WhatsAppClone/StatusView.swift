//
//  StatusView.swift
//  WhatsAppClone
//
//  Created by Hemanth Pulimi on 04/02/22.
//

import SwiftUI

struct StatusCell: View {
    var name: String
    
    var body: some View {
        HStack {
            Image(name)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.blue, lineWidth: 4)
                }
                .frame(width: 80, height: 80)
            Text(name)
        }
    }
}

struct StatusView: View {
    var body: some View {
        NavigationView {
            Form {
                HStack {
                    Image("Hemanth")
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.blue, lineWidth: 4)
                        }
                        .frame(width: 80, height: 80)
                    
                    VStack(alignment: .leading) {
                        Text("My Status")
                            .font(.title3)
                            .bold()
                        Text("Add to my status")
                    }
                    
                    Spacer()
                    
                    Image(systemName: "camera")
                    Image(systemName: "pencil")

                }
                
                
                Section {
                    StatusCell(name: "Mark")
                    StatusCell(name: "Ted")
                    StatusCell(name: "Tim")
                    
                } header: {
                    Text("UPDATES")
                }
                .font(.headline)
            }
            .navigationTitle("Status")
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
