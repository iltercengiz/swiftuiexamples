//
//  ProgressExampleView.swift
//  Shared
//
//  Created by Ilter Cengiz on 6/25/20.
//

import SwiftUI

struct ProgressExampleView: View {
    var body: some View {
        VStack(spacing: 20) {
            Spacer()
            ProgressView()
                .padding(.all, 10)
            ProgressView("Downloading...", value: 32, total: 100)
            ProgressView("Loading...")
                .foregroundColor(.black)
                .font(.caption)
                .padding(.all, 10)
                .background(Color(.systemGroupedBackground))
                .clipShape(RoundedRectangle(cornerRadius: 16.0, style: .continuous))
                .overlay(RoundedRectangle(cornerRadius: 16.0, style: .continuous).stroke(Color.blue, lineWidth: 1.0/UIScreen.main.scale))
            ProgressView(value: 0.3, total: 1.0)
            ProgressView("Downloading...", value: 0.32)
                .progressViewStyle(CircularProgressViewStyle(tint: .green)) // Still defaults to activity indicator
                .padding(.all, 10)
            ProgressView("Downloading...", value: 0.32)
                .progressViewStyle(LinearProgressViewStyle(tint: .red))
                .padding(.all, 10)
            Spacer()
        }
        .padding(.all, 10)
    }
}

struct ProgressExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressExampleView()
    }
}
