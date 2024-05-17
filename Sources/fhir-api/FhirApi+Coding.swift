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

    /// A reference to a code defined by a terminology system.
    /// 
    struct Coding: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Identity of the terminology system
        var system: String?

        /// Version of the system - if relevant
        var version: String?

        /// Symbol in syntax defined by the system
        var code: String?

        /// Representation defined by the system
        var display: String?

        /// If this coding was chosen directly by the user
        var userSelected: Bool?
    }
}
