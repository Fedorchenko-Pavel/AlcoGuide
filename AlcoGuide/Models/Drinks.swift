//
//  Drinks.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import Foundation

struct Coctail : Codable {
    let coctailName : String
    let coctailImage: String
    let coctailRecipe: String
    
    enum CodingKeys: String, CodingKeys{
        case coctailName = "strDrink"
        case coctailImage = "strDrinkThumb"
        case coctailRecipe = "strInstructions"
    }

}
struct DrinksList : Codable{
    let drinks: [Coctail]
}

