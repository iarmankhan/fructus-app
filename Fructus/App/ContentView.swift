//
//  ContentView.swift
//  Fructus
//
//  Created by Arman Khan on 23/09/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowingSettings: Bool = false
   
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(
                        value: fruit
                    ) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationDestination(for: Fruit.self) { link in
                FruitDetailsView(fruit: link)
            }
            .listStyle(.inset)
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings.toggle()
                } label: {
                    Image(systemName: "gear")
                }.sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
