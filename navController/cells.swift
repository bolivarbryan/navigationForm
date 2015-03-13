//
//  cells.swift
//  navController
//
//  Created by kevin on 11/03/15.
//  Copyright (c) 2015 Bryan A Bolivar M. All rights reserved.
//

import UIKit

class cells: UIViewController, UITableViewDelegate, UITableViewDataSource {


    
    @IBOutlet var tbv: UITableView!
    
 
    
    var data = ["Cut Man":"http://vignette3.wikia.nocookie.net/megaman/images/2/2d/Cutsprite.png","Guts Man":"http://vignette1.wikia.nocookie.net/megaman/images/c/c7/Gutssprite.png","Ice Man":"http://vignette2.wikia.nocookie.net/megaman/images/0/05/Icesprite.png","Bomb Man":"http://vignette2.wikia.nocookie.net/megaman/images/e/e2/Bombsprite.png","Fire Man":"http://vignette2.wikia.nocookie.net/megaman/images/7/7d/Firesprite.png","Elec Man":"http://vignette4.wikia.nocookie.net/megaman/images/a/a4/Elecsprite.png"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var image :AnyObject
        var z: CustomCel = tableView.dequeueReusableCellWithIdentifier("zelda") as CustomCel
        z.setcell(data.keys.array[indexPath.row], img: data.values.array[indexPath.row])
        
        return z
    }
    
}
