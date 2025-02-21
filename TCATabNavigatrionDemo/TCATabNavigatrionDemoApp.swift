//
//  TCATabNavigatrionDemoApp.swift
//  TCATabNavigatrionDemo
//
//  Created by red on 2025/2/21.
//

import SwiftUI
import ComposableArchitecture

@main
struct TCATabNavigatrionDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(
                storeLogin: Store(initialState: LoginFeature.State(isLoggedIn: false), reducer: {
                    LoginFeature()
                }),
                storeA: Store(initialState: NavAFeature.State(), reducer: {
                    NavAFeature()
                }),
                storeB: Store(initialState: NavBFeature.State(), reducer: {
                    NavBFeature()
                })
            )
        }
    }
}
