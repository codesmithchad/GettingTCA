//
//  CounterView.swift
//  GettingTCA
//
//  Created by Chad Hur on 1/22/24.
//

import SwiftUI
import ComposableArchitecture

//extension CounterFeature.State: Equatable {}

struct CounterView: View {

    private let store: StoreOf<CounterFeature>
    @ObservedObject var viewStore: ViewStoreOf<CounterFeature>

    init(store: StoreOf<CounterFeature>) {
        self.store = store
        viewStore = ViewStore(store, observe: { $0 })
    }

    var body: some View {
        HStack {
            Button("-") {
                viewStore.send(.decrementButtonTapped)
            }
            .font(.largeTitle)
            .frame(width: 40)
            .padding()
            .background(Color.black.opacity(0.1))
            .cornerRadius(10)

            Text("\(viewStore.state.count)")
                .font(.largeTitle)
                .padding()
                .background(Color.black.opacity(0.1))
                .cornerRadius(10)

            Button("+") {
                viewStore.send(.incrementButtonTapped)
            }
            .font(.largeTitle)
            .frame(width: 40)
            .padding()
            .background(Color.black.opacity(0.1))
            .cornerRadius(10)
        }
    }
}

#Preview {
    CounterView(store: .init(initialState: CounterFeature.State(), reducer: {
        CounterFeature()
    }))
}
