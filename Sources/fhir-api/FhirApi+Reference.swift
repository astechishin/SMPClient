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

    /// A reference from one resource to another.
    /// 
    struct Reference: Codable {
        /// Local version of Identifier structure
        /// 
        struct ReferenceIdentifier: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// usual | official | temp | secondary | old
            var use: IdentifierUse?

            /// Description of identifier
            var type: CodeableConcept?

            /// Namespace for the identifier value
            var system: String?

            /// The value that is unique
            var value: String?

            /// Time period when id is/was valid for use
            var period: Period?

            /// Organization that issued id
            var assigner: SimpleReference?
        }
        /// A constrained local reference from one resource to another
        /// 
        struct SimpleReference: Codable {
            /// Literal, relative or absolute URL of referred item
            var reference: String?

            /// Type of the resource being referred to
            var type: String?

            /// Text alternative for referenced item
            var display: String?
        }

        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Literal reference, Relative, internal or absolute URL
        var reference: String?

        /// Type the reference refers to (e.g. "Patient")
        var type: String?

        /// Logical reference, when literal reference is not known
        var identifier: ReferenceIdentifier?

        /// Text alternative for the resource
        var display: String?
    }
}
