//
//  FilmListViewController.swift
//  Cinema
//
//  Created by Federico Ceretta on 16/10/2018.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class FilmListViewController: UIViewController {
    
    @IBOutlet weak var filmTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension FilmListViewController : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = filmTableView.dequeueReusableCell(withIdentifier: "filmCell", for: indexPath) as! DetailFilmCell
        
        if(indexPath.row == 0){
            cell.setup(film: Film(title : "Tre Uomini E Una Gamba", summary : "Tre amici che flexano un viaggio al limite del paranormale, tra peperonate e gambe non mancheranno le trappate pesanti.", seats : nil, image : "TreUominiEUnaGamba"))
        }
        if(indexPath.row == 1){
            cell.setup(film: Film(title : "Ramboso Do", summary : "Il secondo capitolo del pluripremiato capolavoro della Toi Tuto (Dolliwood). Noioso, posato e astemio sono gli aggettivi che meno si possono associare a questo film.", seats : nil, image : "RambosoDo"))
        }
        if(indexPath.row == 2){
            cell.setup(film: Film(title : "Svalvolati On The Road", summary : "Quattro amici alla ricerca di gioventù e divertimento, con ghiaccio nei cuori, nei colli e nei polsi, si trapperanno la scena del viaggio come mai prima.", seats : nil, image : "SvalvolatiOnTheRoad"))
        }
        if(indexPath.row == 3){
            cell.setup(film: Film(title : "Attila Flagello Di Dio", summary : "Film storico di una precisione fulminante, niente è lasciato al caso, violenza e mari di sangue non mancheranno.", seats : nil, image : "AttilaFlagelloDiDio"))
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

