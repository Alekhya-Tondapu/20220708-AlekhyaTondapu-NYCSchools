//
//  SchoolSatScoreVM.swift
//  20220707-AlekhyaTondapu-NYCSchools
//
//  Created by savvysoft on 07/07/22.
//


/*
 ------------------------------------------------------------------------------------------------------
 View Modal has the business logic i.e the filter condition which help us identify and find the selected school from List.
 
 Note: In our scenario the same filter condition can be directly done in SchoolList UIclass Line no 24 because there is no much big functionality involved.
 ---------------------------------------------------------------------------------------------------------
 */
import Foundation

class SchoolSatScoreVM: ObservableObject {
    
    var selectedSatScore : SchoolSatScoreData?
    
    init(){
        
    }
    
    func getSelectedRecord(selectedSchoolName: SchoolNamesData) -> SchoolSatScoreData? {
        let satScore  = satScores.filter({$0.dbn == selectedSchoolName.dbn})
        return satScore.first
    }

}

/***/
