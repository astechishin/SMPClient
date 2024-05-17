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

    /// A reference to a resource (by instance), or instead, a reference to a concept defined in a 
    /// terminology or ontology (by class).
    /// 
    struct CodeableReference: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Reference to a concept (by class)
        var concept: CodeableConcept?

        /// Reference to a resource (by instance)
        var reference: Reference?
    }
}
