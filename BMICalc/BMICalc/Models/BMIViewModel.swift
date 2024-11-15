//
//  BMIViewModel.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 14/11/24.
//

import Foundation

struct BMIViewModel: Identifiable, Codable, Hashable{
    var id = UUID()
    let weight: Int
    let height: Int
    let bmiVal: String

    func saveSelections(bmiBrain: BMIBrain) {
            let newEntry = BMIViewModel(weight: Int(bmiBrain.weight), height: Int(bmiBrain.height), bmiVal: bmiBrain.bmiVal)

            var savedEntries = BMIViewModel.loadSavedEntries()
            savedEntries.append(newEntry)

            if let encoded = try? JSONEncoder().encode(savedEntries) {
                UserDefaults.standard.set(encoded, forKey: "savedEntries")
            }
        }
    static func loadSavedEntries() -> [BMIViewModel] {
           if let data = UserDefaults.standard.data(forKey: "savedEntries"),
              let entries = try? JSONDecoder().decode([BMIViewModel].self, from: data) {
               return entries
           }
           return []
       }
    static func saveEntries(_ entries: [BMIViewModel]) {
            guard let encoded = try? JSONEncoder().encode(entries) else { return }
            UserDefaults.standard.set(encoded, forKey: "savedEntries")
        }
}
