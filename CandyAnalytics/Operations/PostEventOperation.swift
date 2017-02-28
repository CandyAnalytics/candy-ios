//
//  PostEventOperation.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/28/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

class PostEventOperation: P3NetworkOperation {
    override var requestBody: [String : Any]? {
        return event.properties
    }
    
    var event: Event
    
    init?(event: Event) {
        self.event = event
        
        super.init(url: Endpoint.trackEvent.generateURL())
    }
    
    override func jsonDownloadComplete() {
    }
}
