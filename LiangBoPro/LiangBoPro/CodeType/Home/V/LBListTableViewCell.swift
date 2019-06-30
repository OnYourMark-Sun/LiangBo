//
//  LBListTableViewCell.swift
//  LiangBoPro
//
//  Created by xujiahui on 2019/6/30.
//  Copyright © 2019 xujiahui. All rights reserved.
//

import UIKit

class LBListTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
