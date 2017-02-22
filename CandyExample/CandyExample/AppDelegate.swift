//
//  AppDelegate.swift
//  CandyExample
//
//  Created by Oscar Swanros on 2/21/17.
//  Copyright © 2017 Pacific3. All rights reserved.
//

import UIKit
import CandyAnalytics

struct VisitedPage: Event {
    static var name: String {
        return "visited_page"
    }
    
    var params: [String : String]
    
    init(params: [String:String]) {
        self.params = params
    }
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let conf = Candy.Configuration(
            url: URL(string: "")!,
            key: "123123123123",
            application: application
        )
        
        Candy.setup(configuration: conf)
        
        Candy.track(event: VisitedPage(params: [:]))
        
        return true
    }
}
