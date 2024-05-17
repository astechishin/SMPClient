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

    /// Indicates how the medication is/was taken or should be taken by the patient.
    /// 
    struct Dosage: Codable {
        /// The amount of medication administered.
        /// 
        struct DoseAndRate: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// The kind of dose or rate specified
            var type: CodeableConcept?

            /// Amount of medication per dose
            var doseRange: Range?
            var doseQuantity: Quantity?

            /// Amount of medication per unit of time
            var rateRatio: Ratio?
            var rateRange: Range?
            var rateQuantity: Quantity?
        }

        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// The order of the dosage instructions
        var sequence: Int?

        /// Free text dosage instructions e.g. SIG
        var text: String?

        /// Supplemental instruction or warnings to the patient - e.g. "with meals", "may 
        /// cause drowsiness"
        var additionalInstruction: [CodeableConcept]?

        /// Patient or consumer oriented instructions
        var patientInstruction: String?

        /// When medication should be administered
        var timing: Timing?

        /// Take "as needed" (for x)
        var asNeededBoolean: Bool?
        var asNeededCodeableConcept: CodeableConcept?

        /// Body site to administer to
        var site: CodeableConcept?

        /// How drug should enter body
        var route: CodeableConcept?

        /// Technique for administering medication
        var method: CodeableConcept?

        /// Amount of medication administered
        var doseAndRate: [DoseAndRate]?

        /// Upper limit on medication per unit of time
        var maxDosePerPeriod: Ratio?

        /// Upper limit on medication per administration
        var maxDosePerAdministration: Quantity?

        /// Upper limit on medication per lifetime of the patient
        var maxDosePerLifetime: Quantity?
    }
}
