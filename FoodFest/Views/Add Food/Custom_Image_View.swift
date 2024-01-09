//
//  Custom_Image_View.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import SwiftUI
import Combine

struct Custom_Image_View: View {
    
    @State var imgUrl: String
    @ObservedObject var loader: ImageLoader
    
    init(imgUrl: String){
        self.imgUrl = imgUrl
        loader = ImageLoader(url: imgUrl)
    }
    
    var body: some View {
        content
            .onAppear{
                loader.load()
            }
    }
    
    private var content: some View{
        
        Group{
            if loader.image != nil{
                Image(uiImage: loader.image!)
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
            }else{
                Image(systemName: "photo")
                    .resizable()
                    .frame(width: 200, height: 200, alignment: .center)
                    .foregroundColor(.gray)
                
            }
        }
    }
}

class ImageLoader: ObservableObject{
    
    @Published var image: UIImage?
    let url: String
    private var cancellable: AnyCancellable?
    
    init(url: String){
        self.url = url
        load()
    }
    
    func load(){
        if url != ""{
            cancellable = URLSession.shared.dataTaskPublisher(for: URL(string: url)!)
                .map{ UIImage(data: $0.data)}
                .replaceError(with: nil)
                .receive(on: DispatchQueue.main)
                .sink(receiveValue: { data in
                    self.image = data
                })
        }
    }
    
    func cancel(){
        cancellable?.cancel()
    }
}
