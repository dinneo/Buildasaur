//
//  Issue.swift
//  Buildasaur
//
//  Created by Honza Dvorsky on 13/12/2014.
//  Copyright (c) 2014 Honza Dvorsky. All rights reserved.
//

import Foundation

public class Issue : GitHubEntity {
    
    public let number: Int
    public let body: String
    public let title: String
    
    public required init(json: NSDictionary) {
        
        self.number = json.intForKey("number")
        self.body = json.stringForKey("body")
        self.title = json.stringForKey("title")
        
        super.init(json: json)
    }
}


