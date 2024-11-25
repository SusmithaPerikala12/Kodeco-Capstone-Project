//
//  QuoteService.swift
//  QuotesAPI
//
//  Created by Susmitha Perikala on 25/11/24.
//

import Foundation

struct QuoteService {
    static func fetchRandomQuote() async throws -> String? {
        let url = URL(string: "https://qapi.vercel.app/api/random")!
        let (data, _) = try await URLSession.shared.data(from: url)
        if let json = try? JSONSerialization.jsonObject(with: data) as? [String: Any],
           let quote = json["quote"] as? String {
            return quote
        }
        return nil
    }
   
}
