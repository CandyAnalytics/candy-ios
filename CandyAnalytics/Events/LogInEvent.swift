//
//  LogInEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

open class LogInEvent: CandyEvent {
    public var logInMethod: String
    
    public init(logInMethod method: String, properties: [String:String]? = nil) {
        self.logInMethod = method
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["method"] = logInMethod
        
        super.init(properties: ps)
    }
}
