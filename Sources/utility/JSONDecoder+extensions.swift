//
//  JSONDecoder+extensions.swift
//  SMPClient
//
//  Created by Andrew Stechishin on 2024-05-18.
//

import Foundation

extension JSONDecoder {
    static let plainDateDecoder = {
        let decoder = JSONDecoder()
        //decoder.dateDecodingStrategy = .iso8601
        decoder.dateDecodingStrategy = .formatted(DateFormatter.justDate)
        return decoder
    }()
    
    static let iso8601Decoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }()
}
