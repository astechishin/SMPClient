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

    /// A description of a triggering event. Triggering events can be named events, data events, 
    /// or periodic, as determined by the type element.
    /// 
    struct TriggerDefinition: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// named-event | periodic | data-changed | data-added | data-modified | data-
        /// removed | data-accessed | data-access-ended
        var type: TriggerType

        /// Name or URI that identifies the event
        var name: String?

        /// Timing of the event
        var timingTiming: Timing?
        var timingReference: Reference?
        var timingDate: Date?
        var timingDateTime: Date?

        /// Triggering data of the event (multiple = 'and')
        var data: [DataRequirement]?

        /// Whether the event triggers (boolean expression)
        var condition: Expression?
    }
}
