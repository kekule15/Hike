//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Augustus Onyekachi on 10/07/2023.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3. DEPT
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y:12)
            
            // MARK: - 2. LIGHT
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y:3)
                .opacity(0.85)
            
            // MARK: - 1. SURFACE
            
            LinearGradient(colors: [
                .customGreenLight,
               .customGreenMedium
            ],
            startPoint: .top,
            endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}