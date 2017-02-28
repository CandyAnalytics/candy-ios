//
//  SignUpEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

/**
 Tracks a Sign Up event on your application.
 */
open class SignUpEvent: CandyEvent {
    // MARK: - Properties
    
    /// The method the user used to sign up. Examples: "Facebook", "Google", "email"
    public var signUpMethod: String
    
    
    // MARK: - Initializing
    
    /**
     Creates an instance of `SignUpEvent` with the given parameters.
     
     - parameter signUpMetod:   The method the user used to sign up.
     - parameter properties:    Any additional properties that accompany this event.
     */
    public init(signUpMethod method: String, properties: [String:String]? = nil) {
        self.signUpMethod = method
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["method"] = method
        
        super.init(properties: ps)
    }
}
