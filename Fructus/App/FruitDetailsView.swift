//
//  FruitDetailsView.swift
//  Fructus
//
//  Created by Arman Khan on 23/09/23.
//

import SwiftUI

struct FruitDetailsView: View {
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HEADER
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    
                    // TITLE
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    // HEADLINE
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    // NUTRIENTS
                    FruitNutrientsView(fruit: fruit)
                    
                    // SUBHEADLINE
                    Text("Learn more about \(fruit.title)".uppercased())
                        .fontWeight(.bold)
                        .foregroundColor(fruit.gradientColors[1])
                    
                    // DESCRIPTION
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    // LINK
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                } //: VSTACK
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
            } //: VSTACK
        } //: SCROLL
        .edgesIgnoringSafeArea(.top)
    }
}

// MARK: - PREVIEW

struct FruitDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailsView(
            fruit: fruitsData[0]
        )
    }
}
