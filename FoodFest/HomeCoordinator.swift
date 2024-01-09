//
//  HomeCoordinator.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import Foundation

enum AdminTabs{
    case ShowFood
    case EditFood
}

class HomeCoordinator: ObservableObject{
    
    @Published var tab: AdminTabs
    @Published var foodService: FoodService
    
    init(foodService: FoodService){
        self.tab = AdminTabs.ShowFood
        self.foodService = foodService
    }
}
