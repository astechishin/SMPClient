//
// FhirApi+MedicationRequest.swift
//
// An order or request for both supply of the medication and the instructions for 
// administration of the medication to a patient. The resource is called "MedicationRequest" 
// rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across 
// inpatient and outpatient settings, including care plans, etc., and to harmonize with 
// workflow patterns.
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

extension FhirApi {

    /// An order or request for both supply of the medication and the instructions for 
    /// administration of the medication to a patient. The resource is called "MedicationRequest" 
    /// rather than "MedicationPrescription" or "MedicationOrder" to generalize the use across 
    /// inpatient and outpatient settings, including care plans, etc., and to harmonize with 
    /// workflow patterns.
    /// 
    struct MedicationRequest: Codable, Resource {
        static let resourceName = "MedicationRequest"

        /// Indicates the specific details for the dispense or medication supply part of a medication 
        /// request (also known as a Medication Prescription or Medication Order).  Note that this
        /// information is not always sent with the order.  There may be in some settings (e.g. 
        /// hospitals) institutional or system support for completing the dispense details in the 
        /// pharmacy department.
        /// 
        struct DispenseRequest: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// First fill details
            var initialFill: InitialFill?

            /// Minimum period of time between dispenses
            var dispenseInterval: Duration?

            /// Time period supply is authorized for
            var validityPeriod: Period?

            /// Number of refills authorized
            var numberOfRepeatsAllowed: Int?

            /// Amount of medication to supply per dispense
            var quantity: Quantity?

            /// Number of days supply per dispense
            var expectedSupplyDuration: Duration?

            /// Intended dispenser
            var performer: Reference?
        }
        /// Indicates whether or not substitution can or should be part of the dispense. In some cases,
        ///  substitution must happen, in other cases substitution must not happen. This block 
        /// explains the prescriber's intent. If nothing is specified substitution may be done.
        /// 
        struct Substitution: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// Whether substitution is allowed or not
            var allowedBoolean: Bool?
            var allowedCodeableConcept: CodeableConcept?

            /// Why should (not) substitution be made
            var reason: CodeableConcept?
        }
        /// Indicates the quantity or duration for the first dispense of the medication.
        /// 
        struct InitialFill: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// First fill quantity
            var quantity: Quantity?

            /// First fill duration
            var duration: Duration?
        }

        let resourceType = "MedicationRequest"

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

        /// External ids for this request
        var identifier: [Identifier]?

        /// active | on-hold | cancelled | completed | entered-in-error | stopped | draft | 
        /// unknown
        var status: MedicationrequestStatus

        /// Reason for current status
        var statusReason: CodeableConcept?

        /// proposal | plan | order | original-order | reflex-order | filler-order | 
        /// instance-order | option
        var intent: MedicationrequestIntent

        /// Type of medication usage
        var category: [CodeableConcept]?

        /// routine | urgent | asap | stat
        var priority: RequestPriority?

        /// True if request is prohibiting action
        var doNotPerform: Bool?

        /// Reported rather than primary record
        var reportedBoolean: Bool?
        var reportedReference: Reference?

        /// Medication to be taken
        var medicationCodeableConcept: CodeableConcept?
        var medicationReference: Reference?

        /// Who or group medication request is for
        var subject: Reference

        /// Encounter created as part of encounter/admission/stay
        var encounter: Reference?

        /// Information to support ordering of the medication
        var supportingInformation: [Reference]?

        /// When request was initially authored
        var authoredOn: Date?

        /// Who/What requested the Request
        var requester: Reference?

        /// Intended performer of administration
        var performer: Reference?

        /// Desired kind of performer of the medication administration
        var performerType: CodeableConcept?

        /// Person who entered the request
        var recorder: Reference?

        /// Reason or indication for ordering or not ordering the medication
        var reasonCode: [CodeableConcept]?

        /// Condition or observation that supports why the prescription is being written
        var reasonReference: [Reference]?

        /// Instantiates FHIR protocol or definition
        var instantiatesCanonical: [String]?

        /// Instantiates external protocol or definition
        var instantiatesUri: [String]?

        /// What request fulfills
        var basedOn: [Reference]?

        /// Composite request this is part of
        var groupIdentifier: Identifier?

        /// Overall pattern of medication administration
        var courseOfTherapyType: CodeableConcept?

        /// Associated insurance coverage
        var insurance: [Reference]?

        /// Information about the prescription
        var note: [Annotation]?

        /// How the medication should be taken
        var dosageInstruction: [Dosage]?

        /// Medication supply authorization
        var dispenseRequest: DispenseRequest?

        /// Any restrictions on medication substitution
        var substitution: Substitution?

        /// An order/prescription that is being replaced
        var priorPrescription: Reference?

        /// Clinical Issue with action
        var detectedIssue: [Reference]?

        /// A list of events of interest in the lifecycle
        var eventHistory: [Reference]?
    }
}
