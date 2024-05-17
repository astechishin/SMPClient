//
// FhirApi+MedicationStatement.swift
//
// A record of a medication that is being consumed by a patient.   A MedicationStatement may 
// indicate that the patient may be taking the medication now or has taken the medication in 
// the past or will be taking the medication in the future.  The source of this information 
// can be the patient, significant other (such as a family member or spouse), or a clinician. 
//  A common scenario where this information is captured is during the history taking process 
// during a patient visit or stay.   The medication information may come from sources such as 
// the patient's memory, from a prescription bottle,  or from a list of medications the 
// patient, clinician or other party maintains. 

// The primary difference between a medication
// statement and a medication administration is that the medication administration has
// complete administration information and is based on actual administration information from 
// the person who administered the medication.  A medication statement is often, if not 
// always, less specific.  There is no required date/time when the medication was 
// administered, in fact we only know that a source has reported the patient is taking this 
// medication, where details such as time, quantity, or rate or even medication product may 
// be incomplete or missing or less precise.  As stated earlier, the medication statement 
// information may come from the patient's memory, from a prescription bottle or from a list 
// of medications the patient, clinician or other party maintains.  Medication administration 
// is more formal and is not missing detailed information.
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

extension FhirApi {

    /// A record of a medication that is being consumed by a patient.   A MedicationStatement may 
    /// indicate that the patient may be taking the medication now or has taken the medication in 
    /// the past or will be taking the medication in the future.  The source of this information 
    /// can be the patient, significant other (such as a family member or spouse), or a clinician. 
    ///  A common scenario where this information is captured is during the history taking process 
    /// during a patient visit or stay.   The medication information may come from sources such as 
    /// the patient's memory, from a prescription bottle,  or from a list of medications the 
    /// patient, clinician or other party maintains. 

    /// The primary difference between a medication 
    /// statement and a medication administration is that the medication administration has 
    /// complete administration information and is based on actual administration information from 
    /// the person who administered the medication.  A medication statement is often, if not 
    /// always, less specific.  There is no required date/time when the medication was 
    /// administered, in fact we only know that a source has reported the patient is taking this 
    /// medication, where details such as time, quantity, or rate or even medication product may 
    /// be incomplete or missing or less precise.  As stated earlier, the medication statement 
    /// information may come from the patient's memory, from a prescription bottle or from a list 
    /// of medications the patient, clinician or other party maintains.  Medication administration 
    /// is more formal and is not missing detailed information.
    /// 
    struct MedicationStatement: Codable, Resource {
        let resourceType = "MedicationStatement"

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

        /// External identifier
        var identifier: [Identifier]?

        /// Fulfils plan, proposal or order
        var basedOn: [Reference]?

        /// Part of referenced event
        var partOf: [Reference]?

        /// active | completed | entered-in-error | intended | stopped | on-hold | unknown | 
        /// not-taken
        var status: MedicationStatementStatus

        /// Reason for current status
        var statusReason: [CodeableConcept]?

        /// Type of medication usage
        var category: CodeableConcept?

        /// What medication was taken
        var medicationCodeableConcept: CodeableConcept?
        var medicationReference: Reference?

        /// Who is/was taking  the medication
        var subject: Reference

        /// Encounter / Episode associated with MedicationStatement
        var context: Reference?

        /// The date/time or interval when the medication is/was/will be taken
        var effectiveDateTime: Date?
        var effectivePeriod: Period?

        /// When the statement was asserted?
        var dateAsserted: Date?

        /// Person or organization that provided the information about the taking of this 
        /// medication
        var informationSource: Reference?

        /// Additional supporting information
        var derivedFrom: [Reference]?

        /// Reason for why the medication is being/was taken
        var reasonCode: [CodeableConcept]?

        /// Condition or observation that supports why the medication is being/was taken
        var reasonReference: [Reference]?

        /// Further information about the statement
        var note: [Annotation]?

        /// Details of how medication is/was taken or should be taken
        var dosage: [Dosage]?
    }
}
