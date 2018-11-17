//
//  FieldSurveyJSONLoader.swift
//  Field Survey
//
//  Created by Sarah Wooldridge on 11/14/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import Foundation

class FieldSurveryJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey] {
        
        var  field = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)) {
            
            field = FieldSurveyJSONParser.parse(data)
        }
        return field
    }
}
