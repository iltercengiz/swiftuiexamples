//
//  OutlineExample.swift
//  WWDC20
//
//  Created by Ilter Cengiz on 6/27/20.
//

import SwiftUI

struct ItemModel: Identifiable, Hashable {
    let name: String
    let children: [ItemModel]?
    let id = UUID()

    init(name: String, children: [ItemModel]? = nil) {
        self.name = name
        self.children = children
    }
}

struct Canvas: Identifiable, Hashable {
    let name: String
    let item: ItemModel
    let id = UUID()
}

struct OutlineExample: View {

    let model = [
        Canvas(name: "First", item: ItemModel(name: "First", children: [
            ItemModel(name: "Rectangle"),
            ItemModel(name: "Oval"),
            ItemModel(name: "Grouppp", children: [
                ItemModel(name: "Square"),
                ItemModel(name: "Triangle"),
            ]),
            ItemModel(name: "Grouppp", children: [
                ItemModel(name: "Square"),
                ItemModel(name: "Triangle"),
            ])
        ])),
        Canvas(name: "Second", item: ItemModel(name: "Second", children: [
            ItemModel(name: "Rectangle"),
            ItemModel(name: "Oval"),
            ItemModel(name: "Grouppp", children: [
                ItemModel(name: "Square"),
                ItemModel(name: "Triangle"),
            ])
        ])),
        Canvas(name: "Third", item: ItemModel(name: "Third", children: [
            ItemModel(name: "Rectangle"),
            ItemModel(name: "Oval")
        ]))
    ]

    var body: some View {
        List {
            ForEach(model) { canvas in
                Section(header: Text(canvas.name)) {
                    OutlineGroup(canvas.item, children: \.children) {
                        Text($0.name)
                    }
                }
            }
        }
        .listStyle(SidebarListStyle())
    }
}

struct OutlineExample_Previews: PreviewProvider {
    static var previews: some View {
        OutlineExample()
    }
}
