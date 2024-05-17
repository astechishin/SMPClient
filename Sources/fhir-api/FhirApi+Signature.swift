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

    /// A signature along with supporting context. The signature may be a digital signature that 
    /// is cryptographic in nature, or some other signature acceptable to the domain. This other 
    /// signature may be as simple as a graphical image representing a hand-written signature, or 
    /// a signature ceremony Different signature approaches have different utilities.
    /// 
    struct Signature: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Indication of the reason the entity signed the object(s)
        var type: [Coding]

        /// When the signature was created
        var when: Date

        /// Who signed
        var who: Reference

        /// The party represented
        var onBehalfOf: Reference?

        /// The technical format of the signed resources
        var targetFormat: String?

        /// The technical format of the signature
        var sigFormat: String?

        /// The actual signature content (XML DigSig. JWS, picture, etc.)
        var data: Data?
    }
}
