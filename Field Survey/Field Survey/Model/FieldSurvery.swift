//
//  FieldSurvery.swift
//  Field Survey
//
//  Created by Sarah Wooldridge on 11/14/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import UIKit

enum Field: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
