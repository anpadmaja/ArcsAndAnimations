//
//  ViewController.swift
//  ArcsAndAnimations
//
//  Created by Adhyam Nagarajan, Padmaja on 12/11/16.
//  Copyright © 2016 Adhyam Nagarajan, Padmaja. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
  var thingsToLearn: NSMutableArray = ["Drawing Rects", "Drawing Gradients", "Drawing Arcs"]
  var thingsLearned: NSMutableArray = ["Table Views", "UIKit", "Objective-C"]

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.title = "Core Graphics 101"
    self.tableView.register(GradientCell.self, forCellReuseIdentifier: "reusableCellId")
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func numberOfSections(in tableView: UITableView) -> Int {
    return 2
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    if section == 0 {
      return thingsToLearn.count
    } else {
      return thingsLearned.count
    }
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    var entry: String = ""
    guard let cellToReturn = tableView.dequeueReusableCell(withIdentifier: "reusableCellId") else {
      return UITableViewCell()
    }
    cellToReturn.backgroundView = CustomCellBackground()
    cellToReturn.selectedBackgroundView = CustomCellBackground()
    
    if(indexPath.section == 0) {
      entry = thingsToLearn[indexPath.row] as! String
    } else {
      entry = thingsLearned[indexPath.row] as! String
    }
    cellToReturn.textLabel?.text = entry
    cellToReturn.textLabel?.backgroundColor = UIColor.clear
    return cellToReturn
  }
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    
    if (section == 0) {
      return "Things We'll Learn"
    } else {
      return "Things Already Covered"
    }
  }
  

}

