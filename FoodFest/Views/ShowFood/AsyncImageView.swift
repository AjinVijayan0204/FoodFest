//
//  AsyncImageView.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI

struct AsyncImageView: View {
    
    @State var imgUrl: String
    
    var body: some View {
        AsyncImage(url: URL(string: imgUrl)){ image in
            image
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
        }placeholder: {
            Image(systemName: "photo")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.gray)
        }
    }
}


