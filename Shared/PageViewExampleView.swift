//
//  PageViewExampleView.swift
//  Shared
//
//  Created by Ilter Cengiz on 6/25/20.
//

import SwiftUI

struct PageViewExampleView: View {

    var body: some View {
        TabView {
            ForEach(0..<10) { index in
                Text("Page \(index + 1)")
                    .tabItem { Text("Page \(index + 1)") }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        .background(Color(.systemGroupedBackground))
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabExampleView_Previews: PreviewProvider {
    static var previews: some View {
        PageViewExampleView()
    }
}
