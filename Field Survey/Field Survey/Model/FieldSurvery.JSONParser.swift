//
//  FieldSurvery.JSONParser.swift
//  Field Survey
//
//  Created by Sarah Wooldridge on 11/14/18.
//  Copyright © 2018 Sarah Wooldridge. All rights reserved.
//

import Foundation

class FieldSurveyJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        
        var fieldSurvey = [FieldSurvey]()
        dateFormatter.dateFormat = "YYY-MM-DDTHH:MM:SSZ"
        
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String: Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any] {
                for observation in observations {
                    
                    if let observation = observation as? [String: String] {
                        if let classificationName = observation["classification"],
                            let title = observation["title"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString) {
                            
                            if let fieldsurvey = FieldSurvey(classificationName: classificationName, title: title, description: description, date: date) {
                                
                                    fieldSurvey.append(fieldsurvey)
                                
                            }
                        }
                        
                    }
                    
                }
                
            }
            
        }
        
        
        return fieldSurvey
        
    }
}
