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

    /// An amount of economic utility in some recognized currency.
    /// 
    struct Money: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Numerical value (with implicit precision)
        var value: Decimal?

        /// ISO 4217 Currency Code
        var currency: String?
    }
}
