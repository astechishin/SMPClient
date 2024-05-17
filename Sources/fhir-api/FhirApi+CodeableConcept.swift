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

    /// A concept that may be defined by a formal reference to a terminology or ontology or may be 
    /// provided by text.
    /// 
    struct CodeableConcept: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Code defined by a terminology system
        var coding: [Coding]?

        /// Plain text representation of the concept
        var text: String?
    }
}
