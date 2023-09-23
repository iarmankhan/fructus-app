//
//  StartButtonView.swift
//  Fructus
//
//  Created by Arman Khan on 23/09/23.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    
    var body: some View {
        Button {
            // Some action
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule()
                    .strokeBorder(.white, lineWidth: 1.25)
            )
        } //: BUTTON
        .accentColor(.white)
    
    }
}

// MARK: - PREVIEW

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
