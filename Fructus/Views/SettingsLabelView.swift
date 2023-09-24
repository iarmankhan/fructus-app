//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Arman Khan on 24/09/23.
//

import SwiftUI

struct SettingsLabelView: View {
    var label: String
    var labelIcon: String
    
    var body: some View {
        HStack {
            Text(label.uppercased())
                .fontWeight(.bold)
            
            Spacer()
            
            Image(systemName: labelIcon)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(
            label: "Fructus",
            labelIcon: "info.circle"
        )
        .previewLayout(.sizeThatFits)
    }
}
