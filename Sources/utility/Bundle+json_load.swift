//
//  Bundle+json_load.swift
//  SMPClient
//
//  Created by Andy Stechishin on 2024-05-16.
//

import Foundation

extension Bundle {
    func jsonLoad<T:Decodable>(_ filename: String, as type:T.Type = T.self) -> T {
        let data: Data
        
        guard let file = self.url(forResource: filename, withExtension: "json")
        else {
            print("File not found in load")
            fatalError("Couldn't find \(filename) in bundle.")
        }
        
        do {
            data = try Data(contentsOf: file)
        } catch {
            fatalError("Couldn't load \(filename):\n\(error)")
        }
        
        do {
            let decoder = JSONDecoder()
//            decoder.dateDecodingStrategy = .iso8601
            decoder.dateDecodingStrategy = .formatted(DateFormatter.justDate)
            return try decoder.decode(T.self, from: data)
        } catch {
            fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
        }
    }
}
