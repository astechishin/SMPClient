//
//  MedListBundle.swift
//  SMPClient
//
//  Created by Andrew Stechishin on 2024-05-18.
//

import Foundation

struct MedListBundle: Resource {
    static let resourceName = "Bundle"
    
    struct Entry: Codable {
        var resource: FhirApi.List?
    }
    
    let resourceType = "Bundle"
    
    var id: String?
    var total: Int?
    var entry: [Entry]?
}
