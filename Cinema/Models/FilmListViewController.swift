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
            cell.setup(film: Film(title : "Tre Uomini E Una Gamba", summary : "descrizione", seats : nil, image : "TreUominiEUnaGamba"))
        }
        if(indexPath.row == 1){
            cell.setup(film: Film(title : "To Sorea Onta", summary : "descrizione", seats : nil, image : "TreUominiEUnaGamba"))
        }
        if(indexPath.row == 2){
            cell.setup(film: Film(title : "Tre Uomini E Una Gamba", summary : "descrizione", seats : nil, image : "TreUominiEUnaGamba"))
        }
        if(indexPath.row == 3){
            cell.setup(film: Film(title : "Tre Uomini E Una Gamba", summary : "descrizione", seats : nil, image : "TreUominiEUnaGamba"))
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
}

