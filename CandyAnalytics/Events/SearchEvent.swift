//
//  SearchEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

open class SearchEvent: CandyEvent {
    public var searchTerm: String
    
    public init(searchTerm term: String, properties: [String:String]? = nil) {
        self.searchTerm = term
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["term"] = term
        
        super.init(properties: ps)
    }
}
