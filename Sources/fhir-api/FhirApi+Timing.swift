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

    /// Specifies an event that may occur multiple times. Timing schedules are used to record when 
    /// things are planned, expected or requested to occur. The most common usage is in dosage 
    /// instructions for medications. They are also used when planning care of various kinds, and 
    /// may be used for reporting the schedule to which past regular activities were carried out.
    /// 
    struct Timing: Codable {
        /// A set of rules that describe when the event is scheduled.
        /// 
        struct Repeat: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Length/Range of lengths, or (Start and/or end) limits
            var boundsDuration: Duration?
            var boundsRange: Range?
            var boundsPeriod: Period?

            /// Number of times to repeat
            var count: Int?

            /// Maximum number of times to repeat
            var countMax: Int?

            /// How long when it happens
            var duration: Decimal?

            /// How long when it happens (Max)
            var durationMax: Decimal?

            /// s | min | h | d | wk | mo | a - unit of time (UCUM)
            var durationUnit: UnitsOfTime?

            /// Event occurs frequency times per period
            var frequency: Int?

            /// Event occurs up to frequencyMax times per period
            var frequencyMax: Int?

            /// Event occurs frequency times per period
            var period: Decimal?

            /// Upper limit of period (3-4 hours)
            var periodMax: Decimal?

            /// s | min | h | d | wk | mo | a - unit of time (UCUM)
            var periodUnit: UnitsOfTime?

            /// mon | tue | wed | thu | fri | sat | sun
            var dayOfWeek: [DaysOfWeek]?

            /// Time of day for action
            var timeOfDay: [String]?

            /// Code for time period of occurrence
            var when: [String]?

            /// Minutes from event (before or after)
            var offset: Int?
        }

        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// When the event occurs
        var event: [Date]?

        /// When the event is to occur
        var `repeat`: Repeat?

        /// BID | TID | QID | AM | PM | QD | QOD | +
        var code: CodeableConcept?
    }
}
