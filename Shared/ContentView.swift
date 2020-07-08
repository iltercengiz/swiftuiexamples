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

        var destination: AnyView {
            switch self {
            case .clipping:
                return AnyView(ClippingExampleView())
            case .colorPicker:
                return AnyView(ColorPickerView())
            case .horizontalGrid:
                return AnyView(HorizontalGridView())
            case .outline:
                return AnyView(OutlineExample())
            case .progress:
                return AnyView(ProgressExampleView())
            case .pageView:
                return AnyView(PageViewExampleView())
            case .textEditor:
                return AnyView(TextEditorView())
            case .verticalGrid:
                return AnyView(VerticalGridView())
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
