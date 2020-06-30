//
//  ContentView.swift
//  FixedFlexibleAdaptiveLayoutsInLazyVGrid
//
//  Created by Abdelrahman Mohamed on 30.06.2020.
//

import SwiftUI

struct ContentView: View {

    let columns: [GridItem] = [
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100)),
        GridItem(.fixed(100))
    ]

    var body: some View {

        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(1..<100) { _ in
                        Rectangle()
                            .fill(Color.red)
                            .aspectRatio(contentMode: .fit)
                    }
                }
            }
            .navigationTitle("Fixed, Flexible, Adaptive Layouts in LazyVGrid")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 11 Pro Max")
        }
    }
}
