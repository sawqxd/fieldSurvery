//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Sarah Wooldridge on 11/14/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ImageView: UIImageView!
    
    
    @IBOutlet weak var title: UILabel!
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
