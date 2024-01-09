//
//  Food.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import Foundation

struct Food: Identifiable{
    
    var id = UUID()
    var name: String
    var veg: Bool
    var imgUrl: String
    
}
