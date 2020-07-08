//
//  ColorPickerView.swift
//  Shared
//
//  Created by Ilter Cengiz on 6/25/20.
//

import SwiftUI

struct ColorPickerView: View {

    @State var selectedColor: Color = .black

    var body: some View {
        VStack {
            Label("New tag", systemImage: "tag.fill")
                .font(.title)
                .foregroundColor(selectedColor)
            ColorPicker("Select tag color", selection: $selectedColor, supportsOpacity: false)
                .padding()
        }
    }
}

struct ColorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView()
    }
}
