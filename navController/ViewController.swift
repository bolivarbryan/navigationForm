//
//  ViewController.swift
//  navController
//
//  Created by Bryan A Bolivar M on 10/03/15.
//  Copyright (c) 2015 Bryan A Bolivar M. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtName: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showDetails(sender: AnyObject) {
        self.performSegueWithIdentifier("showDetailsSegue", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showDetailsSegue"
        {
            if let destinationVC = segue.destinationViewController as? SecondViewController{
                destinationVC.nombre = txtName.text
            }
        }
    }

}

