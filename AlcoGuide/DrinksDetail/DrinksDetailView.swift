//
//  DrinksDetailView.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import UIKit

class DrinksDetailView: UIViewController, DrinksDetailViewProtocol {

    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var drinkRecipe: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
   
    func setCoctailInfoToView(drinkName: String, drinkRecipe: String, drinkImage: UIImage){
        self.drinkName.text = drinkName
        self.drinkRecipe.text = drinkRecipe
        self.drinkImage.image = drinkImage
    }


    }
