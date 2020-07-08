//
//  ContentView.swift
//  Shared
//
//  Created by Ilter Cengiz on 6/25/20.
//

import SwiftUI

struct TextEditorView: View {

    @State var text: String = "Hello, world!"

    var body: some View {
        VStack {
            TextEditor(text: $text)
        }
        .padding(.all, 1) // Needed to move TextEditor within safe area insets
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        TextEditorView()
    }
}
