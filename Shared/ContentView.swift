//
//  ContentView.swift
//  Shared
//
//  Created by Ilter Cengiz on 6/27/20.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationView {
            Sidebar()
            Text("Select a view")
        }
    }
}

struct Sidebar: View {

    enum Row: String, CaseIterable {
        case colorPicker = "Color Picker"
        case verticalGrid = "Vertical Grid"
        case horizontalGrid = "Horizontal Grid"
        case progress = "Progress"
        case pageView = "Page View"
        case textEditor = "Text Editor"
        case clipping = "Clipping"
        case outline = "Outline"
        case avoidKeyboard = "Avoid Keyboard"

        @ViewBuilder var destination: some View {
            switch self {
            case .clipping:
                ClippingExampleView()
            case .colorPicker:
                ColorPickerView()
            case .horizontalGrid:
                HorizontalGridView()
            case .outline:
                OutlineExample()
            case .progress:
                ProgressExampleView()
            case .pageView:
                PageViewExampleView()
            case .textEditor:
                TextEditorView()
            case .verticalGrid:
                VerticalGridView()
            case .avoidKeyboard:
                AvoidKeyboardView()
            }
        }
    }
    private let rows = Row.allCases

    var body: some View {
        List {
            ForEach(rows, id: \.self) { row in
                NavigationLink(
                    destination: row.destination,
                    label: {
                        Text(row.rawValue)
                    })
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
