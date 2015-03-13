//
//  downimg.swift
//  navController
//
//  Created by kevin on 12/03/15.
//  Copyright (c) 2015 Bryan A Bolivar M. All rights reserved.
//

import Foundation
import UIKit


class todownload{

class func downloadImage(url: NSURL, handler: ((image: UIImage, NSError!) -> Void))
{
    var imageRequest: NSURLRequest = NSURLRequest(URL: url)
    NSURLConnection.sendAsynchronousRequest(imageRequest,
        queue: NSOperationQueue.mainQueue(),
        completionHandler:{response, data, error in
            handler(image: UIImage(data: data)!, error)
    })
}


}