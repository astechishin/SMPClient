//
// FhirDatatype.swift
//
// - Copyright (c) 2024 CANA Software & Services
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

/// The list of datatypes in FHIR 4.3.0
enum FhirDatatype {
    case reference(resources: [FhirResource])
    case internalClass(classIdentifier: String)
    case address
    case age
    case annotation
    case attachment
    case backboneElement
    case codeableConcept
    case codeableReference
    case coding
    case contactDetail
    case contactPoint
    case contributor
    case count
    case dataRequirement
    case distance
    case dosage
    case duration
    case element
    case elementDefinition
    case expression
    case `extension`
    case humanName
    case identifier
    case marketingStatus
    case meta
    case money
    case moneyQuantity
    case narrative
    case parameterDefinition
    case period
    case population
    case prodCharacteristic
    case productShelfLife
    case quantity
    case range
    case ratio
    case ratioRange
    case relatedArtifact
    case sampledData
    case signature
    case simpleQuantity
    case timing
    case triggerDefinition
    case usageContext
    case base64Binary
    case boolean
    case canonical
    case code
    case date
    case dateTime
    case decimal
    case id
    case instant
    case integer
    case markdown
    case oid
    case positiveInt
    case string
    case time
    case unsignedInt
    case uri
    case url
    case uuid
    case xhtml
}

extension FhirDatatype: Codable {
    private enum CodingKeys: String, CodingKey {
        case base, referenceResources, internalClassIdentifier
    }

    private enum Base: String, Codable {
        case internalClass, address="Address", age="Age", annotation="Annotation", 
             attachment="Attachment", backboneElement="BackboneElement", 
             codeableConcept="CodeableConcept", codeableReference="CodeableReference", 
             coding="Coding", contactDetail="ContactDetail", contactPoint="ContactPoint", 
             contributor="Contributor", count="Count", dataRequirement="DataRequirement", 
             distance="Distance", dosage="Dosage", duration="Duration", element="Element", 
             elementDefinition="ElementDefinition", expression="Expression", 
             `extension`="Extension", humanName="HumanName", identifier="Identifier", 
             marketingStatus="MarketingStatus", meta="Meta", money="Money", 
             moneyQuantity="MoneyQuantity", narrative="Narrative", 
             parameterDefinition="ParameterDefinition", period="Period", 
             population="Population", prodCharacteristic="ProdCharacteristic", 
             productShelfLife="ProductShelfLife", quantity="Quantity", range="Range", 
             ratio="Ratio", ratioRange="RatioRange", reference="Reference", 
             relatedArtifact="RelatedArtifact", sampledData="SampledData", 
             signature="Signature", simpleQuantity="SimpleQuantity", timing="Timing", 
             triggerDefinition="TriggerDefinition", usageContext="UsageContext", base64Binary, 
             boolean, canonical, code, date, dateTime, decimal, id, instant, integer, markdown, oid, 
             positiveInt, string, time, unsignedInt, uri, url, uuid, xhtml
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let base = try container.decode(Base.self, forKey: .base)

