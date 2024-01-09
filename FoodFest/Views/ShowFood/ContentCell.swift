//
//  ContentCell.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct ContentCell: View {
    
    @State var food: Food
    
    var body: some View {
        
        HStack{
            
            AsyncImageView(imgUrl: food.imgUrl)
            
            Text(food.name)
            
            Group{
                Image(systemName: "square.fill")
                    .foregroundColor(food.veg ? .green : .red)
                    .frame(width: 20, height: 20, alignment: .center)
            }
            .frame(maxWidth: .infinity, maxHeight: 20, alignment: .trailing)
        }
    }
}


