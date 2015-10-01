//
//  TableViewController.swift
//  Assignment4
//
//  Created by Fhict on 30/09/15.
//  Copyright (c) 2015 Fhict. All rights reserved.
//

import UIKit;

class TableViewController: UITableViewController {
    var pirates = [Pirate]();
    
    func loadJsonData() {
        let url = NSURL(string: "http://athena.fhict.nl/users/i886625/pirates.json")
        let request = NSURLRequest(URL: url!)
        let session = NSURLSession.sharedSession()
        var parseError:NSError?
        let dataTask = session.dataTaskWithRequest(request, completionHandler: { (data, response, error) -> Void in
            if let jsonObject: AnyObject = NSJSONSerialization.JSONObjectWithData(data,options: NSJSONReadingOptions.AllowFragments, error: &parseError)
            {
                self.parseJsonData(jsonObject)
            }
            
        })
        dataTask.resume();
    }
    
    func parseJsonData(jsonObject:AnyObject)
        {
            if let jsonData = jsonObject as? NSArray
            {
        for item in jsonData
        {
            let newPirate = Pirate(
        name: item.objectForKey("name") as! String,
        life: item.objectForKey("life") as! String,
        yearsActive: item.objectForKey("years_active") as! String,
        countryOfOrigin: item.objectForKey("country_of_origin") as! String,
        comments: item.objectForKey("comments") as! String
        )
        pirates.append(newPirate)
                }
            }
    self.tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadJsonData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section:int) -> Int{
        return pirates.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! UITableViewCell
        var currentRow = indexPath.row;
        
        var currentPirate = self.pirates[currentRow]
        cell.textLabel?.text = currentPirate.Name
        return cell;
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var selectedRow = self.tableView.indexPathForSelectedRow()
        var selectedPirate = self.pirates[selectedRow!.row]
        
        var controller = segue.destinationViewController as! DetailsViewController
        controller.selectedPirate = selectedPirate;
        
    }
    
}
