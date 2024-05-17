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

    /// A human-readable summary of the resource conveying the essential clinical and business 
    /// information for the resource.
    /// 
    struct Narrative: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// generated | extensions | additional | empty
        var status: NarrativeStatus

        /// Limited xhtml content
        var div: String
    }
}