        switch base {
        case .internalClass:
            let classIdentifier = try container.decode(String.self, forKey: .internalClassIdentifier)
            self = .internalClass(classIdentifier: classIdentifier)
        case .reference:
            let refTypes = try container.decode([FhirResource].self, forKey: .referenceResources)
            self = .reference(resources: refTypes)
        case .address:
            self = .address
        case .age:
            self = .age
        case .annotation:
            self = .annotation
        case .attachment:
            self = .attachment
        case .backboneElement:
            self = .backboneElement
        case .codeableConcept:
            self = .codeableConcept
        case .codeableReference:
            self = .codeableReference
        case .coding:
            self = .coding
        case .contactDetail:
            self = .contactDetail
        case .contactPoint:
            self = .contactPoint
        case .contributor:
            self = .contributor
        case .count:
            self = .count
        case .dataRequirement:
            self = .dataRequirement
        case .distance:
            self = .distance
        case .dosage:
            self = .dosage
        case .duration:
            self = .duration
        case .element:
            self = .element
        case .elementDefinition:
            self = .elementDefinition
        case .expression:
            self = .expression
        case .extension:
            self = .extension
        case .humanName:
            self = .humanName
        case .identifier:
            self = .identifier
        case .marketingStatus:
            self = .marketingStatus
        case .meta:
            self = .meta
        case .money:
            self = .money
        case .moneyQuantity:
            self = .moneyQuantity
        case .narrative:
            self = .narrative
        case .parameterDefinition:
            self = .parameterDefinition
        case .period:
            self = .period
        case .population:
            self = .population
        case .prodCharacteristic:
            self = .prodCharacteristic
        case .productShelfLife:
            self = .productShelfLife
        case .quantity:
            self = .quantity
        case .range:
            self = .range
        case .ratio:
            self = .ratio
        case .ratioRange:
            self = .ratioRange
        case .relatedArtifact:
            self = .relatedArtifact
        case .sampledData:
            self = .sampledData
        case .signature:
            self = .signature
        case .simpleQuantity:
            self = .simpleQuantity
        case .timing:
            self = .timing
        case .triggerDefinition:
            self = .triggerDefinition
        case .usageContext:
            self = .usageContext
        case .base64Binary:
            self = .base64Binary
        case .boolean:
            self = .boolean
        case .canonical:
            self = .canonical
        case .code:
            self = .code
        case .date:
            self = .date
        case .dateTime:
            self = .dateTime
        case .decimal:
            self = .decimal
        case .id:
            self = .id
        case .instant:
            self = .instant
        case .integer:
            self = .integer
        case .markdown:
            self = .markdown
        case .oid:
            self = .oid
        case .positiveInt:
            self = .positiveInt
        case .string:
            self = .string
        case .time:
            self = .time
        case .unsignedInt:
            self = .unsignedInt
        case .uri:
            self = .uri
        case .url:
            self = .url
        case .uuid:
            self = .uuid
        case .xhtml:
            self = .xhtml
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .internalClass(let classIdentifier):
            try container.encode(Base.internalClass, forKey: .base)
            try container.encode(classIdentifier, forKey: .internalClassIdentifier)
        case .reference(let referenceResources):
            try container.encode(Base.reference, forKey: .base)
            try container.encode(referenceResources, forKey: .referenceResources)
        case .address:
            try container.encode(Base.address, forKey: .base)
        case .age:
            try container.encode(Base.age, forKey: .base)
        case .annotation:
            try container.encode(Base.annotation, forKey: .base)
        case .attachment:
            try container.encode(Base.attachment, forKey: .base)
        case .backboneElement:
            try container.encode(Base.backboneElement, forKey: .base)
        case .codeableConcept:
            try container.encode(Base.codeableConcept, forKey: .base)
        case .codeableReference:
            try container.encode(Base.codeableReference, forKey: .base)
        case .coding:
            try container.encode(Base.coding, forKey: .base)
        case .contactDetail:
            try container.encode(Base.contactDetail, forKey: .base)
        case .contactPoint:
            try container.encode(Base.contactPoint, forKey: .base)
        case .contributor:
            try container.encode(Base.contributor, forKey: .base)
        case .count:
            try container.encode(Base.count, forKey: .base)
        case .dataRequirement:
            try container.encode(Base.dataRequirement, forKey: .base)
        case .distance:
            try container.encode(Base.distance, forKey: .base)
        case .dosage:
            try container.encode(Base.dosage, forKey: .base)
        case .duration:
            try container.encode(Base.duration, forKey: .base)
        case .element:
            try container.encode(Base.element, forKey: .base)
        case .elementDefinition:
            try container.encode(Base.elementDefinition, forKey: .base)
        case .expression:
            try container.encode(Base.expression, forKey: .base)
        case .extension:
            try container.encode(Base.extension, forKey: .base)
        case .humanName:
            try container.encode(Base.humanName, forKey: .base)
        case .identifier:
            try container.encode(Base.identifier, forKey: .base)
        case .marketingStatus:
            try container.encode(Base.marketingStatus, forKey: .base)
        case .meta:
            try container.encode(Base.meta, forKey: .base)
        case .money:
            try container.encode(Base.money, forKey: .base)
        case .moneyQuantity:
            try container.encode(Base.moneyQuantity, forKey: .base)
        case .narrative:
            try container.encode(Base.narrative, forKey: .base)
        case .parameterDefinition:
            try container.encode(Base.parameterDefinition, forKey: .base)
        case .period:
            try container.encode(Base.period, forKey: .base)
        case .population:
            try container.encode(Base.population, forKey: .base)
        case .prodCharacteristic:
            try container.encode(Base.prodCharacteristic, forKey: .base)
        case .productShelfLife:
            try container.encode(Base.productShelfLife, forKey: .base)
        case .quantity:
            try container.encode(Base.quantity, forKey: .base)
        case .range:
            try container.encode(Base.range, forKey: .base)
        case .ratio:
            try container.encode(Base.ratio, forKey: .base)
        case .ratioRange:
            try container.encode(Base.ratioRange, forKey: .base)
        case .relatedArtifact:
            try container.encode(Base.relatedArtifact, forKey: .base)
        case .sampledData:
            try container.encode(Base.sampledData, forKey: .base)
        case .signature:
            try container.encode(Base.signature, forKey: .base)
        case .simpleQuantity:
            try container.encode(Base.simpleQuantity, forKey: .base)
        case .timing:
            try container.encode(Base.timing, forKey: .base)
        case .triggerDefinition:
            try container.encode(Base.triggerDefinition, forKey: .base)
        case .usageContext:
            try container.encode(Base.usageContext, forKey: .base)
        case .base64Binary:
            try container.encode(Base.base64Binary, forKey: .base)
        case .boolean:
            try container.encode(Base.boolean, forKey: .base)
        case .canonical:
            try container.encode(Base.canonical, forKey: .base)
        case .code:
            try container.encode(Base.code, forKey: .base)
        case .date:
            try container.encode(Base.date, forKey: .base)
        case .dateTime:
            try container.encode(Base.dateTime, forKey: .base)
        case .decimal:
            try container.encode(Base.decimal, forKey: .base)
        case .id:
            try container.encode(Base.id, forKey: .base)
        case .instant:
            try container.encode(Base.instant, forKey: .base)
        case .integer:
            try container.encode(Base.integer, forKey: .base)
        case .markdown:
            try container.encode(Base.markdown, forKey: .base)
        case .oid:
            try container.encode(Base.oid, forKey: .base)
        case .positiveInt:
            try container.encode(Base.positiveInt, forKey: .base)
        case .string:
            try container.encode(Base.string, forKey: .base)
        case .time:
            try container.encode(Base.time, forKey: .base)
        case .unsignedInt:
            try container.encode(Base.unsignedInt, forKey: .base)
        case .uri:
            try container.encode(Base.uri, forKey: .base)
        case .url:
            try container.encode(Base.url, forKey: .base)
        case .uuid:
            try container.encode(Base.uuid, forKey: .base)
        case .xhtml:
            try container.encode(Base.xhtml, forKey: .base)
        }
    }
}
