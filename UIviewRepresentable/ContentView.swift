//
//  ContentView.swift
//  UIviewRepresentable
//

import SwiftUI

struct ContentView: View {
    
    @State private var value: String = ""
    
    var body: some View {
        VStack {
            
            Text(value)
            
            PractiseTextField(value: $value)
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
