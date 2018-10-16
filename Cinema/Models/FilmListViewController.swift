//
//  FilmListViewController.swift
//  Cinema
//
//  Created by Federico Ceretta on 16/10/2018.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class FilmListController: UIViewController {
    
    private var listOfFilms : [Film] = []
    
    var seat1 = Seat(seatButton: "", seatPerson: email.Person)
    
    listOfFilms.add(Film(title : "Due Uomini E Una Gamba", summary : "Gian", seats: seat1 , image : "tre_uomini_e_una_gamba"))
}
