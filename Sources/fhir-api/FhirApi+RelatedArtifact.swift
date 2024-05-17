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

    /// Related artifacts such as additional documentation, justification, or bibliographic 
    /// references.
    /// 
    struct RelatedArtifact: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// documentation | justification | citation | predecessor | successor | derived-
        /// from | depends-on | composed-of
        var type: RelatedArtifactType

        /// Short label
        var label: String?

        /// Brief description of the related artifact
        var display: String?

        /// Bibliographic citation for the artifact
        var citation: String?

        /// Where the artifact can be accessed
        var url: URL?

        /// What document is being referenced
        var document: Attachment?

        /// What resource is being referenced
        var resource: String?
    }
}
