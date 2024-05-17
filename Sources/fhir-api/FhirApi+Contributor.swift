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

    /// A contributor to the content of a knowledge asset, including authors, editors, reviewers, 
    /// and endorsers.
    /// 
    struct Contributor: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// author | editor | reviewer | endorser
        var type: ContributorType

        /// Who contributed the content
        var name: String

        /// Contact details of the contributor
        var contact: [ContactDetail]?
    }
}
