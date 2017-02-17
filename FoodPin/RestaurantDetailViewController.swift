//
//  RestaurantDetailViewController.swift
//  FoodPin
//
//  Created by Guarionex Salivia on 2/10/17.
//  Copyright © 2017 Minnesota State University, Mankato. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView:UITableView!
    
    @IBOutlet var restaurantImageView:UIImageView!
    
    var restaurant:Restaurant?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        restaurantImageView.image = UIImage(named: (restaurant?.image)!)
        
        // remove seperators of empty rows.. these exist in a footer which needs to be set to blank
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        // to change the background color
        // light blue/gray
        
        tableView.backgroundColor = UIColor(red: 0.3412, green: 0.549, blue: 0.5686, alpha: 0.2)
        
        // to change colors of seperators with rows that have content
        
        //light gray
        tableView.separatorColor = UIColor(red: 0.9, green: 0.9, blue: 0.9, alpha: 0.8)
        
        title = restaurant?.name
        
        // to allow cell resizing
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // to prevent the navigation controller from hiding on swipe 
        // weird inheritance behavior needs to be managed on every controller to which we segue into from the initial scene
        navigationController?.hidesBarsOnSwipe = false
        
        navigationController?.setNavigationBarHidden(false, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Customize the cell by downcasting as RestaurantDetailTableViewCell
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantDetailTableViewCell
        
        // to change bkg color with content
        cell.backgroundColor = UIColor.clear
        // Configure the cell...
        // Display 4 rows of restaurant information
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant?.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant?.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant?.location
        case 3:
            cell.fieldLabel.text = "Phone Number"
            cell.valueLabel.text = restaurant?.phone
        case 4:
            cell.fieldLabel.text = "Been Here"
            cell.valueLabel.text = (restaurant?.isVisited)! ? "Yes, I've been here before." : "No"
        
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        
        return cell
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    /*
    override var prefersStatusBarHidden: Bool{
        return true
    }
*/
}
