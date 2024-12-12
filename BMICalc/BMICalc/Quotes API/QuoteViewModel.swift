//
//  QuoteViewModel.swift
//  QuotesAPI
//
//  Created by Susmitha Perikala on 25/11/24.
//
import Foundation

@MainActor

class QuoteViewModel: ObservableObject {
    @Published var quote: String = "Click the button to get a Positive quote!"
    @Published var isLoading: Bool = false

    func fetchQuote() async {
        isLoading = true
        defer { isLoading = false }
        do {
            if let fetchedQuote = try await QuoteService.fetchRandomQuote() {
                quote = fetchedQuote
            } else {
                quote = "Failed to fetch quote. Please try again!"
            }
        } catch DecodingError.dataCorrupted(let context) {
            quote = "Data Corrupted: \(context.debugDescription)"
        } catch DecodingError.keyNotFound(let key, let context) {
            quote = "Key \(key.stringValue) not found: \(context.debugDescription)"
        } catch DecodingError.typeMismatch(let type, let context) {
            quote = "Type mismatch for the type \(type): \(context.debugDescription)"
        } catch DecodingError.valueNotFound(let type, let context) {
            quote = "Value not found for the type \(type): \(context.debugDescription)"
        } catch {
            quote = "An error occurred: \(error.localizedDescription)"
        }
    }
}
