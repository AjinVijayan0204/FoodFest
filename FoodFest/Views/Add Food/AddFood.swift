//
//  AddFood.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct AddFood: View {
    
    @State var food: Food = Food(name: "", veg: false, imgUrl: "")
    @ObservedObject var foodService: FoodService
    @State var alertPresent: Bool = false
    
    var body: some View {
        
        VStack{
            
            CustomText_LabelView(label: "Name", placeholder: "Enter food name", data: $food.name)
            
            CustomText_LabelView(label: "Image", placeholder: "Paste image url", data: $food.imgUrl)
            
            CustomToggle(veg: $food.veg)
            
            Spacer()
                .frame(height: 20, alignment: .center)
            
            Custom_Image_View(imgUrl: food.imgUrl)
            
            Group{
                Button("Add Food"){
                    
                    foodService.writeFood(food: food)
                    alertPresent = true
                    
                }
                .foregroundColor(.black)
                .buttonStyle(.bordered)
                .frame(alignment: .center)
                
                .alert(isPresented: $alertPresent) {
                    
                    
                    Alert(
                        title: Text("Success"),
                        message: Text("Food Added"),
                        primaryButton: .default(Text("Ok"), action: {
                            self.food = Food(name: "", veg: false, imgUrl: "")
                            alertPresent = false
                        }), secondaryButton: .default(Text("Cancel"), action: {
                            alertPresent = false
                        }))
//                        .frame(height: 400, alignment: .center)
                }
            }
            .frame(width: 300, alignment: .center)
            
            
        }
    }
}


