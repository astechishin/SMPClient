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

    /// A  text note which also  contains information about who made the statement and when.
    /// 
    struct Annotation: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Individual responsible for the annotation
        var authorReference: Reference?
        var authorString: String?

        /// When the annotation was made
        var time: Date?

        /// The annotation  - text content (as markdown)
        var text: String
    }
}
