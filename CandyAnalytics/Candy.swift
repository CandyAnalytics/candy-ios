//
//  Candy.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/21/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

public struct Candy {
    public struct Configuration {
        public let url: URL
        public let key: String
        public let application: UIApplication?
        
        public init(url: URL, key: String, application: UIApplication? = nil) {
            self.url = url
            self.key = key
            self.application = application
        }
    }
    
    fileprivate static var configuration: Candy.Configuration?
    
    public static func setup(with conf: Candy.Configuration) {
        Candy.configuration = conf
    }
}

public extension Candy {
    public static func track(event: Event) {
    }
}
