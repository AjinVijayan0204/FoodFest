// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class FoodFetchQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query FoodFetch {
      foods {
        __typename
        name
        veg
        imgUrl
      }
    }
    """

  public let operationName: String = "FoodFetch"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("foods", type: .list(.object(Food.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(foods: [Food?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "foods": foods.flatMap { (value: [Food?]) -> [ResultMap?] in value.map { (value: Food?) -> ResultMap? in value.flatMap { (value: Food) -> ResultMap in value.resultMap } } }])
    }

    public var foods: [Food?]? {
      get {
        return (resultMap["foods"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Food?] in value.map { (value: ResultMap?) -> Food? in value.flatMap { (value: ResultMap) -> Food in Food(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Food?]) -> [ResultMap?] in value.map { (value: Food?) -> ResultMap? in value.flatMap { (value: Food) -> ResultMap in value.resultMap } } }, forKey: "foods")
      }
    }

    public struct Food: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Food"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("veg", type: .scalar(Bool.self)),
          GraphQLField("imgUrl", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, veg: Bool? = nil, imgUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Food", "name": name, "veg": veg, "imgUrl": imgUrl])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var veg: Bool? {
        get {
          return resultMap["veg"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "veg")
        }
      }

      public var imgUrl: String? {
        get {
          return resultMap["imgUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imgUrl")
        }
      }
    }
  }
}

public final class AddFoodWithImageMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddFoodWithImage($name: String, $veg: Boolean, $imgUrl: String) {
      addFoodWithImage(name: $name, veg: $veg, imgUrl: $imgUrl) {
        __typename
        name
        veg
        imgUrl
      }
    }
    """

  public let operationName: String = "AddFoodWithImage"

  public var name: String?
  public var veg: Bool?
  public var imgUrl: String?

  public init(name: String? = nil, veg: Bool? = nil, imgUrl: String? = nil) {
    self.name = name
    self.veg = veg
    self.imgUrl = imgUrl
  }

  public var variables: GraphQLMap? {
    return ["name": name, "veg": veg, "imgUrl": imgUrl]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addFoodWithImage", arguments: ["name": GraphQLVariable("name"), "veg": GraphQLVariable("veg"), "imgUrl": GraphQLVariable("imgUrl")], type: .list(.object(AddFoodWithImage.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addFoodWithImage: [AddFoodWithImage?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addFoodWithImage": addFoodWithImage.flatMap { (value: [AddFoodWithImage?]) -> [ResultMap?] in value.map { (value: AddFoodWithImage?) -> ResultMap? in value.flatMap { (value: AddFoodWithImage) -> ResultMap in value.resultMap } } }])
    }

    public var addFoodWithImage: [AddFoodWithImage?]? {
      get {
        return (resultMap["addFoodWithImage"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [AddFoodWithImage?] in value.map { (value: ResultMap?) -> AddFoodWithImage? in value.flatMap { (value: ResultMap) -> AddFoodWithImage in AddFoodWithImage(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [AddFoodWithImage?]) -> [ResultMap?] in value.map { (value: AddFoodWithImage?) -> ResultMap? in value.flatMap { (value: AddFoodWithImage) -> ResultMap in value.resultMap } } }, forKey: "addFoodWithImage")
      }
    }

    public struct AddFoodWithImage: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Food"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("veg", type: .scalar(Bool.self)),
          GraphQLField("imgUrl", type: .scalar(String.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, veg: Bool? = nil, imgUrl: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Food", "name": name, "veg": veg, "imgUrl": imgUrl])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      public var veg: Bool? {
        get {
          return resultMap["veg"] as? Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "veg")
        }
      }

      public var imgUrl: String? {
        get {
          return resultMap["imgUrl"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "imgUrl")
        }
      }
    }
  }
}
