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

    /// A range of ratios expressed as a low and high numerator and a denominator.
    /// 
    struct RatioRange: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Low Numerator limit
        var lowNumerator: Quantity?

        /// High Numerator limit
        var highNumerator: Quantity?

        /// Denominator value
        var denominator: Quantity?
    }
}
