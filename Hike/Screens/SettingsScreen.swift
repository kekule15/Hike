//
//  SettingsScreen.swift
//  Hike
//
//  Created by Augustus Onyekachi on 10/07/2023.
//

import SwiftUI

struct SettingsScreen: View {
    var body: some View {
        
        List {
            // MARK: HEADER SECTION
            
            Section {
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top, 8)
                
                
                VStack {
                    
                    Text("Where can you find \nperfect tracks")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The Hike which looks gorgeous in photos but is even better one you are actually there. The hike that you hope to do someday. \nFind the best  day hikes in the app")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            
            // MARK: ICON SECTION
            
            
            
            
            
            
            // MARK: ABOUT SECTION
            
            Section (header: Text("ABOUT THE APP"), footer: HStack{
                Spacer()
                Text("Copyright © All right reserved 2023")
                Spacer()
                
            }
                .padding(.vertical, 8)
            ) {
                CustomListRowView(rowLable: "Application", rowContent: "Hike", rowIcon: "apps.iphone", rowTintColor: .blue)
                
                CustomListRowView(rowLable: "Compactibility", rowContent: "iOS, iPadOS", rowIcon: "info.circle", rowTintColor: .red)
                
                CustomListRowView(rowLable: "Technology", rowContent: "Swift", rowIcon: "swift", rowTintColor: .orange)
                
                CustomListRowView(rowLable: "Version", rowContent: "1.0", rowIcon: "gear", rowTintColor: .purple)
                
            
                CustomListRowView(rowLable: "Developer", rowContent: "RBS", rowIcon: "ellipsis.curlybraces", rowTintColor: .mint)
                
                CustomListRowView(rowLable: "Designer", rowContent: "Kekule", rowIcon: "paintpalette", rowTintColor: .pink)
                
                CustomListRowView(rowLable: "Website",
                                  rowContent: nil,
                                  rowIcon: "globe",
                                  rowTintColor: .indigo,
                                  rowLinkLabel: "Credo Academy",
                                  rowLinkDestination: "https://credo.academy"
                )
            }
            
        }
        

    }
}

struct SettingsScreen_Previews: PreviewProvider {
    static var previews: some View {
        SettingsScreen()
    }
}
