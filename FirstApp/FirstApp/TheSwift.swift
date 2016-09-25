//
//  TheSwift.swift
//  TheSwift
//
//  Created by Lea Marolt on 11/22/15.
//  Copyright © 2015 Lea Marolt Sonnenschein. All rights reserved.
//

import Foundation

public enum rowIndex: Int {
    case firstName, lastName, birthday, height, weight
    
    static let rowTitles = [
        firstName : ("First Name", "Taylor"),
        lastName : ("Last Name", "Swift"),
        birthday : ("Birthday", "Dec 13, 1989"),
        height : ("Height", "5'9"),
        weight : ("Weight", "120 lbs")]
    
    static let rowNums = weight.rawValue + 1
    
    func rowTitle() -> String {
        if let rowName = rowIndex.rowTitles[self] {
            return rowName.0
        } else {
            return "Missing"
        }
    }
    
    func rowDetail() -> String {
        if let rowName = rowIndex.rowTitles[self] {
            return rowName.1
        } else {
            return "Missing"
        }
    }
}
