//
//  RandomRecipes.swift
//  Spoon Master
//
//  Created by Nam Ngây on 6/5/20.
//  Copyright © 2020 Nam Ngây. All rights reserved.
//

import Foundation
import ObjectMapper

struct RandomRecipes: Mappable {
    var recipes: [Recipe] = []
    
    init?(map: Map) {
        mapping(map: map)
    }
    
    mutating func mapping(map: Map) {
        recipes <- map["recipes"]
    }
}

struct Recipe: Mappable {
    
    var extendedIngredients: [ExtendedIngredient] = []
    var randomId = 0
    var title = ""
    var readyInMinutes = 0
    var sourceUrl = ""
    var image = ""
    var summary = ""
    var instructions = ""
    var analyzedInstructions: [AnalyzedInstruction] = []
    var spoonacularSourceUrl = ""
    
    init?(map: Map) {
        mapping(map: map)
    }
    mutating func mapping(map: Map) {
        randomId <- map["id"]
        title <- map["title"]
        readyInMinutes <- map["readyInMinutes"]
        sourceUrl <- map["sourceUrl"]
        image <- map["image"]
        summary <- map["summary"]
        instructions <- map["instructions"]
        spoonacularSourceUrl <- map["spoonacularSourceUrl"]
        extendedIngredients <- map["extendedIngredient"]
        analyzedInstructions <- map["analyzedInstruction"]
    }
}
