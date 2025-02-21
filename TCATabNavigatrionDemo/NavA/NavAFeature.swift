//
//  NavAFeature.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import ComposableArchitecture

@Reducer
struct AppFeature {
    @ObservableState
    struct State: Equatable {
        var isLoggedIn: Bool
    }
    enum Action {
        case loginButtonTapped
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .loginButtonTapped:
                state.isLoggedIn = true
                return .none
            }
        }
    }
}
