//
//  ContentView.swift
//  Toast-popUp
//
//  Created by MacMini6 on 30/04/25.
//
import SwiftUI

struct ContentView: View {
    @State private var toast: ToastData?

    var body: some View {
        VStack(spacing: 20) {
            ForEach(ToastType.allCases.prefix(10), id: \.self) { type in
                Button("Show \(String(describing: type).capitalized) Toast") {
                    toast = ToastData(type: type, message: "\(type) toast!", imageName: "star.fill")
                }
            }
        }
        .toast($toast)
        .padding()
    }
}

#Preview{
    ContentView()
}

