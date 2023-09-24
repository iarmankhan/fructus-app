//
//  SettingsView.swift
//  Fructus
//
//  Created by Arman Khan on 24/09/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERITES
    @Environment(\.dismiss) var dismiss
    
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(
                                label: "Fructus",
                                labelIcon: "info.circle"
                            )
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                                .padding(.leading, 2)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox(
                        label:
                            SettingsLabelView(
                                label: "Application",
                                labelIcon: "apps.iphone"
                            )
                    ) {
                        SettingsRowView(name: "Developer", content: "Arman Khan")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16+")
                        SettingsRowView(
                            name: "Website",
                            linkLabel: "Arman Khan",
                            linkDestination: "https://armankhan.dev"
                        )
                        SettingsRowView(
                            name: "Twitter",
                            linkLabel: "@codingwitharman",
                            linkDestination: "https://twitter.com/codingwitharman"
                        )
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                    // MARK: - SECTION 3
                    
                } //: VSTACK
                .padding()
                .padding(.top, 10)
            } //: SCROLL
            .navigationTitle("Settings")
            .toolbar {
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "xmark")
                }
            }
        }
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
