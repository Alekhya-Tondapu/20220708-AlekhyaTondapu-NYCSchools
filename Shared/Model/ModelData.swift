//
//  ModelData.swift
//  20220707-AlekhyaTondapu-NYCSchools (iOS)
//
//  Created by savvysoft on 07/07/22.
//

/*
 -------------------------------------------------
 Creating a Modal Data  from Json to populate in UI
 ---------------------------------------------------
*/

import Foundation

var schoolNames: [SchoolNamesData] = load("nycSchoolNames.json")
var satScores: [SchoolSatScoreData] = load("satScoresData.json")


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}


/*
 --------------------------------------------------------------------------------------------------------
 Instead of loading the data from local json the data can be parsed with API calls with help Json Decoder class
 Pesudo code
 ---------------------------------------------------------------------------------------------------------
 func getSchoolNames() {
     guard let quoteURL = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
         return
     }
     _ = urlSession.dataTaskPublisher(for: quoteURL).map { (data, response) -> Data in
         return data
         let jsonDecoder = JSONDecoder()
         return try jsonDecoder.decode(KanyeQuote.self, from: data)
     }.receive(on: DispatchQueue.main).sink(receiveCompletion: { (subscriber) in
         switch subscriber {
         case .failure(let error):
             print("Error: \(error.localizedDescription)")
         case .finished:
             break
         }
     }) {[unowned self] (quote) in
         self.schoolNames.insert(quote, at: 0)
     }
 }
 */
