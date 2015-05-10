//
//  ViewController.swift
//  PodDemo
//
//  Created by pandazheng on 15/5/9.
//  Copyright (c) 2015年 pandazheng. All rights reserved.
//

/*
platform :ios,'7.0'
pod "AFNetworking","~>2.5.3"
pod "Reachability","~>3.2"
*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /*
        var ret : Bool?
        ret = ios8()
        if ret == false
        {
            println("ios device version is not ios8")
        }
        else
        {
            println("ios device version is ios8")
        }*/
        
        let manager = AFHTTPRequestOperationManager()
        let url = "http://douban.fm/j/explore/hot_channels"
        manager.GET(url, parameters: nil, success: { (operation:AFHTTPRequestOperation!, responseObject:AnyObject!) -> Void in
            println("Response:" + responseObject.description!)
            }) { (operation:AFHTTPRequestOperation!, error:NSError!) -> Void in
            println("Error:" + error.localizedDescription)
        }
    }
    
    func ios8() -> Bool
    {
        //return UIDevice.currentDevice().systemVersion == "8.0"
        var deviceVersion: NSString = UIDevice.currentDevice().systemVersion
        
        //println(deviceVersion.substringWithRange(NSMakeRange(0, 1)))
        
        return deviceVersion.substringWithRange(NSMakeRange(0, 1)) == "8"
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

