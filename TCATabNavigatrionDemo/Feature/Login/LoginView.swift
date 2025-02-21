//
//  LoginView.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import SwiftUI
import ComposableArchitecture

struct LoginView: View {
    @Bindable var store: StoreOf<LoginFeature>

    var body: some View {
        NavigationStack {
            VStack {
                Form {
                    Button("Login") {
                        store.send(.loginButtonTapped)
                    }
                }
            }
            .navigationTitle("Welcome")
        }
    }
}
