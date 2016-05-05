//
//  FoodDetailsViewController.swift
//  lab2
//
//  Created by Anh Mai on 5/2/16.
//  Copyright © 2016 Anh Mai. All rights reserved.
//

import UIKit

class FoodDetailsViewController: UITableViewController {
    
    
    
    @IBOutlet weak var detailLabel: UILabel!
    @IBOutlet weak var nameTextField: UITextField!
    var country:String = "Endland" {
        didSet {
            detailLabel.text? = country
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    
    var food:Food?
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 {
            nameTextField.becomeFirstResponder()
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SaveFoodDetail" {
            food = Food(name: nameTextField.text, country:country, rating: 5)
        }
        
        if segue.identifier == "PickCountry" {
            if let countryPickerViewController = segue.destinationViewController as? CountryPickerViewController {
                countryPickerViewController.selectedCountry = country
            }
        }
    }
    
    @IBAction func unwindWithSelectedCountry(segue:UIStoryboardSegue) {
        if let countryPickerViewController = segue.sourceViewController as? CountryPickerViewController,
            selectedCountry = countryPickerViewController.selectedCountry {
            country = selectedCountry
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        print("init FoodDetailsViewController")
        super.init(coder: aDecoder)
    }
    
    deinit {
        print("deinit FoodDetailsViewController")
    }
    

/*
    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

*/    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
