//
//  ContentView.swift
//  LandmarksSokolniki
//
//  Created by Алексей Пурис on 14.09.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -125)
                .padding(.bottom, -130)
            
            VStack (alignment: .leading){
                
                Text("Сокольники")
                    .font(.title)
                    .padding()
                
                HStack {
                    Text("Московский городской парк")
                        
                    Spacer()
                    
                    Text("Россия")
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("О парке Сокольники")
                    .font(.title2)
                Text("Здесь описательный текст.")
            }
        }
        .padding(.all)
        
    }
}

#Preview {
    ContentView()
}
