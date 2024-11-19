//
//  HistoryView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 14/11/24.
//
import SwiftUI
struct HistoryView: View {

    @State private var bmiViewModelList: [BMIViewModel] = []

    var body: some View {
        NavigationStack {
            List {
                ForEach(bmiViewModelList) { entry in
                    Text("Weight: \(entry.weight) Kg, Height: \(entry.height) Cm , Bmi Value: \(entry.bmiVal) Bmi Category: \(entry.bmiCategory)")
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
