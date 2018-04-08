//
//  PhaseTableViewCell.swift
//  Luna
//
//  Created by Rimil Dey on 08/04/18.
//  Copyright © 2018 Rimil Dey. All rights reserved.
//

import UIKit

extension String {
    var symbolForMoon: String {
        switch self {
        case "new moon":
            return "\u{f095}"
        case "first quarter":
            return "\u{f09c}"
        case "full moon":
            return "\u{f0a3}"
        case "last quarter":
            return "\u{f0aa}"
        default:
            return self
        }
    }
}

class PhaseTableViewCell: UITableViewCell {
    
    @IBOutlet var iconLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.iconLabel.text = ""
        self.dateLabel.text = ""
        
        self.selectionStyle = UITableViewCellSelectionStyle.none
        self.iconLabel.font = UIFont(name: "Weather Icons", size: 20.0)
        self.iconLabel.text = "\u{f00d}"
}
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
