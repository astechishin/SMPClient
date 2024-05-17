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

    /// The metadata about a resource. This is content in the resource that is maintained by the 
    /// infrastructure. Changes to the content might not always be associated with version changes 
    /// to the resource.
    /// 
    struct Meta: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Version specific identifier
        var versionId: String?

        /// When the resource version last changed
        var lastUpdated: Date?

        /// Identifies where the resource comes from
        var source: String?

        /// Profiles this resource claims to conform to
        var profile: [String]?

        /// Security Labels applied to this resource
        var security: [Coding]?

        /// Tags applied to this resource
        var tag: [Coding]?
    }
}
