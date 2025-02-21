//
//  ContentView.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import SwiftUI
import ComposableArchitecture

struct ContentView: View {
    @Bindable var appFeatureStore: StoreOf<AppFeature>
    @Bindable var storeA: StoreOf<NavAFeature>
    @Bindable var storeB: StoreOf<NavBFeature>
    
    var body: some View {
        if appFeatureStore.isLoggedIn {
            TabView {
                NavAFirstPage(store: storeA)
                    .tabItem { Text("Nav1") }
                NavBFirstPage(store: storeB)
                    .tabItem { Text("Nav2") }
            }
        } else {
            NavigationStack {
                VStack {
                    Form {
                        Button("Login") {
                            appFeatureStore.send(.loginButtonTapped)
                        }
                    }
                }
                .navigationTitle("Welcome")
            }
        }
    }
}

