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

    /// A series of measurements taken by a device, with upper and lower limits. There may be more 
    /// than one dimension in the data.
    /// 
    struct SampledData: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Zero value and units
        var origin: Quantity

        /// Number of milliseconds between samples
        var period: Decimal

        /// Multiply data by this before adding to origin
        var factor: Decimal?

        /// Lower limit of detection
        var lowerLimit: Decimal?

        /// Upper limit of detection
        var upperLimit: Decimal?

        /// Number of sample points at each time point
        var dimensions: Int

        /// Decimal values with spaces, or "E" | "U" | "L"
        var data: String?
    }
}
