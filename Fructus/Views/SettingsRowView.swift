//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Arman Khan on 24/09/23.
//

import SwiftUI

struct SettingsRowView: View {
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                
                if content != nil {
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil) {
                    Group {
                        Link(linkLabel!, destination: URL(string: linkDestination!)!)
                        Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    }
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(
                name: "Developer",
                content: "Arman Khan"
            )
            .previewLayout(.sizeThatFits)
            .padding()
            
            SettingsRowView(
                name: "Portfolio",
                linkLabel: "Arman Khan",
                linkDestination: "https://armankhan.dev"
            )
            .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
