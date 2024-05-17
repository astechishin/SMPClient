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

    /// Details for all kinds of technology mediated contact points for a person or organization, 
    /// including telephone, email, etc.
    /// 
    struct ContactPoint: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// phone | fax | email | pager | url | sms | other
        var system: ContactPointSystem?

        /// The actual contact point details
        var value: String?

        /// home | work | temp | old | mobile - purpose of this contact point
        var use: ContactPointUse?

        /// Specify preferred order of use (1 = highest)
        var rank: Int?

        /// Time period when the contact point was/is in use
        var period: Period?
    }
}
