//
// FhirApi+Patient.swift
//
// Demographics and other administrative information about an individual or animal receiving 
// care or other health-related services.
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

extension FhirApi {

    /// Demographics and other administrative information about an individual or animal receiving 
    /// care or other health-related services.
    /// 
    struct Patient: Codable, Resource {
        /// A contact party (e.g. guardian, partner, friend) for the patient.
        /// 
        struct Contact: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// The kind of relationship
            var relationship: [CodeableConcept]?

            /// A name associated with the contact person
            var name: HumanName?

            /// A contact detail for the person
            var telecom: [ContactPoint]?

            /// Address for the contact person
            var address: Address?

            /// male | female | other | unknown
            var gender: AdministrativeGender?

            /// Organization that is associated with the contact
            var organization: Reference?

            /// The period during which this contact person or organization is valid to be 
            /// contacted relating to this patient
            var period: Period?
        }
        /// A language which may be used to communicate with the patient about his or her health.
        /// 
        struct Communication: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// The language which can be used to communicate with the patient about his or her 
            /// health
            var language: CodeableConcept

            /// Language preference indicator
            var preferred: Bool?
        }
        /// Link to another patient resource that concerns the same actual patient.
        /// 
        struct Link: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// The other patient or related person resource that the link refers to
            var other: Reference

            /// replaced-by | replaces | refer | seealso
            var type: LinkType
        }

        let resourceType = "Patient"

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

        /// An identifier for this patient
        var identifier: [Identifier]?

        /// Whether this patient's record is in active use
        var active: Bool?

        /// A name associated with the patient
        var name: [HumanName]?

        /// A contact detail for the individual
        var telecom: [ContactPoint]?

        /// male | female | other | unknown
        var gender: AdministrativeGender?

        /// The date of birth for the individual
        var birthDate: Date?

        /// Indicates if the individual is deceased or not
        var deceasedBoolean: Bool?
        var deceasedDateTime: Date?

        /// An address for the individual
        var address: [Address]?

        /// Marital (civil) status of a patient
        var maritalStatus: CodeableConcept?

        /// Whether patient is part of a multiple birth
        var multipleBirthBoolean: Bool?
        var multipleBirthInteger: Int?

        /// Image of the patient
        var photo: [Attachment]?

        /// A contact party (e.g. guardian, partner, friend) for the patient
        var contact: [Contact]?

        /// A language which may be used to communicate with the patient about his or her 
        /// health
        var communication: [Communication]?

        /// Patient's nominated primary care provider
        var generalPractitioner: [Reference]?

        /// Organization that is the custodian of the patient record
        var managingOrganization: Reference?

        /// Link to another patient resource that concerns the same actual person
        var link: [Link]?
    }
}
