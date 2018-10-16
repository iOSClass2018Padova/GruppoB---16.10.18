//
//  Person.swift
//  Cinema
//
//  Created by Federico Ceretta on 16/10/2018.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

@objcMembers class Person: Object {
    
    dynamic var id : String!
    dynamic var email : String!
    dynamic var name : String!
    dynamic var surname : String!
    dynamic var password : String!
    
    
    convenience init( email: String? = nil, name : String? = nil, surname: String? = nil, password: String? = nil) {
        self.init()
        
        self.email = email
        self.name = name
        self.surname = surname
        self.password = password
        self.id = email
        
        
    }
    
    func fullName() -> String {
        var fullName = ""
        
        fullName += (self.name != nil) ? self.name! + " " : ""
        fullName += self.surname ?? ""
        
        return fullName
    }
    
    func changeData(in realm: Realm = try! Realm(configuration: RealmUtils.config), email: String? = nil, name : String? = nil, surname: String? = nil, password: String? = nil, person: Person? = nil) {
        do {
            try realm.write {
                
                self.email = email ?? person?.email ?? self.email
                self.name = name ?? person?.name ?? self.name
                self.surname = surname ?? person?.surname ?? self.surname
                self.password = password ?? person?.password ?? self.password
                
            }
        }catch {}
        
    }
    
    
    func add(in realm: Realm = try! Realm(configuration: RealmUtils.config)) {
        do {
            try realm.write {
                realm.add(self)
            }
        } catch {}
    }
    
    static func all(in realm: Realm = try! Realm(configuration: RealmUtils.config)) -> [Person] {
        return Array(realm.objects(Person.self))
    }
    
    func remove(in realm: Realm = try! Realm(configuration: RealmUtils.config)) {
        do {
            try realm.write {
                realm.delete(self)
            }
        } catch {}
    }
    
}
