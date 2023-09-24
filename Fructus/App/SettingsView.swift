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
                    Text("Hello World")
                } //: VSTACK
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
