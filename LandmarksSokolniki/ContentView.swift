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
            
            Text("Sokolniki")
                .font(.title)
                .padding()
            
            HStack {
                Text("Moscow urban park")
                    
                Spacer()
                
                Text("Russia")
            }
            .font(.subheadline)
        }
        
    }
}

#Preview {
    ContentView()
}
