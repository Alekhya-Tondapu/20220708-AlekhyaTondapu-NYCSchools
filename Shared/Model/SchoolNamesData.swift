//
//  SchoolNamesData.swift
//  20220707-AlekhyaTondapu-NYCSchools (iOS)
//
//  Created by savvysoft on 07/07/22.
//

/*
 --------------------------------
 Model class for SchoolNames List
 ---------------------------------
*/
import Foundation
import SwiftUI
import CoreLocation

struct SchoolNamesData: Hashable, Codable, Identifiable {
    
    enum CodingKeys: String, CodingKey {
        case dbn
        case schoolName = "school_name"
        case schoolDesc = "overview_paragraph"
        case phoneNo = "phone_number"
        case email = "school_email"
        case seatsAvailable = "school_10th_seats"
        case latitude
        case longitude
    }
    
    var id: String {
            return self.dbn
        }
    var dbn: String
    var schoolName: String
    var schoolDesc: String
    var phoneNo: String
    var email: String?
    var seatsAvailable: String?
    
    var latitude: String?
    var longitude: String?
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: Double(latitude ?? "") ?? 0.0,
            longitude: Double(longitude ?? "") ?? 0.0)
    }

}
