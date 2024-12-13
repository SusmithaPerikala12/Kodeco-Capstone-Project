//
//  HistoryView.swift
//  BMICalc
//
//  Created by Susmitha Perikala on 25/11/24.
//
import SwiftUI

// swiftlint:disable all
// swiftlint:disable:previous blanket_disable_command

struct HistoryView: View {
    @State private var bmiViewModelList: [BMIViewModel] = []

    var body: some View {
        NavigationStack {
            List {
                ForEach(bmiViewModelList) { entry in
                    VStack {
                        Text("BMI Category: \(entry.bmiCategory)\n      BMI Value: \(entry.bmiVal)\n      Height: \(entry.height) Cm\n      Weight: \(entry.weight) Kg")
                        Text("\(entry.timestamp)")
                            .font(.caption2)
                            .foregroundStyle(.gray)
                            .padding(.trailing, 100)
                    }
                }
                .onDelete(perform: deleteEntry)
            }
            .navigationTitle("Saved Results")
            .onAppear {
                bmiViewModelList = BMIViewModel.loadSavedEntries()
            }
        }
    }

    private func deleteEntry(at offsets: IndexSet) {
        bmiViewModelList.remove(atOffsets: offsets)
        BMIViewModel.saveEntries(bmiViewModelList)
    }

}

#Preview {
    HistoryView()
}
