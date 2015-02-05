//
//  ReminderViewController.swift
//  Weekly Reminders
//
//  Created by Austen Allred on 2/4/15.
//  Copyright (c) 2015 Austen Allred. All rights reserved.
//

import UIKit

class ReminderViewController: UIViewController {
    var roleOne = NSUserDefaults.standardUserDefaults().objectForKey("roleOne")!.capitalizedString
    var roleTwo = NSUserDefaults.standardUserDefaults().objectForKey("roleTwo")!.capitalizedString
    var roleThree = NSUserDefaults.standardUserDefaults().objectForKey("roleThree")!.capitalizedString
    var roleFour = NSUserDefaults.standardUserDefaults().objectForKey("roleFour")!.capitalizedString
    
    var goalOne = "a"
    var goalTwo = "b"
    var goalThree = "c"
    var goalFour = "d"
    
    @IBOutlet var labelOne: UILabel!
    @IBOutlet var labelTwo: UILabel!
    @IBOutlet var labelThree: UILabel!
    @IBOutlet var labelFour: UILabel!
    
    override func viewDidLoad() {
        NSUserDefaults.standardUserDefaults().synchronize()
        labelOne.text = "\(roleOne): \(goalOne.capitalizedString)"
        labelTwo.text = "\(roleTwo): \(goalTwo.capitalizedString)"
        labelThree.text = "\(roleThree): \(goalThree.capitalizedString)"
        labelFour.text = "\(roleFour): \(goalFour.capitalizedString)"
    }
    
}
