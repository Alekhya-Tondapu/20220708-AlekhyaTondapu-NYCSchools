//
//  SchoolSatScores.swift
//  20220707-AlekhyaTondapu-NYCSchools
//
//  Created by savvysoft on 07/07/22.
//

/*
 ---------------------------------------------------------------
 Details screen which has list of selected school and sat scores .
 MapView fetches latitude and longitude and display location of school
 -------------------------------------------------------------------
 */
import SwiftUI
import MapKit

struct SchoolSatScores: View {
    var data: SchoolSatScoreData?
    var schoolData: SchoolNamesData?
    var body: some View {
        ScrollView {
            MapView(coordinate: schoolData?.locationCoordinate ?? CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            VStack(alignment: .leading, spacing: 12) {
                Text(data?.schoolName ?? "")
                    .font(.title)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("SAT SCORE:")
                            .font(.system(.subheadline))
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(data?.satScore ?? "")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("MATH SCORE:")
                            .font(.system(.subheadline))
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(data?.mathScore ?? "")
                    }
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.primary)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("READ SCORE:")
                            .font(.system(.subheadline))
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(data?.readingScore ?? "")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("WRITE SCORE:")
                            .font(.system(.subheadline))
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(data?.writingScore ?? "")
                    }
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.primary)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("EMAIL:")
                            .font(.system(.subheadline))
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(schoolData?.email ?? "")
                    }
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("PHONE:")
                            .font(.system(.subheadline))
                            .foregroundColor(.primary)
                            .fontWeight(.bold)
                        Text(schoolData?.phoneNo ?? "")
                    }
                    Spacer()
                }
                .font(.subheadline)
                .foregroundColor(.primary)
               
                Divider()
                VStack(alignment: .leading, spacing: 10) {
                    Text("DESCRIPTION:")
                        .font(.system(.subheadline))
                        .foregroundColor(.primary)
                        .fontWeight(.bold)
                    Text(schoolData?.schoolDesc ?? "")
                }
            }
            .padding()
        }
        .navigationTitle("School Details")
        .navigationBarTitleDisplayMode(.inline)

    }
}

/*
 ----------------------------------------------------------------------------
   Added extension for UINavigationController to hide the back button title
 ----------------------------------------------------------------------------
*/
extension UINavigationController {

  open override func viewWillLayoutSubviews() {
    super.viewWillLayoutSubviews()
    navigationBar.topItem?.backButtonDisplayMode = .minimal
  }

}

struct SchoolSatScores_Previews: PreviewProvider {
    static var previews: some View {
       SchoolSatScores()
    }
}
