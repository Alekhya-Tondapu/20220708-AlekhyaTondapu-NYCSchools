//
//  SchoolNameRow.swift
//  20220707-AlekhyaTondapu-NYCSchools (iOS)
//
//  Created by savvysoft on 07/07/22.
//
/*
 -----------------------------------------
 Custom View to display the list of schools
 ------------------------------------------
 */
import SwiftUI

struct SchoolNameRow: View {
    var schoolRow: SchoolNamesData

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(schoolRow.schoolName)
                    .font(.system(.subheadline))
                    .foregroundColor(.primary)
                Text ("Available Slots: ")
                    .font(.system(.subheadline))
                    .foregroundColor(.primary)
                    .fontWeight(.bold)
                + Text(schoolRow.seatsAvailable ?? "0")
            }.padding()
        }
    }
}

struct SchoolNameRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SchoolNameRow(schoolRow: schoolNames[0])
            SchoolNameRow(schoolRow: schoolNames[1])
            }
    .previewLayout(.fixed(width: 300, height: 70))
    }
}
