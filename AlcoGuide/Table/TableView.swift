//
//  TableView.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import UIKit

class TableView: UIViewController {
    var drinks = [Coctail]()
    let service = GetDrinks()
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTitle()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CellView", bundle: nil), forCellReuseIdentifier: "CellView")
        service.getDrinks(completion: {[weak self](drinks, status, message) in
            if status {
            guard let self = self else {return}
            guard let drinks = drinks as? [Coctail] else {return}
            self.drinks = drinks
            self.tableView.reloadData()
            }
            })
        
    }
    func setTitle(){
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor:UIColor.black]
        self.navigationItem.title = "Drinks"
    }
    
    
}
extension TableView:UITableViewDelegate,UITableViewDataSource{
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.drinks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellView") as! CellView
        
        cell.drinkName.text = drinks[indexPath.row].coctailName
        service.getImage(imageStr: drinks[indexPath.row].coctailImage) { image in
            cell.drinkImage.image = image
        }
       
        

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
                let drinksDetailVC = DrinksDetailView(nibName: "DrinksDetailView", bundle: nil)
        drinksDetailVC.drinkNameStr = drinks[indexPath.row].coctailName
        drinksDetailVC.drinkRecipeStr = drinks[indexPath.row].coctailRecipe
        service.getImage(imageStr: drinks[indexPath.row].coctailImage) { image in
            drinksDetailVC.drinkImageUIImage = image
        }
        
        navigationController?.pushViewController(drinksDetailVC, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                tableView.beginUpdates()
                drinks.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .fade)
                tableView.endUpdates()
            }
        }
}

