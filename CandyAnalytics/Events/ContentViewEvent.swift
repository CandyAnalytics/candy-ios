//
//  ContentViewEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/28/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

open class ContentViewEvent: CandyEvent {
    public var contentName: String
    public var contentId: String
    public var contentType: String?
    
    public init(name: String, id: String, type: String? = nil, properties: [String:String]? = nil) {
        self.contentName = name
        self.contentId = id
        self.contentType = type
        
        var ps = p3_unwrapped(dictionary: properties)
        ps["content_name"] = name
        ps["content_id"] = id
        if let type = type {
            ps["content_type"] = type
        }
        
        super.init(properties: ps)
    }
}
