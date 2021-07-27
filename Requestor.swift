//
//  GetDrinks.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import Foundation
import Alamofire
class Requestor {
    
    let drinksURL = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=rum"
    
    func getDrinksRequest(completion: @escaping (_ drinks:[Coctail],_ status: Bool, _ messasge:String) -> ()){
        AF.request(drinksURL).response { response in
            guard let data = response.data else {return}
            do {
                let drinks = try JSONDecoder().decode(DrinksList.self, from: data)
                completion(drinks.drinks, true, "")
            }catch{
                print("Error decoding == \(error)")
                let drinks = [Coctail]()
                completion(drinks, false, error.localizedDescription)
            }
        }
    }
    func getImageRequest(imageStr: String, completion: @escaping (UIImage) -> ()){
        AF.download(imageStr).responseData { response in
            if let data = response.value {
                let image = UIImage(data: data)
                 completion(image!)
            }
        }
    }
    
}
