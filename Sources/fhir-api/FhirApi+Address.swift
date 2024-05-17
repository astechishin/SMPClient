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

    /// An address expressed using postal conventions (as opposed to GPS or other location 
    /// definition formats).  This data type may be used to convey addresses for use in delivering 
    /// mail as well as for visiting locations which might not be valid for mail delivery.  There 
    /// are a variety of postal address formats defined around the world.
    /// 
    struct Address: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// home | work | temp | old | billing - purpose of this address
        var use: AddressUse?

        /// postal | physical | both
        var type: AddressType?

        /// Text representation of the address
        var text: String?

        /// Street name, number, direction & P.O. Box etc.
        var line: [String]?

        /// Name of city, town etc.
        var city: String?

        /// District name (aka county)
        var district: String?

        /// Sub-unit of country (abbreviations ok)
        var state: String?

        /// Postal code for area
        var postalCode: String?

        /// Country (e.g. can be ISO 3166 2 or 3 letter code)
        var country: String?

        /// Time period when address was/is in use
        var period: Period?
    }
}
