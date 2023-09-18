//
//  CircleImage.swift
//  LandmarksSokolniki
//
//  Created by Алексей Пурис on 14.09.2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("MainImage")
            .clipShape(Circle())
            .overlay {Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
            .aspectRatio(contentMode: .fit)
    }
}


#Preview {
    CircleImage()
}
