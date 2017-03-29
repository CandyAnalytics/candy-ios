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
    var properties: [String : Any]

    static var name: String {
        return "visited_page"
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
        
        Candy.setup(with: conf)
        Candy.track(VisitedPage(properties: [:]))
        try? Candy.updateCurrentConfiguration("123123")
        
        return true
    }
}
