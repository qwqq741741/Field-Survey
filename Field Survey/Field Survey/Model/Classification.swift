//
//  Classification.swift
//  Field Survey
//
//  Created by Wentao Song on 2017/11/3.
//  Copyright © 2017年 Wentao Song. All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
}
