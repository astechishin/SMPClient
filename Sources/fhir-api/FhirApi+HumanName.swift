//
// FhirApi.swift
//
// - Copyright (c) 2024 CANA Software & Services
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

/// The core complex datatypes in FHIR 4.3.0
extension FhirApi {

    /// A human's name with the ability to identify parts and usage.
    /// 
    struct HumanName: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// usual | official | temp | nickname | anonymous | old | maiden
        var use: NameUse?

        /// Text representation of the full name
        var text: String?

        /// Family name (often called 'Surname')
        var family: String?

        /// Given names (not always 'first'). Includes middle names
        var given: [String]?

        /// Parts that come before the name
        var prefix: [String]?

        /// Parts that come after the name
        var suffix: [String]?

        /// Time period when name was/is in use
        var period: Period?
    }
}
