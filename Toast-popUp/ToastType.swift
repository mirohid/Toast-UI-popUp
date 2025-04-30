//
//  ToastType.swift
//  Toast-popUp
//
//  Created by MacMini6 on 30/04/25.
//


import SwiftUI

enum ToastType: CaseIterable {
    case success
    case error
    case warning
    case info
    case loading
    case action
    case imageOnly
    case fullScreen
    case blurStyle
    case neon
}


struct ToastData: Identifiable, Equatable {
    let id = UUID()
    let type: ToastType
    let message: String
    let imageName: String?
}

