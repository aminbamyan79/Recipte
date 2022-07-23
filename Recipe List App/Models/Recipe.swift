//
//  Recipe.swift
//  Recipe List App
//
//  Created by Nauti Nav on 17/07/22.
//

import Foundation
class Recipe: Identifiable, Decodable{
    var id: UUID?
    var name: String
    var featured: Bool
    var image: String
    var description: String
    var prepTime: String
    var cookTime: String
    var totalTime: String
    var servings: Int
    var highlights: [String]
    var ingredients: [ingredient]
    var directions: [String]
  
    
    
    
}
class ingredient: Identifiable, Decodable{
    var id: UUID?
    var name: String
    var num: Int?
    var denom: Int?
    var unit: String?
    
}
