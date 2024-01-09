//
//  CustomText_LabelView.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct CustomText_LabelView: View {
    @State var label: String
    @State var placeholder: String
    @Binding var data: String
    
    var body: some View {
        
        HStack{
            Text(label)
                .frame(width: AppValues.shared.width/3, alignment: .leading)
            TextField(placeholder, text: $data)
                .frame(width: AppValues.shared.width/2, alignment: .trailing)
        }
        .frame(width: AppValues.shared.width, alignment: .center)
    }
}


