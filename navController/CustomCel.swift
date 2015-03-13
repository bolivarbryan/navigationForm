//
//  CustomCel.swift
//  navController
//
//  Created by kevin on 11/03/15.
//  Copyright (c) 2015 Bryan A Bolivar M. All rights reserved.
//

import UIKit

class CustomCel: UITableViewCell {
    
    
  
    @IBOutlet weak var imglb: UIImageView!
    @IBOutlet weak var lb1: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setcell (name:String, img: String) {
        self.lb1.text = name
        
        let url = NSURL(string: img)
        let data = NSData(contentsOfURL: url!)
        self.imglb.image = UIImage(data: data!)
 
        
        
    
    
    }
    
}
