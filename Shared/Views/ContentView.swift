//
//  ContentView.swift
//  Shared
//
//  Created by savvysoft on 07/07/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var satScoreVM = SchoolSatScoreVM()

    var body: some View {
        VStack {
            NavigationView {
                List(schoolNames) { schoolName in
                    NavigationLink {
                        if(satScoreVM.getSelectedRecord(selectedSchoolName: schoolName) != nil) {
                            SchoolSatScores(data: satScoreVM.getSelectedRecord(selectedSchoolName: schoolName), schoolData: schoolName)
                        } else {
                            Text ("No Records Found")
                                .font(.system(.subheadline))
                                .foregroundColor(.primary)
                                .fontWeight(.bold)
                        }
                    } label: {
                        SchoolNameRow(schoolRow: schoolName)
                            .navigationTitle("NYC Schools")
                    }
                }
            }
        }.padding([.leading],0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
