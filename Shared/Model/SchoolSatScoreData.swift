//
//  SchoolSatScoreData.swift
//  20220707-AlekhyaTondapu-NYCSchools
//
//  Created by savvysoft on 07/07/22.
//
/*
 --------------------------------
 Model class for SatScores List
 ---------------------------------
*/

import Foundation
import SwiftUI

struct SchoolSatScoreData: Hashable, Codable {
    
    enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case satScore = "num_of_sat_test_takers"
        case readingScore = "sat_critical_reading_avg_score"
        case writingScore = "sat_writing_avg_score"
        case mathScore = "sat_math_avg_score"
    }
    
    var dbn: String
    var schoolName: String
    var satScore: String
    var readingScore: String
    var writingScore: String
    var mathScore: String?
 
}
