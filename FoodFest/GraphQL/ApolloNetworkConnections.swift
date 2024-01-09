//
//  ApolloNetworkConnections.swift
//  FoodFest
//
//  Created by Ajin on 29/10/22.
//

import Foundation
import Apollo

class Network{
    static let shared = Network()
    lazy var apollo = ApolloClient(url: URL(string: "http://localhost:4000/")!)
}
