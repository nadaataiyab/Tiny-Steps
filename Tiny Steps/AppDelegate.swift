//
//  AppDelegate.swift
//  Tiny Steps
//
//  Created by Nadaa Taiyab on 1/30/15.
//  Copyright (c) 2015 Tiny Steps LLC. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Override point for customization after application launch

        Parse.enableLocalDatastore()
        Parse.setApplicationId("C4vCCUNegSUhqTL2WVUC9n9UZyIE951zisyHypkO", clientKey: "PQdrRmzXWSAxTaadO8wyr6ZfWw6cq10AVgDonRoz")
        
        var testObject = PFObject(className: "TestObject")
        testObject.setObject("$12.00", forKey: "price")
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError!) -> Void in
            if success {
                NSLog("YAY! TestObject has been updated")
            } else {
                NSLog("Boo! Something went wrong")
            }
        }
        
        return true
    }


}

