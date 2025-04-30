//
//  ToastModifier.swift
//  Toast-popUp
//
//  Created by MacMini6 on 30/04/25.
//
import Foundation
import SwiftUI

struct ToastModifier: ViewModifier {
    @Binding var toast: ToastData?
    
    func body(content: Content) -> some View {
        ZStack {
            content
            if let toast = toast {
                toastView(for: toast)
                    .transition(.move(edge: .top).combined(with: .opacity))
                    .animation(.spring(), value: toast)
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            self.toast = nil
                        }
                    }
            }
        }
    }

    @ViewBuilder
    func toastView(for toast: ToastData) -> some View {
        switch toast.type {
        case .success:
            ToastStyleSuccess(message: toast.message)
        case .error:
            ToastStyleError(message: toast.message)
        case .warning:
            ToastStyleWarning(message: toast.message)
        case .info:
            ToastStyleInfo(message: toast.message)
        case .loading:
            ToastStyleLoading()
        case .action:
            ToastStyleAction(message: toast.message)
        case .imageOnly:
            ToastStyleImageOnly(imageName: toast.imageName ?? "star")
        case .fullScreen:
            ToastStyleFullScreen(message: toast.message)
        case .blurStyle:
            ToastStyleBlur(message: toast.message)
        case .neon:
            ToastStyleNeon(message: toast.message)
        }
    }
}

extension View {
    func toast(_ toast: Binding<ToastData?>) -> some View {
        self.modifier(ToastModifier(toast: toast))
    }
}
