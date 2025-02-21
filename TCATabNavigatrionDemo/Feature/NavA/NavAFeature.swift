//
//  NavAFeature.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import ComposableArchitecture

@Reducer
struct NavAFeature {
    @ObservableState
    struct State: Equatable {
        var path = StackState<Path.State>()
    }
    enum Action {
        case detailButtonTapped
        case path(StackActionOf<Path>)
    }
    
    @Reducer(state: .equatable)
    enum Path {
        case detailPage
    }
    
    var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .detailButtonTapped:
                state.path.append(.detailPage)
                return .none
            case .path:
                return .none
            }
        }
        .forEach(\.path, action: \.path)
    }
}
