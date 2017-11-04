//
//  FieldObservationsJSONParser.swift
//  Field Survey
//
//  Created by Wentao Song on 2017/11/3.
//  Copyright © 2017年 Wentao Song. All rights reserved.
//

import Foundation

class FieldSurveysJSONParser {
    
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldSurvey] {
        var fieldSurveys = [FieldSurvey]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String:Any],
            let status = root["status"] as? String,
            status == "ok" {
            
            if let observations = root["observations"] as? [Any]{
                for observation in observations{
                    if let observation = observation as? [String:String]{
                        if let classificationName = observation["classification"],
                            let title = observation["title"],
                            let description = observation["description"],
                            let dateString = observation["date"],
                            let date = dateFormatter.date(from: dateString){
                            
                            if let fieldSurvey = FieldSurvey(classificationName: classificationName, title: title, description: description, date: date){
                                fieldSurveys.append(fieldSurvey)
                            }
                        }
                    }
                }
            }
        }
        return fieldSurveys
    }
}

