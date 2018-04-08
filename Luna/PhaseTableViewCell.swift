//
//  PhaseTableViewCell.swift
//  Luna
//
//  Created by Rimil Dey on 08/04/18.
//  Copyright © 2018 Rimil Dey. All rights reserved.
//

import UIKit

class PhaseTableViewCell: UITableViewCell {
    
    @IBOutlet var iconLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.iconLabel.text = ""
        self.dateLabel.text = ""
        
        self.selectionStyle = UITableViewCellSelectionStyle.none
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
