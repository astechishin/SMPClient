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

    /// Specifies clinical/business/etc. metadata that can be used to retrieve, index and/or 
    /// categorize an artifact. This metadata can either be specific to the applicable population (
    /// e.g., age category, DRG) or the specific context of care (e.g., venue, care setting, 
    /// provider of care).
    /// 
    struct UsageContext: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Type of context being specified
        var code: Coding

        /// Value that defines the context
        var valueCodeableConcept: CodeableConcept?
        var valueQuantity: Quantity?
        var valueRange: Range?
        var valueReference: Reference?
    }
}
