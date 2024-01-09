//
//  FoodService.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import Foundation

class FoodService: ObservableObject{
    
    @Published var foods: [Food] = [Food]()
    
    init(){
        fetchFood()
    }
    //MARK: - Parse functions
    //from query
    
    fileprivate func parseFood(_ food: [FoodFetchQuery.Data.Food?]){
        
        for data in food{
            if let parsingData = data{
                let foodArrayElement = Food(name: parsingData.name!,
                                            veg: parsingData.veg!,
                                            imgUrl: parsingData.imgUrl!)
                self.foods.append(foodArrayElement)
            }

        }
    }
    
    fileprivate func parseFood(_ food: [AddFoodWithImageMutation.Data.AddFoodWithImage?]){
        
        for data in food{
            if let parsingData = data{
                let foodArrayElement = Food(name: parsingData.name!,
                                            veg: parsingData.veg!,
                                            imgUrl: parsingData.imgUrl!)
                self.foods.append(foodArrayElement)
            }

        }
    }
    
    //MARK: - Fetch Food
    
    func fetchFood(){
        Network.shared.apollo.fetch(query: FoodFetchQuery()){ result in
            
            switch result{
                
            case .success(let foodFetchQueryData):
                if let foods = foodFetchQueryData.data?.foods{
                    print(foods)
                    self.parseFood(foods)
                }
            case .failure(let error):
                print(error)
            }
            
        }
    }
    
    
    //MARK: - Mutation
    
    func writeFood(food: Food){
        Network.shared.apollo.perform(mutation: AddFoodWithImageMutation(name: food.name,
                                                                         veg: food.veg, imgUrl: food.imgUrl)){ result in
            switch result{
            case .success(let addFoodResult):
                if let food = addFoodResult.data?.addFoodWithImage{
                    self.foods = [Food]()
                    self.parseFood(food)
                    
                }
            case .failure(let error):
                print(error)
            }
        }
    }
}
