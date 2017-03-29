//
//  ContentViewEvent.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/28/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

/// Tracks a Content View event on your application.
/// Use this Event when you need to track visits to specific screens
/// within your application, such as sales pages or user profiles.
open class ContentViewEvent: CandyEvent {
    // MARK: - Properties
    
    /// The name of the content that the user views.
    open var contentName: String
    /// An identifier value for the content that the user views.
    open var contentId: String
    /// The type of content that the user is viewing.
    open var contentType: String?
    
    
    // MARK: - Initializing
    
    /**
     Creates an instance of `ContentViewEvent` with the given parameters.
     
     - parameter name:          The name of the content that the user views.
     - parameter id:            An identifier value for the content that the user views.
     - parameter type:          The type of content that the user is viewing.
     - parameter properties:    Any additional properties that accompany this event.
     */
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
