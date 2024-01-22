//
//  CounterFeature.swift
//  GettingTCA
//
//  Created by Chad Hur on 1/22/24.
//

import ComposableArchitecture

@Reducer
struct CounterFeature {

    struct State: Equatable {
        var count = 0
    }

    enum Action: Equatable {
        case decrementButtonTapped
        case incrementButtonTapped
    }

    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .decrementButtonTapped:
                state.count -= 1
                return .none

            case .incrementButtonTapped:
                state.count += 1
                return .none
            }
        }
    }
}
