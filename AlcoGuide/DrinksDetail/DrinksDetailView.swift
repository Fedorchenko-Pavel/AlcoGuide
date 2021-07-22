//
//  DrinksDetailView.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import UIKit

class DrinksDetailView: UIViewController {

    @IBOutlet weak var drinkImage: UIImageView!
    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var drinkRecipe: UILabel!
    
    var drinkNameStr: String = ""
    var drinkRecipeStr: String = ""
    var drinkImageUIImage : UIImage 
    override func viewDidLoad() {
        super.viewDidLoad()
        drinkName.text = drinkNameStr
        drinkRecipe.text = drinkRecipeStr
        drinkImage.image = drinkImageUIImage

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
