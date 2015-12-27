//
//  User.swift
//  Autolayout
//
//  Created by Trong Le on 12/27/15.
//  Copyright © 2015 Trong Le. All rights reserved.
//

import Foundation

// Create database for usability
struct User
{
    
    let name: String
    let company: String
    let login: String
    let password: String
    
    static func login (login: String, password: String) -> User? {
        if let user = database[login] {
            if user.password == password {
                return user
            }
        }
        return nil
    }
    
    static let database: Dictionary<String, User> = {
        var theDatabase = Dictionary<String, User>()
        for user in [
            User(name: "Trong Le", company: "Ohio State", login: "tle", password: "foo"),
            User(name: "Alois Barreras", company: "EW Scripps", login: "abar", password: "foo"),
            User(name: "Craig Barreras", company: "University of Cincinnati", login: "cbar", password: "foo")
            ] {
                theDatabase[user.login] = user
        
        }
        return theDatabase
    }()

}