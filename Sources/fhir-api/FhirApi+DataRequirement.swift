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

    /// Describes a required data item for evaluation in terms of the type of data, and optional 
    /// code or date-based filters of the data.
    /// 
    struct DataRequirement: Codable {
        /// Code filters specify additional constraints on the data, specifying the value set of 
        /// interest for a particular element of the data. Each code filter defines an additional 
        /// constraint on the data, i.e. code filters are AND'ed, not OR'ed.
        /// 
        struct CodeFilter: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// A code-valued attribute to filter on
            var path: String?

            /// A coded (token) parameter to search on
            var searchParam: String?

            /// Valueset for the filter
            var valueSet: String?

            /// What code is expected
            var code: [Coding]?
        }
        /// Date filters specify additional constraints on the data in terms of the applicable date 
        /// range for specific elements. Each date filter specifies an additional constraint on the 
        /// data, i.e. date filters are AND'ed, not OR'ed.
        /// 
        struct DateFilter: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// A date-valued attribute to filter on
            var path: String?

            /// A date valued parameter to search on
            var searchParam: String?

            /// The value of the filter, as a Period, DateTime, or Duration value
            var valueDateTime: Date?
            var valuePeriod: Period?
            var valueDuration: Duration?
        }
        /// Specifies the order of the results to be returned.
        /// 
        struct Sort: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// The name of the attribute to perform the sort
            var path: String

            /// ascending | descending
            var direction: SortDirection
        }

        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// The type of the required data
        var type: String

        /// The profile of the required data
        var profile: [String]?

        /// E.g. Patient, Practitioner, RelatedPerson, Organization, Location, Device
        var subjectCodeableConcept: CodeableConcept?
        var subjectReference: Reference?

        /// Indicates specific structure elements that are referenced by the knowledge 
        /// module
        var mustSupport: [String]?

        /// What codes are expected
        var codeFilter: [CodeFilter]?

        /// What dates/date ranges are expected
        var dateFilter: [DateFilter]?

        /// Number of results
        var limit: Int?

        /// Order of the results
        var sort: [Sort]?
    }
}
