//
//  CustomListRowView.swift
//  Hike
//
//  Created by Augustus Onyekachi on 11/07/2023.
//

import SwiftUI

struct CustomListRowView: View {
    // MARK: - PROPERTIES OR PARAMETERS FOR THIS VIEW
    
    
    @State var rowLable : String
    @State var rowContent : String? = nil
    @State var rowIcon : String
    @State var rowTintColor : Color
    
    @State var rowLinkLabel : String? = nil
    
    @State var rowLinkDestination : String? = nil
    
    
    var body: some View {
        LabeledContent {
            if rowContent != nil{  Text(rowContent!)
                    .foregroundColor(.primary)
                .fontWeight(.heavy)}
            else if rowLinkLabel != nil {
                Link(destination: URL(string: rowLinkDestination!)!, label:{
                    Text(rowLinkLabel!)
                })
                .foregroundColor(.pink)
                .fontWeight(.semibold)
            }
            else {
                EmptyView()
            }
        } label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                }
                Text(rowLable)
            }
        }    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(rowLable: "Website",
                              rowContent:nil,
                              rowIcon: "globe",
                              rowTintColor: .pink,
                              rowLinkLabel: "Credo Academy",
                              rowLinkDestination: "https://credo.academy"
                              
            )
        }
    }
}
