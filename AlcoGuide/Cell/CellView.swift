//
//  CellView.swift
//  AlcoGuide
//
//  Created by pavel on 21.07.2021.
//

import UIKit

class CellView: UITableViewCell {

    @IBOutlet weak var drinkName: UILabel!
    @IBOutlet weak var drinkImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
