//
//  NavBFirstPage.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import SwiftUI
import ComposableArchitecture

struct NavBFirstPage: View {
    @Bindable var store: StoreOf<NavBFeature>

    var body: some View {
        NavigationStack(
            path: $store.scope(state: \.path, action: \.path)
        ) {
            Form {
                Button("Go to NavB second page") {
                    store.send(.detailButtonTapped)
                }
            }
            .navigationTitle(Text("NavBFirstPage"))
        } destination: { store in
            switch store.case {
            case .detailPage:
                NavBSecPage()
            }
        }
    }
}
