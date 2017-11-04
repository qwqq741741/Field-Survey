//
//  FieldSurveyTableViewCell.swift
//  Field Survey
//
//  Created by Wentao Song on 2017/11/4.
//  Copyright © 2017年 Wentao Song. All rights reserved.
//

import UIKit

class FieldSurveyTableViewCell: UITableViewCell {

    @IBOutlet weak var fieldIconImageView: UIImageView!
    
    @IBOutlet weak var titleLeable: UILabel!
    
    
    @IBOutlet weak var dateLable: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
