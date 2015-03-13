//
//  ViewController.swift
//  general
//
//  Created by Developer on 10/03/15.
//  Copyright (c) 2015 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var ndot: UILabel!
    @IBOutlet weak var ldot: UILabel!
    @IBOutlet weak var cdot: UILabel!
    @IBOutlet weak var pdot: UILabel!
    @IBOutlet weak var invalid: UILabel!

    @IBOutlet weak var img: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.img.image = UIImage(named: "changos.png")
        println(self.img.image)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    self.phone.delegate = self
        self.phone.keyboardType = .NumberPad
    }

    
    @IBAction func table(sender: UIButton) {
        self.performSegueWithIdentifier("tablevw", sender: self)
        
        
    }

    @IBAction func tvv(sender: AnyObject) {
        self.performSegueWithIdentifier("tvv", sender: self)
        
    }
    
    @IBAction func sndbtn(sender: AnyObject) {
    
        if name.text == "" {
        self.ndot.hidden = false
        
        }else {
            self.ndot.hidden = true
        }
        
        if lastname.text == "" {
            self.ldot.hidden = false
            
        }else {
            self.ldot.hidden = true
        }
        
        if email.text == "" {
            self.cdot.hidden = false
            
        }else {
            self.cdot.hidden = true
        }
        
        
        if isnumeric(self.phone.text)  {
            self.pdot.hidden = true
            self.invalid.hidden = true
        
        }else if ( !isnumeric(self.phone.text) && self.phone.text != "" ){
            self.pdot.hidden = false
            self.invalid.hidden = false
            
        }else if ( self.phone.text == "") {
        
            self.pdot.hidden = false
            self.invalid.hidden = true
            
        }else {
            self.pdot.hidden = true
            self.invalid.hidden = true
        }
        
        
        
        
        
        
        if ndot.hidden == true && ldot.hidden == true && cdot.hidden == true && pdot.hidden == true {
            self.performSegueWithIdentifier("nxpg", sender: self)
            
        
        
        }
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if ( segue.identifier == "nxpg"){

            if let desc = segue.destinationViewController as? otro {
                desc.nm = name.text
                desc.lsnm = lastname.text
                desc.em = email.text
                desc.ph = phone.text
            
            }
        }
    }
    
    func isnumeric (data:String) -> Bool {
    
        if let n = data.toInt() {
            return true
        
        }else {
        
        return false
        }
    
    }
    
    
}

