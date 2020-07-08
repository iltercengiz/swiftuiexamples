//
//  VerticalGridView.swift
//  Shared
//
//  Created by Ilter Cengiz on 6/25/20.
//

import SwiftUI

struct VerticalGridView: View {

    private let data = (0...255).map { $0 }
    private let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView(.vertical) {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(data, id: \.self) { item in
                    Text("Item #\(item)")
                        .padding(.all, 10)
                        .frame(maxWidth: .infinity, minHeight: 44)
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
        }
        .padding(.all, 10)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
    }
}
