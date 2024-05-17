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

    /// An identifier - identifies some entity uniquely and unambiguously. Typically this is used 
    /// for business identifiers.
    /// 
    struct Identifier: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// usual | official | temp | secondary | old (If known)
        var use: IdentifierUse?

        /// Description of identifier
        var type: CodeableConcept?

        /// The namespace for the identifier value
        var system: String?

        /// The value that is unique
        var value: String?

        /// Time period when id is/was valid for use
        var period: Period?

        /// Organization that issued id (may be just text)
        var assigner: Reference?
    }
}
