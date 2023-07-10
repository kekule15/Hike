//
//  CardView.swift
//  Hike
//
//  Created by Augustus Onyekachi on 10/07/2023.
//

import SwiftUI

struct CardView: View {
    
    
    @State private var randomNumber : Int = 1
    @State private var imageNumber : Int = 1
    
    @State private var isShowingSheet : Bool = false
    
    // MARK: FUNCTIONS
    
    func randomImage(){
        
        repeat{
            randomNumber = Int.random(in: 1...5)
        }while  randomNumber  ==   imageNumber
        
        imageNumber = randomNumber
    }
    var body: some View {
        ZStack {
            CustomBackgroundView()
            VStack {
                // MARK: - HEADER
                
                VStack(alignment: .leading){
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                        .foregroundStyle(LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                        Button {
                            // ACTION: TOGGLE BOTTOM SHEET
                            isShowingSheet.toggle()
                        }label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsScreen()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                .padding(.horizontal, 30)
                
                
                // MARK: - MAIN CONTENT
                ZStack {
                   CustomCircleView()
                    
                    Image("image-\(randomNumber)")
                        .resizable()
                    .scaledToFit()
                    .animation(.default, value: imageNumber)
                }
                // MARK: - FOOTER
                Button{
                    
                    // ACTION: DO SOMETHING
                    randomImage()
                    
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(
                            color: .black.opacity(0.25),
                            radius: 0.25,x: 1, y: 2)
                }
                .buttonStyle(CustomGradientButton())
               
            }
        }
        .frame(
        width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
