//
//  Endpoints.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/22/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

private let api_path = "api/"

enum Endpoint: String, EndpointConvertible {
    case trackEvent = "track"
    
    var apiBase: String {
        guard let base = Candy.currentConfiguration?.url else { return "" }
        
        return base.absoluteString
    }
    
    func generateURL() -> URL? {
        return URL(string: apiBase + "/" + api_path + rawValue)
    }
}
