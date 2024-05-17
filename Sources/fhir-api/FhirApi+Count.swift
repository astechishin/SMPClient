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

    /// A measured amount (or an amount that can potentially be measured). Note that measured 
    /// amounts include amounts that are not precisely quantified, including amounts involving 
    /// arbitrary units and floating currencies.
    /// 
    struct Count: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Numerical value (with implicit precision)
        var value: Decimal?

        /// < | <= | >= | > - how to understand the value
        var comparator: QuantityComparator?

        /// Unit representation
        var unit: String?

        /// System that defines coded unit form
        var system: String?

        /// Coded form of the unit
        var code: String?
    }
}
