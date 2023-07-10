//
//  CustomButtonStyle.swift
//  Hike
//
//  Created by Augustus Onyekachi on 10/07/2023.
//

import Foundation

import SwiftUI

struct CustomGradientButton: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                
                configuration.isPressed ?
                LinearGradient(colors: [.customGrayMedium, .customGrayLight], startPoint: .top, endPoint: .bottom):
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
