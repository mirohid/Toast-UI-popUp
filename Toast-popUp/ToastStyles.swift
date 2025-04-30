//
//  ToastStyles.swift
//  Toast-popUp
//
//  Created by MacMini6 on 30/04/25.
//

import Foundation
import SwiftUI

@MainActor

struct ToastStyleSuccess: View {
    var message: String
    var body: some View {
        Label(message, systemImage: "checkmark.circle.fill")
            .padding()
            .background(Color.green.opacity(0.9))
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}

struct ToastStyleError: View {
    var message: String
    var body: some View {
        Label(message, systemImage: "xmark.octagon.fill")
            .padding()
            .background(Color.red.opacity(0.9))
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
struct ToastStyleWarning: View {
    var message: String
    var body: some View {
        Label(message, systemImage: "exclamationmark.triangle.fill")
            .padding()
            .background(Color.orange)
            .foregroundColor(.black)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
struct ToastStyleInfo: View {
    var message: String
    var body: some View {
        Label(message, systemImage: "info.circle")
            .padding()
            .background(Color.blue.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
struct ToastStyleLoading: View {
    var body: some View {
        ProgressView("Loading...")
            .progressViewStyle(CircularProgressViewStyle(tint: .purple))
            .padding()
            .background(Color.black.opacity(0.8))
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 5)
    }
}
struct ToastStyleAction: View {
    var message: String
    var body: some View {
        HStack {
            Text(message)
            Spacer()
            Button("Undo") {
                print("Undo tapped")
            }
            .padding(.horizontal)
        }
        .padding()
        .background(Color.gray.opacity(0.8))
        .cornerRadius(10)
        .foregroundColor(.white)
    }
}
struct ToastStyleImageOnly: View {
    var imageName: String
    var body: some View {
        Image(systemName: imageName)
            .font(.largeTitle)
            .padding()
            .background(Color.white.opacity(0.9))
            .clipShape(Circle())
            .shadow(radius: 5)
    }
}
struct ToastStyleFullScreen: View {
    var message: String
    var body: some View {
        VStack {
            Spacer()
            Text(message)
                .font(.largeTitle)
                .bold()
                .padding()
                .background(Color.black.opacity(0.7))
                .foregroundColor(.white)
                .cornerRadius(15)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black.opacity(0.4))
        .edgesIgnoringSafeArea(.all)
    }
}
struct ToastStyleBlur: View {
    var message: String
    var body: some View {
        Text(message)
            .padding()
            .background(.ultraThinMaterial)
            .foregroundColor(.primary)
            .cornerRadius(10)
            .shadow(radius: 3)
    }
}
struct ToastStyleNeon: View {
    var message: String
    var body: some View {
        Text(message)
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(10)
            .shadow(color: .purple, radius: 10, x: 0, y: 0)
    }
}
