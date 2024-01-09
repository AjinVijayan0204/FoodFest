//
//  ContentView.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var coordinator: HomeCoordinator
    @ObservedObject var foodService: FoodService
    
    init(coordinator: HomeCoordinator){
        self.coordinator = coordinator
        self.foodService = coordinator.foodService
    }
    
    var body: some View {
        
        TabView(selection: $coordinator.tab) {
            
            ShowFood(foodService: foodService)
                .tabItem {
                    Label("Foods", systemImage: "list.dash")
                }
                .tag(AdminTabs.ShowFood)
            
            AddFood(foodService: foodService)
                .tabItem {
                    Label("Add food", systemImage: "doc.append.fill")
                }
                .tag(AdminTabs.EditFood)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
