//
//  Event.swift
//  candy-ios
//
//  Created by Oscar Swanros on 2/21/17.
//  Copyright © 2017 Oscar Swanros. All rights reserved.
//

public protocol Event {
    static var name: String { get }
    var properties: [String:Any] { get set }
}
