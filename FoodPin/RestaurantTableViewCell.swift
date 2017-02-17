//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by Guarionex Salivia on 2/3/17.
//  Copyright © 2017 Minnesota State University, Mankato. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbnailImageView: UIImageView!
    @IBOutlet var phoneLabel: UILabel!
    
    
    /*
     @IBAction -> method triggered by an event
     @IBOutlet -> property connected to object in storyboard
    */
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
