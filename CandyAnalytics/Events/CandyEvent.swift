//
//  CandyEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

open class CandyEvent: Event {
    public static var name: String {
        return "\(self))"
    }
    
    public var properties: [String:Any]
    
    public convenience init() {
        self.init(properties: [:])
    }
    
    public init(properties: [String:Any]) {
        self.properties = properties
    }
}

func p3_unwrapped<V, K>(dictionary: [V:K]?) -> [V:K] {
    guard let d = dictionary else { return [:] }
    
    return d
}
