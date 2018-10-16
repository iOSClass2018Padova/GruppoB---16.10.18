//
//  Seat.swift
//  Cinema
//
//  Created by Gianluca on 16/10/2018.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//
import Foundation
import UIKit
import RealmSwift

class Seat: Object {
    private var seatButton : UIButton!
    private var seatPerson : String?
    
    convenience init(seatButton : UIButton!, seatPerson: String? = nil){
        self.init()
        self.seatButton = seatButton
        self.seatPerson = seatPerson
    }
    func changeData(in realm: Realm = try! Realm(configuration: RealmUtils.config), seatPerson : String? = nil, seat: Seat? = nil) {
        do {
            try realm.write {
                self.seatPerson = seatPerson ?? seat?.seatPerson ?? self.seatPerson
            }
        }catch {}
        
    }
    
    static func all(in realm: Realm = try! Realm(configuration: RealmUtils.config)) -> [Seat] {
        return Array(realm.objects(Seat.self))
    }
}
