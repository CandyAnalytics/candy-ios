//
//  SignUpEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

open class SignUpEvent: CandyEvent {
    public var signUpMethod: String
    
    public init(signUpMethod method: String, properties: [String:String]? = nil) {
        self.signUpMethod = method
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["method"] = method
        
        super.init(properties: ps)
    }
}
