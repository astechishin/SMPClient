//
// FhirApi+Medication.swift
//
// This resource is primarily used for the identification and definition of a medication for 
// the purposes of prescribing, dispensing, and administering a medication as well as for 
// making statements about medication use.
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

extension FhirApi {

    /// This resource is primarily used for the identification and definition of a medication for 
    /// the purposes of prescribing, dispensing, and administering a medication as well as for 
    /// making statements about medication use.
    /// 
    struct Medication: Codable, Resource {
        /// Identifies a particular constituent of interest in the product.
        /// 
        struct Ingredient: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// The actual ingredient or content
            var itemCodeableConcept: CodeableConcept?
            var itemReference: Reference?

            /// Active ingredient indicator
            var isActive: Bool?

            /// Quantity of ingredient present
            var strength: Ratio?
        }
        /// Information that only applies to packages (not products).
        /// 
        struct Batch: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// Identifier assigned to batch
            var lotNumber: String?

            /// When batch will expire
            var expirationDate: Date?
        }

        let resourceType = "Medication"

        /// Logical id of this artifact
        var id: String?

        /// A set of rules under which this content was created
        var implicitRules: String?

        /// Language of the resource content
        var language: String?

        /// Text summary of the resource, for human interpretation
        var text: Narrative?

        /// Contained, inline Resources
        var contained: [WrappedResource]?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored
        var modifierExtension: [Extension]?

        /// Business identifier for this medication
        var identifier: [Identifier]?

        /// Codes that identify this medication
        var code: CodeableConcept?

        /// active | inactive | entered-in-error
        var status: MedicationStatus?

        /// Manufacturer of the item
        var manufacturer: Reference?

        /// powder | tablets | capsule +
        var form: CodeableConcept?

        /// Amount of drug in package
        var amount: Ratio?

        /// Active or inactive ingredient
        var ingredient: [Ingredient]?

        /// Details about packaged medications
        var batch: Batch?
    }
}
