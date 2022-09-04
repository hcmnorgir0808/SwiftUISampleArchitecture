//
//  ContentView.swift
//  SwiftUISampleArchitecture
//
//  Created by 岩本康孝 on 2022/09/04.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var state: ContentViewState

    private var onAction: (Action) -> ()

    var body: some View {
        VStack(spacing: 0) {
            Text(state.text)

            Button {
                onAction(.buttonDidTap)
            } label: {
                Text("ボタン")
            }

        }
        .padding([.bottom, .leading], 8)
    }

    init(state: ContentViewState, onAction: @escaping (Action) -> () = { _ in }) {
        self.state = state
        self.onAction = onAction
    }
}

extension ContentView {
    enum Action {
        case buttonDidTap
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let state = ContentViewState()
        ContentView(state: state)
    }
}
