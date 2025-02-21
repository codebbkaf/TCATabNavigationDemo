//
//  NavAFirstPage.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import SwiftUI
import ComposableArchitecture

struct NavAFirstPage: View {
    @Bindable var store: StoreOf<NavAFeature>

    var body: some View {
        NavigationStack(
            path: $store.scope(state: \.path, action: \.path)
        ) {
            Form {
                Button("Go to NavA second page") {
                    store.send(.detailButtonTapped)
                }
            }
            .navigationTitle(Text("NavAFirstPage"))
        } destination: { store in
            switch store.case {
            case .detailPage:
                NavASecPage()
            }
        }
    }
}
