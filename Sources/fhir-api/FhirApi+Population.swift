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

    /// A populatioof people with some set of grouping criteria.
    /// 
    struct Population: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// The age of the specific population
        var ageRange: Range?
        var ageCodeableConcept: CodeableConcept?

        /// The gender of the specific population
        var gender: CodeableConcept?

        /// Race of the specific population
        var race: CodeableConcept?

        /// The existing physiological conditions of the specific population to which this 
        /// applies
        var physiologicalCondition: CodeableConcept?
    }
}
