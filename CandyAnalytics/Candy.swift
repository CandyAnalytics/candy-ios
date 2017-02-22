//
//  Candy.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/21/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

public enum CandyError: Error {
    case noCurrentConfiguration
}

public struct Candy {
    public struct Configuration {
        public let url: URL
        public let key: String
        public let application: UIApplication?
        public let userId: String?
        
        public init(url: URL, key: String, application: UIApplication? = nil, userId: String? = nil) {
            self.url = url
            self.key = key
            self.application = application
            self.userId = userId
        }
    }
    
    public private(set) static var currentConfiguration: Candy.Configuration?
    
    public static func setup(with conf: Candy.Configuration) {
        currentConfiguration = conf
    }
    
    public static func updateCurrentConfiguration(userId: String) throws {
        guard let conf = currentConfiguration else {
            throw CandyError.noCurrentConfiguration
        }
        
        currentConfiguration = Candy.Configuration(
            url: conf.url,
            key: conf.key,
            application: conf.application,
            userId: userId
        )
    }
}

public extension Candy {
    public static func track(event: Event) {
    }
}
