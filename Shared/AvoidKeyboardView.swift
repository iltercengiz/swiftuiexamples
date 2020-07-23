//
//  AvoidKeyboardView.swift
//  WWDC20
//
//  Created by Ilter Cengiz on 7/23/20.
//

import SwiftUI

struct AvoidKeyboardView: View {

    @State var text: String = ""

    var body: some View {
        VStack {
            Color.blue
                .edgesIgnoringSafeArea(.all)
        }
        .overlay(
            VStack {
                Spacer()
                TextField("Enter something here", text: $text)
                    .padding()
                    .background(Color.white)
            }
            .padding()
        )
    }
}

struct AvoidKeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        AvoidKeyboardView()
    }
}
