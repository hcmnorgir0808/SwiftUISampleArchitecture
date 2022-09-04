//
//  ContentViewState.swift
//  SwiftUISampleArchitecture
//
//  Created by 岩本康孝 on 2022/09/04.
//

import Foundation

class ContentViewState: ObservableObject {
    @Published var text: String = "こんにちは"
}
