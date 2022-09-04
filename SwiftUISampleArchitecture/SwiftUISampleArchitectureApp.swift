//
//  SwiftUISampleArchitectureApp.swift
//  SwiftUISampleArchitecture
//
//  Created by 岩本康孝 on 2022/09/04.
//

import SwiftUI

@main
struct SwiftUISampleArchitectureApp: App {
    private var state = ContentViewState()
    var body: some Scene {
        WindowGroup {
            ContentView(state: state) { action in
                switch action {
                case .buttonDidTap:
                    state.text = "ボタンがタップされました"
                }
            }
        }
    }
}
