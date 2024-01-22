//
//  GettingTCAApp.swift
//  GettingTCA
//
//  Created by Chad Hur on 1/22/24.
//

import SwiftUI
//import ComposableArchitecture

@main
struct GettingTCAApp: App {
    var body: some Scene {
        WindowGroup {
            CounterView(
                store: .init(
                    initialState: CounterFeature.State(),
                    reducer: { CounterFeature()._printChanges() }
                )
            )
        }
    }
}
