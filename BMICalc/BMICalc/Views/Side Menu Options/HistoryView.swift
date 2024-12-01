//
//  HistoryView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 25/11/24.
//

import SwiftUI
struct HistoryView: View {

    @State private var bmiViewModelList: [BMIViewModel] = []

    var body: some View {
        NavigationStack {
            List {
                ForEach(bmiViewModelList) { entry in
                    Text("BMI Category: \(entry.bmiCategory)\n      BMI Value: \(entry.bmiVal)\n      Height: \(entry.height) Cm\n      Weight: \(entry.weight) Kg")
                    // swiftlint:disable:previous line_length
                }
                .onDelete(perform: deleteEntry)
            }
            .navigationTitle("Saved Results")
            .onAppear {
                bmiViewModelList = BMIViewModel.loadSavedEntries()
            }
        }
    }
    func deleteEntry(at offsets: IndexSet) {
        bmiViewModelList.remove(atOffsets: offsets)
        BMIViewModel.saveEntries(bmiViewModelList)
    }
}
#Preview {
    HistoryView()
}
