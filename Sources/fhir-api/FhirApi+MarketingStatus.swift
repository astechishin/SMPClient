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

    /// The marketing status describes the date when a medicinal product is actually put on the 
    /// market or the date as of which it is no longer available.
    /// 
    struct MarketingStatus: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// The country in which the marketing authorisation has been granted shall be 
        /// specified It should be specified using the ISO 3166 ‑ 1 alpha-2 code elements
        var country: CodeableConcept?

        /// Where a Medicines Regulatory Agency has granted a marketing authorisation for 
        /// which specific provisions within a jurisdiction apply, the jurisdiction can be 
        /// specified using an appropriate controlled terminology The controlled term and 
        /// the controlled term identifier shall be specified
        var jurisdiction: CodeableConcept?

        /// This attribute provides information on the status of the marketing of the 
        /// medicinal product See ISO/TS 20443 for more information and examples
        var status: CodeableConcept

        /// The date when the Medicinal Product is placed on the market by the Marketing 
        /// Authorisation Holder (or where applicable, the manufacturer/distributor) in a 
        /// country and/or jurisdiction shall be provided A complete date consisting of day, 
        /// month and year shall be specified using the ISO 8601 date format NOTE “Placed on 
        /// the market” refers to the release of the Medicinal Product into the distribution 
        /// chain
        var dateRange: Period?

        /// The date when the Medicinal Product is placed on the market by the Marketing 
        /// Authorisation Holder (or where applicable, the manufacturer/distributor) in a 
        /// country and/or jurisdiction shall be provided A complete date consisting of day, 
        /// month and year shall be specified using the ISO 8601 date format NOTE “Placed on 
        /// the market” refers to the release of the Medicinal Product into the distribution 
        /// chain
        var restoreDate: Date?
    }
}
