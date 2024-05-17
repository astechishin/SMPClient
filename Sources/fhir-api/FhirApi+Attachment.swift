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

    /// For referring to data content defined in other formats.
    /// 
    struct Attachment: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Mime type of the content, with charset etc.
        var contentType: String?

        /// Human language of the content (BCP-47)
        var language: Languages?

        /// Data inline, base64ed
        var data: Data?

        /// Uri where the data can be found
        var url: URL?

        /// Number of bytes of content (if url provided)
        var size: Int?

        /// Hash of the data (sha-1, base64ed)
        var hash: Data?

        /// Label to display in place of the data
        var title: String?

        /// Date attachment was first created
        var creation: Date?
    }
}
