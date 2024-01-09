//
//  FoodFestApp.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

@main
struct FoodFestApp: App {
    static var coordinator = HomeCoordinator(foodService: FoodService())
    var body: some Scene {
        WindowGroup {
            ContentView(coordinator: FoodFestApp.coordinator)
        }
    }
}
