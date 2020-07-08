//
//  HorizontalGridView.swift
//  WWDC20
//
//  Created by Ilter Cengiz on 6/27/20.
//

import SwiftUI

struct HorizontalGridView: View {

    private let data = (0...255).map { $0 }
    private let rows = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 10) {
                ForEach(data, id: \.self) { item in
                    Text("Item #\(item)")
                        .frame(minWidth: 100, maxHeight: .infinity)
                        .background(Color(hue: Double(item)/255.0, saturation: 0.32, brightness: 1.0))
                        .clipShape(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                        )
                        .overlay(
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .strokeBorder(Color.blue, style: StrokeStyle(), antialiased: true)
                        )
                }
            }
            .padding(.all, 10) // To constrain this within safe area
        }
//        .padding(.all, 10)
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
