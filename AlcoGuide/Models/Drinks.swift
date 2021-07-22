//
//  Drinks.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import Foundation

struct Coctail : Codable {
    var coctailName : String
    var coctailImage: String
    var coctailRecipe: String
    
    enum CodingKeys: String, CodingKey {
        
        case coctailName = "strDrink"
        case coctailImage = "strDrinkThumb"
        case coctailRecipe = "strInstructions"
    }
    
}
struct DrinksList : Codable{
    let drinks: [Coctail]
}

