//
//  Film.swift
//  Cinema
//
//  Created by Gianluca on 16/10/2018.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//
import Foundation
import UIKit
import RealmSwift

@objcMembers class Film: Object {
    
    dynamic var id : String!
    dynamic var title : String!
    dynamic var summary : String!
    private var seats : List<Seat>!
    dynamic var image : Data!
    
convenience init(title : String!, summary: String!, seats: List<Seat>!, image: Data!) {
        self.init()
        
        self.title = title
        self.summary = summary
        self.seats = seats
        self.image = image
        self.id = title 
    }
    
    func changeData(in realm: Realm = try! Realm(configuration: RealmUtils.config), seats: List<Seat>!, film: Film? = nil) {
        do {
            try realm.write {
                self.seats = seats ?? film?.seats ?? self.seats
            }
        }catch {}
        
    }
    
    static func all(in realm: Realm = try! Realm(configuration: RealmUtils.config)) -> [Film] {
        return Array(realm.objects(Film.self))
    }
    
}
