//
//  SearchEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

/// Tracks a Search event on your application.
open class SearchEvent: CandyEvent {
    // MARK: - Properties
    
    /// The term that the user searched for.
    public var searchTerm: String
    
    
    // MARK: - Initializing
    
    /**
     Creates an instance of `SearchEvent` with the given parameters.
     
     - parameter searchTerm:    The term that the user searched for.
     - parameter properties:    Any additional properties that accompany this event.
     */
    public init(searchTerm term: String, properties: [String:String]? = nil) {
        self.searchTerm = term
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["term"] = term
        
        super.init(properties: ps)
    }
}
