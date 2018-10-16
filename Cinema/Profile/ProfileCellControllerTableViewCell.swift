//
//  ProfileCellControllerTableViewCell.swift
//  Cinema
//
//  Created by Giacomo on 16/10/18.
//  Copyright © 2018 Michele Pertile. All rights reserved.
//

import UIKit

class ProfileCellControllerTableViewCell: UITableViewCell {
    
    
    static let kIdentifier = "DetailPersonInfoCellTop"
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet var profileText: [UITextField]!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}



class ProfileCellControllerTableViewCell2: UITableViewCell {
    static let kIdentifier = "DetailPersonInfoCellBot"
    
    @IBOutlet weak var profileText: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
