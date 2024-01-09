//
//  ShowFood.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct ShowFood: View {
    @ObservedObject var foodService: FoodService
    
    var body: some View {
        
        List{
            ForEach(foodService.foods) { food in
                
                ContentCell(food: food)
            }
        }.onAppear {
            print(foodService.foods)
        }
    }
}


