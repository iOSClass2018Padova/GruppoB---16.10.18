//
//  DetailFilmCellTableViewCell.swift
//  Cinema
//
//  Created by Federico Ceretta on 16/10/2018.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class DetailFilmCell: UITableViewCell {

    @IBOutlet weak var detailFilmImage: UIImageView!
    @IBOutlet weak var detailFilmName: UILabel!
    @IBOutlet weak var detailFilmDescription: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        
        
    }
 
    func setup(film : Film) {
        
        detailFilmImage.image = UIImage(named: film.image)
        detailFilmName.text = film.title
        detailFilmDescription.text = film.summary
        
    }
}
