//
//  CustomToggle.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct CustomToggle: View {
    
    @Binding var veg: Bool
    
    var body: some View {
        
        HStack{
            Spacer()
                .frame(width: AppValues.shared.width/14)
            
            Text("Veggie")
                .frame(alignment: .trailing)
            Label("", systemImage: "leaf.fill")
                .foregroundColor(veg ? .green : .red)
            
            Spacer()
            
            Toggle("", isOn: $veg)
                .frame(alignment: .leading)
                
            Spacer()
                .frame(width: AppValues.shared.width/4)
        }
        .frame(width: AppValues.shared.width, alignment: .leading)
    }
}


