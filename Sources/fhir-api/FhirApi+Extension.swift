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

    /// Optional Extension Element - found in all resources.
    /// 
    struct Extension: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// identifies the meaning of the extension
        var url: String

        /// Value of extension
        var valueBase64Binary: Data?
        var valueBoolean: Bool?
        var valueCanonical: String?
        var valueCode: String?
        var valueDate: Date?
        var valueDateTime: Date?
        var valueDecimal: Decimal?
        var valueId: String?
        var valueInstant: Date?
        var valueInteger: Int?
        var valueMarkdown: String?
        var valueOid: String?
        var valuePositiveInt: Int?
        var valueString: String?
        var valueTime: String?
        var valueUnsignedInt: Int?
        var valueUri: String?
        var valueUrl: URL?
        var valueUuid: UUID?
        var valueAddress: Address?
        var valueAge: Age?
        var valueAnnotation: Annotation?
        var valueAttachment: Attachment?
        var valueCodeableConcept: CodeableConcept?
        var valueCodeableReference: CodeableReference?
        var valueCoding: Coding?
        var valueContactPoint: ContactPoint?
        var valueCount: Count?
        var valueDistance: Distance?
        var valueDuration: Duration?
        var valueHumanName: HumanName?
        var valueIdentifier: Identifier?
        var valueMoney: Money?
        var valuePeriod: Period?
        var valueQuantity: Quantity?
        var valueRange: Range?
        var valueRatio: Ratio?
        var valueRatioRange: RatioRange?
        var valueReference: Reference?
        var valueSampledData: SampledData?
        var valueSignature: Signature?
        var valueTiming: Timing?
        var valueContactDetail: ContactDetail?
        var valueContributor: Contributor?
        var valueDataRequirement: DataRequirement?
        var valueExpression: Expression?
        var valueParameterDefinition: ParameterDefinition?
        var valueRelatedArtifact: RelatedArtifact?
        var valueTriggerDefinition: TriggerDefinition?
        var valueUsageContext: UsageContext?
        var valueDosage: Dosage?
    }
}
