//
//  DecoderType.swift
//  SMPClient
//
//  Created by Andrew Stechishin on 2024-05-18.
//

import Foundation

public enum DecoderType {
    case onlyDate
    case iso86
    
    var decoder: JSONDecoder {
        switch self{
        case .onlyDate:
            return JSONDecoder.plainDateDecoder
        case .iso86:
            return JSONDecoder.iso8601Decoder
        }
    }
}
