//
//  LogInEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

/// Tracks a Log In event on your application.
open class LogInEvent: CandyEvent {
    // MARK: - Properties
    
    /// The method the user used to log in. Examples: "Facebook", "Google", "email"
    public var logInMethod: String
    
    
    // MARK: - Initializing
    
    /**
     Creates an instance of `LogInEvent` with the given parameters.
     
     - parameter loginMethod:   The method the user used to sign up.
     - parameter properties:    Any additional properties that accompany this event.
     */
    public init(logInMethod method: String, properties: [String:String]? = nil) {
        self.logInMethod = method
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["method"] = logInMethod
        
        super.init(properties: ps)
    }
}
