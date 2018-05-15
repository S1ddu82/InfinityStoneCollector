//
//  CustomTableViewCell.swift
//  InfinityStoneCollector
//
//  Created by Macho Man on 15/05/18.
//  Copyright © 2018 siddharth. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var Label: UILabel!
    
    
    @IBOutlet weak var ImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
