//
//  CandyEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

/**
 `CandyEvent` is the basic building block of Candy Analytics. By subclassing it, you can create custom
 events to send to your own Candy Analytics instance.
 */
open class CandyEvent: Event {
    // MARK: - Properties
    
    /// The name of the event. This property is read-only, and is generated
    /// based on the name of the `CandyEvent` class instance.
    open static var name: String {
        return "\(self))"
    }
    
    /// The properties of the event.
    open var properties: [String:Any]
    
    
    // MARK: - Initializing
    
    /// Initializes a `CandyEvent` instance with no properties.
    public convenience init() {
        self.init(properties: [:])
    }
    
    /**
     Initializes a `CandyEvent` instance with the given properties.
     
     - parameter properties: A dictionary with the properties that accompany this event.
    */
    public init(properties: [String:Any]) {
        self.properties = properties
    }
}

func p3_unwrapped<V, K>(_ dictionary: [V:K]?) -> [V:K] {
    guard let d = dictionary else { return [:] }
    
    return d
}
