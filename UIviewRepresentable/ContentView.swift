//
//  ContentView.swift
//  UIviewRepresentable
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PractiseTextField()
                .frame(width: 300, height: 50)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1)
                )
        }
    }
}

#Preview {
    ContentView()
}
