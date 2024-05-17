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

    /// Captures constraints on each element within the resource, profile, or extension.
    /// 
    struct ElementDefinition: Codable {
        /// Indicates that the element is sliced into a set of alternative definitions (i.e. in a 
        /// structure definition, there are multiple different constraints on a single element in the 
        /// base resource). Slicing can be used in any resource that has cardinality ..* on the base 
        /// resource, or any resource with a choice of types. The set of slices is any elements that 
        /// come after this in the element sequence that have the same path, until a shorter path 
        /// occurs (the shorter path terminates the set).
        /// 
        struct Slicing: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Element values that are used to distinguish the slices
            var discriminator: [Discriminator]?

            /// Text description of how slicing works (or not)
            var description: String?

            /// If elements must be in same order as slices
            var ordered: Bool?

            /// closed | open | openAtEnd
            var rules: ResourceSlicingRules
        }
        /// Information about the base definition of the element, provided to make it unnecessary for 
        /// tools to trace the deviation of the element through the derived and related profiles. When 
        /// the element definition is not the original definition of an element - i.g. either in a 
        /// constraint on another type, or for elements from a super type in a snap shot - then the 
        /// information in provided in the element definition may be different to the base definition. 
        /// On the original definition of the element, it will be same.
        /// 
        struct Base: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Path that identifies the base element
            var path: String

            /// Min cardinality of the base element
            var min: Int

            /// Max cardinality of the base element
            var max: String
        }
        /// The data type or resource that the value of this element is permitted to be.
        /// 
        struct TypeRef: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Data type or Resource (reference to definition)
            var code: String

            /// Profiles (StructureDefinition or IG) - one must apply
            var profile: [String]?

            /// Profile (StructureDefinition or IG) on the Reference/canonical target - one must 
            /// apply
            var targetProfile: [String]?

            /// contained | referenced | bundled - how aggregated
            var aggregation: [ResourceAggregationMode]?

            /// either | independent | specific
            var versioning: ReferenceVersionRules?
        }
        /// A sample value for this element demonstrating the type of information that would typically 
        /// be found in the element.
        /// 
        struct Example: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Describes the purpose of this example
            var label: String

            /// Value of Example (one of allowed types)
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
        /// Formal constraints such as co-occurrence and other constraints that can be computationally 
        /// evaluated within the context of the instance.
        /// 
        struct Constraint: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Target of 'condition' reference above
            var key: String

            /// Why this constraint is necessary or appropriate
            var requirements: String?

            /// error | warning
            var severity: ConstraintSeverity

            /// Human description of constraint
            var human: String

            /// FHIRPath expression of constraint
            var expression: String?

            /// XPath expression of constraint
            var xpath: String?

            /// Reference to original source of constraint
            var source: String?
        }
        /// Binds to a value set if this element is coded (code, Coding, CodeableConcept, Quantity), 
        /// or the data types (string, uri).
        /// 
        struct ElementDefinitionBinding: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// required | extensible | preferred | example
            var strength: BindingStrength

            /// Human explanation of the value set
            var description: String?

            /// Source of value set
            var valueSet: String?
        }
        /// Identifies a concept from an external specification that roughly corresponds to this 
        /// element.
        /// 
        struct Mapping: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Reference to mapping declaration
            var identity: String

            /// Computable language of mapping
            var language: String?

            /// Details of the mapping
            var map: String

            /// Comments about the mapping or its use
            var comment: String?
        }
        /// Designates which child elements are used to discriminate between the slices when 
        /// processing an instance. If one or more discriminators are provided, the value of the child 
        /// elements in the instance data SHALL completely distinguish which slice the element in the 
        /// resource matches based on the allowed values for those elements in each of the slices.
        /// 
        struct Discriminator: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// value | exists | pattern | type | profile
            var type: DiscriminatorType

            /// Path to element value
            var path: String
        }

        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// Path of the element in the hierarchy of elements
        var path: String

        /// xmlAttr | xmlText | typeAttr | cdaText | xhtml
        var representation: [PropertyRepresentation]?

        /// Name for this particular element (in a set of slices)
        var sliceName: String?

        /// If this slice definition constrains an inherited slice definition (or not)
        var sliceIsConstraining: Bool?

        /// Name for element to display with or prompt for element
        var label: String?

        /// Corresponding codes in terminologies
        var code: [Coding]?

        /// This element is sliced - slices follow
        var slicing: Slicing?

        /// Concise definition for space-constrained presentation
        var short: String?

        /// Full formal definition as narrative text
        var definition: String?

        /// Comments about the use of this element
        var comment: String?

        /// Why this resource has been created
        var requirements: String?

        /// Other names
        var alias: [String]?

        /// Minimum Cardinality
        var min: Int?

        /// Maximum Cardinality (a number or *)
        var max: String?

        /// Base definition information for tools
        var base: Base?

        /// Reference to definition of content for the element
        var contentReference: String?

        /// Data type and Profile for this element
        var type: [TypeRef]?

        /// Specified value if missing from instance
        var defaultValueBase64Binary: Data?
        var defaultValueBoolean: Bool?
        var defaultValueCanonical: String?
        var defaultValueCode: String?
        var defaultValueDate: Date?
        var defaultValueDateTime: Date?
        var defaultValueDecimal: Decimal?
        var defaultValueId: String?
        var defaultValueInstant: Date?
        var defaultValueInteger: Int?
        var defaultValueMarkdown: String?
        var defaultValueOid: String?
        var defaultValuePositiveInt: Int?
        var defaultValueString: String?
        var defaultValueTime: String?
        var defaultValueUnsignedInt: Int?
        var defaultValueUri: String?
        var defaultValueUrl: URL?
        var defaultValueUuid: UUID?
        var defaultValueAddress: Address?
        var defaultValueAge: Age?
        var defaultValueAnnotation: Annotation?
        var defaultValueAttachment: Attachment?
        var defaultValueCodeableConcept: CodeableConcept?
        var defaultValueCodeableReference: CodeableReference?
        var defaultValueCoding: Coding?
        var defaultValueContactPoint: ContactPoint?
        var defaultValueCount: Count?
        var defaultValueDistance: Distance?
        var defaultValueDuration: Duration?
        var defaultValueHumanName: HumanName?
        var defaultValueIdentifier: Identifier?
        var defaultValueMoney: Money?
        var defaultValuePeriod: Period?
        var defaultValueQuantity: Quantity?
        var defaultValueRange: Range?
        var defaultValueRatio: Ratio?
        var defaultValueRatioRange: RatioRange?
        var defaultValueReference: Reference?
        var defaultValueSampledData: SampledData?
        var defaultValueSignature: Signature?
        var defaultValueTiming: Timing?
        var defaultValueContactDetail: ContactDetail?
        var defaultValueContributor: Contributor?
        var defaultValueDataRequirement: DataRequirement?
        var defaultValueExpression: Expression?
        var defaultValueParameterDefinition: ParameterDefinition?
        var defaultValueRelatedArtifact: RelatedArtifact?
        var defaultValueTriggerDefinition: TriggerDefinition?
        var defaultValueUsageContext: UsageContext?
        var defaultValueDosage: Dosage?

        /// Implicit meaning when this element is missing
        var meaningWhenMissing: String?

        /// What the order of the elements means
        var orderMeaning: String?

        /// Value must be exactly this
        var fixedBase64Binary: Data?
        var fixedBoolean: Bool?
        var fixedCanonical: String?
        var fixedCode: String?
        var fixedDate: Date?
        var fixedDateTime: Date?
        var fixedDecimal: Decimal?
        var fixedId: String?
        var fixedInstant: Date?
        var fixedInteger: Int?
        var fixedMarkdown: String?
        var fixedOid: String?
        var fixedPositiveInt: Int?
        var fixedString: String?
        var fixedTime: String?
        var fixedUnsignedInt: Int?
        var fixedUri: String?
        var fixedUrl: URL?
        var fixedUuid: UUID?
        var fixedAddress: Address?
        var fixedAge: Age?
        var fixedAnnotation: Annotation?
        var fixedAttachment: Attachment?
        var fixedCodeableConcept: CodeableConcept?
        var fixedCodeableReference: CodeableReference?
        var fixedCoding: Coding?
        var fixedContactPoint: ContactPoint?
        var fixedCount: Count?
        var fixedDistance: Distance?
        var fixedDuration: Duration?
        var fixedHumanName: HumanName?
        var fixedIdentifier: Identifier?
        var fixedMoney: Money?
        var fixedPeriod: Period?
        var fixedQuantity: Quantity?
        var fixedRange: Range?
        var fixedRatio: Ratio?
        var fixedRatioRange: RatioRange?
        var fixedReference: Reference?
        var fixedSampledData: SampledData?
        var fixedSignature: Signature?
        var fixedTiming: Timing?
        var fixedContactDetail: ContactDetail?
        var fixedContributor: Contributor?
        var fixedDataRequirement: DataRequirement?
        var fixedExpression: Expression?
        var fixedParameterDefinition: ParameterDefinition?
        var fixedRelatedArtifact: RelatedArtifact?
        var fixedTriggerDefinition: TriggerDefinition?
        var fixedUsageContext: UsageContext?
        var fixedDosage: Dosage?

        /// Value must have at least these property values
        var patternBase64Binary: Data?
        var patternBoolean: Bool?
        var patternCanonical: String?
        var patternCode: String?
        var patternDate: Date?
        var patternDateTime: Date?
        var patternDecimal: Decimal?
        var patternId: String?
        var patternInstant: Date?
        var patternInteger: Int?
        var patternMarkdown: String?
        var patternOid: String?
        var patternPositiveInt: Int?
        var patternString: String?
        var patternTime: String?
        var patternUnsignedInt: Int?
        var patternUri: String?
        var patternUrl: URL?
        var patternUuid: UUID?
        var patternAddress: Address?
        var patternAge: Age?
        var patternAnnotation: Annotation?
        var patternAttachment: Attachment?
        var patternCodeableConcept: CodeableConcept?
        var patternCodeableReference: CodeableReference?
        var patternCoding: Coding?
        var patternContactPoint: ContactPoint?
        var patternCount: Count?
        var patternDistance: Distance?
        var patternDuration: Duration?
        var patternHumanName: HumanName?
        var patternIdentifier: Identifier?
        var patternMoney: Money?
        var patternPeriod: Period?
        var patternQuantity: Quantity?
        var patternRange: Range?
        var patternRatio: Ratio?
        var patternRatioRange: RatioRange?
        var patternReference: Reference?
        var patternSampledData: SampledData?
        var patternSignature: Signature?
        var patternTiming: Timing?
        var patternContactDetail: ContactDetail?
        var patternContributor: Contributor?
        var patternDataRequirement: DataRequirement?
        var patternExpression: Expression?
        var patternParameterDefinition: ParameterDefinition?
        var patternRelatedArtifact: RelatedArtifact?
        var patternTriggerDefinition: TriggerDefinition?
        var patternUsageContext: UsageContext?
        var patternDosage: Dosage?

        /// Example value (as defined for type)
        var example: [Example]?

        /// Minimum Allowed Value (for some types)
        var minValueDate: Date?
        var minValueDateTime: Date?
        var minValueInstant: Date?
        var minValueTime: String?
        var minValueDecimal: Decimal?
        var minValueInteger: Int?
        var minValuePositiveInt: Int?
        var minValueUnsignedInt: Int?
        var minValueQuantity: Quantity?

        /// Maximum Allowed Value (for some types)
        var maxValueDate: Date?
        var maxValueDateTime: Date?
        var maxValueInstant: Date?
        var maxValueTime: String?
        var maxValueDecimal: Decimal?
        var maxValueInteger: Int?
        var maxValuePositiveInt: Int?
        var maxValueUnsignedInt: Int?
        var maxValueQuantity: Quantity?

        /// Max length for strings
        var maxLength: Int?

        /// Reference to invariant about presence
        var condition: [String]?

        /// Condition that must evaluate to true
        var constraint: [Constraint]?

        /// If the element must be supported
        var mustSupport: Bool?

        /// If this modifies the meaning of other elements
        var isModifier: Bool?

        /// Reason that this element is marked as a modifier
        var isModifierReason: String?

        /// Include when _summary = true?
        var isSummary: Bool?

        /// ValueSet details if this is coded
        var binding: ElementDefinitionBinding?

        /// Map element to another set of definitions
        var mapping: [Mapping]?
    }
}
