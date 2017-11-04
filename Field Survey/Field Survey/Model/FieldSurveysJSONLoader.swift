//
//  FieldObservationsJSONloader.swift
//  Field Survey
//
//  Created by Wentao Song on 2017/11/3.
//  Copyright © 2017年 Wentao Song. All rights reserved.
//

import Foundation

class FieldSurveysJSONLoader {
    
    class func load(fileName: String) -> [FieldSurvey]{
        var observations = [FieldSurvey]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = FieldSurveysJSONParser.parse(data)
        }
        
        return observations
    }
}
