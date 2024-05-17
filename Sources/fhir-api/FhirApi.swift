//
// FhirApi.swift
//
// - Copyright (c) 2024 CANA Software & Services
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

/// The core complex datatypes in FHIR 4.3.0
class FhirApi {
    static public let Version = "4.3.0"

    /// The type of an address (physical / postal).
    enum AddressType: String, Codable {
        /// Mailing addresses - PO Boxes and care-of addresses.
        case postal  
        /// A physical address that can be visited.
        case physical
        /// An address that is both physical and postal.
        case both    
    }

    /// The use of an address.
    enum AddressUse: String, Codable {
        /// A communication address at a home.
        case home   
        /// An office address. First choice for business related contacts during business 
        /// hours.
        case work   
        /// A temporary address. The period can provide more detailed information.
        case temp   
        /// This address is no longer in use (or was never correct but retained for records).
        case old    
        /// An address to be used to send bills, invoices, receipts etc.
        case billing
    }

    /// Indication of the degree of conformance expectations associated with a binding.
    enum BindingStrength: String, Codable {
        /// To be conformant, the concept in this element SHALL be from the specified value 
        /// set.
        case required  
        /// To be conformant, the concept in this element SHALL be from the specified value 
        /// set if any of the codes within the value set can apply to the concept being 
        /// communicated.  If the value set does not cover the concept (based on human 
        /// review), alternate codings (or, data type allowing, text) may be included 
        /// instead.
        case extensible
        /// Instances are encouraged to draw from the specified codes for interoperability 
        /// purposes but are not required to do so to be considered conformant.
        case preferred 
        /// Instances are not expected or even encouraged to draw from the specified value 
        /// set.  The value set merely provides examples of the types of concepts intended 
        /// to be included.
        case example   
    }

    /// SHALL applications comply with this constraint?
    enum ConstraintSeverity: String, Codable {
        /// If the constraint is violated, the resource is not conformant.
        case error  
        /// If the constraint is violated, the resource is conformant, but it is not 
        /// necessarily following best practice.
        case warning
    }

    /// Telecommunications form for contact point.
    enum ContactPointSystem: String, Codable {
        /// The value is a telephone number used for voice calls. Use of full international 
        /// numbers starting with + is recommended to enable automatic dialing support but 
        /// not required.
        case phone
        /// The value is a fax machine. Use of full international numbers starting with + is 
        /// recommended to enable automatic dialing support but not required.
        case fax  
        /// The value is an email address.
        case email
        /// The value is a pager number. These may be local pager numbers that are only 
        /// usable on a particular pager system.
        case pager
        /// A contact that is not a phone, fax, pager or email address and is expressed as a 
        /// URL.  This is intended for various institutional or personal contacts including 
        /// web sites, blogs, Skype, Twitter, Facebook, etc. Do not use for email addresses.
        case url  
        /// A contact that can be used for sending an sms message (e.g. mobile phones, some 
        /// landlines).
        case sms  
        /// A contact that is not a phone, fax, page or email address and is not expressible 
        /// as a URL.  E.g. Internal mail address.  This SHOULD NOT be used for contacts 
        /// that are expressible as a URL (e.g. Skype, Twitter, Facebook, etc.)  Extensions 
        /// may be used to distinguish "other" contact types.
        case other
    }

    /// Use of contact point.
    enum ContactPointUse: String, Codable {
        /// A communication contact point at a home; attempted contacts for business 
        /// purposes might intrude privacy and chances are one will contact family or other 
        /// household members instead of the person one wishes to call. Typically used with 
        /// urgent cases, or if no other contacts are available.
        case home  
        /// An office contact point. First choice for business related contacts during 
        /// business hours.
        case work  
        /// A temporary contact point. The period can provide more detailed information.
        case temp  
        /// This contact point is no longer in use (or was never correct, but retained for 
        /// records).
        case old   
        /// A telecommunication device that moves and stays with its owner. May have 
        /// characteristics of all other use codes, suitable for urgent matters, not the 
        /// first choice for routine business.
        case mobile
    }

    /// The type of contributor.
    enum ContributorType: String, Codable {
        /// An author of the content of the module.
        case author  
        /// An editor of the content of the module.
        case editor  
        /// A reviewer of the content of the module.
        case reviewer
        /// An endorser of the content of the module.
        case endorser
    }

    /// The days of the week.
    enum DaysOfWeek: String, Codable {
        /// Monday.
        case mon
        /// Tuesday.
        case tue
        /// Wednesday.
        case wed
        /// Thursday.
        case thu
        /// Friday.
        case fri
        /// Saturday.
        case sat
        /// Sunday.
        case sun
    }

    /// How an element value is interpreted when discrimination is evaluated.
    enum DiscriminatorType: String, Codable {
        /// The slices have different values in the nominated element.
        case value  
        /// The slices are differentiated by the presence or absence of the nominated 
        /// element.
        case exists 
        /// The slices have different values in the nominated element, as determined by 
        /// testing them against the applicable ElementDefinition.pattern[x].
        case pattern
        /// The slices are differentiated by type of the nominated element.
        case type   
        /// The slices are differentiated by conformance of the nominated element to a 
        /// specified profile. Note that if the path specifies .resolve() then the profile 
        /// is the target profile on the reference. In this case, validation by the possible 
        /// profiles is required to differentiate the slices.
        case profile
    }

    /// The media type of the expression language.
    enum ExpressionLanguage: String, Codable {
        /// Clinical Quality Language.
        case cql           = "text/cql"
        /// FHIRPath.
        case fhirpath      = "text/fhirpath"
        /// FHIR's RESTful query syntax - typically independent of base URL.
        case fhirQuery     = "application/x-fhir-query"
        /// A valid Clinical Quality Language identifier.
        case cqlIdentifier = "text/cql-identifier"
        /// A Clinical Quality Language expression.
        case cqlExpression = "text/cql-expression"
    }

    /// Identifies the purpose for this identifier, if known .
    enum IdentifierUse: String, Codable {
        /// The identifier recommended for display and use in real-world interactions.
        case usual    
        /// The identifier considered to be most trusted for the identification of this item.
        ///  Sometimes also known as "primary" and "main". The determination of "official" 
        /// is subjective and implementation guides often provide additional guidelines for 
        /// use.
        case official 
        /// A temporary identifier.
        case temp     
        /// An identifier that was assigned in secondary use - it serves to identify the 
        /// object in a relative context, but cannot be consistently assigned to the same 
        /// object again in a different context.
        case secondary
        /// The identifier id no longer considered valid, but may be relevant for search 
        /// purposes.  E.g. Changes to identifier schemes, account merges, etc.
        case old      
    }

    /// Common Languages
    enum Languages: String, Codable {
        case arabic              = "ar"
        case bengali             = "bn"
        case czech               = "cs"
        case danish              = "da"
        case german              = "de"
        case germanAustria       = "de-AT"
        case germanSwitzerland   = "de-CH"
        case germanGermany       = "de-DE"
        case greek               = "el"
        case english             = "en"
        case englishAustralia    = "en-AU"
        case englishCanada       = "en-CA"
        case englishGreatBritain = "en-GB"
        case englishIndia        = "en-IN"
        case englishNewZeland    = "en-NZ"
        case englishSingapore    = "en-SG"
        case englishUnitedStates = "en-US"
        case spanish             = "es"
        case spanishArgentina    = "es-AR"
        case spanishSpain        = "es-ES"
        case spanishUruguay      = "es-UY"
        case finnish             = "fi"
        case french              = "fr"
        case frenchBelgium       = "fr-BE"
        case frenchSwitzerland   = "fr-CH"
        case frenchFrance        = "fr-FR"
        case frysian             = "fy"
        case frysianNetherlands  = "fy-NL"
        case hindi               = "hi"
        case croatian            = "hr"
        case italian             = "it"
        case italianSwitzerland  = "it-CH"
        case italianItaly        = "it-IT"
        case japanese            = "ja"
        case korean              = "ko"
        case dutch               = "nl"
        case dutchBelgium        = "nl-BE"
        case dutchNetherlands    = "nl-NL"
        case norwegian           = "no"
        case norwegianNorway     = "no-NO"
        case punjabi             = "pa"
        case polish              = "pl"
        case portuguese          = "pt"
        case portugueseBrazil    = "pt-BR"
        case russian             = "ru"
        case russianRussia       = "ru-RU"
        case serbian             = "sr"
        case serbianSerbia       = "sr-RS"
        case swedish             = "sv"
        case swedishSweden       = "sv-SE"
        case telegu              = "te"
        case chinese             = "zh"
        case chineseChina        = "zh-CN"
        case chineseHongKong     = "zh-HK"
        case chineseSingapore    = "zh-SG"
        case chineseTaiwan       = "zh-TW"
    }

    /// The use of a human name.
    enum NameUse: String, Codable {
        /// Known as/conventional/the one you normally use.
        case usual    
        /// The formal name as registered in an official (government) registry, but which 
        /// name might not be commonly used. May be called "legal name".
        case official 
        /// A temporary name. Name.period can provide more detailed information. This may 
        /// also be used for temporary names assigned at birth or in emergency situations.
        case temp     
        /// A name that is used to address the person in an informal manner, but is not part 
        /// of their formal or usual name.
        case nickname 
        /// Anonymous assigned name, alias, or pseudonym (used to protect a person's 
        /// identity for privacy reasons).
        case anonymous
        /// This name is no longer in use (or was never correct, but retained for records).
        case old      
    }

    /// The status of a resource narrative.
    enum NarrativeStatus: String, Codable {
        /// The contents of the narrative are entirely generated from the core elements in 
        /// the content.
        case generated 
        /// The contents of the narrative are entirely generated from the core elements in 
        /// the content and some of the content is generated from extensions. The narrative 
        /// SHALL reflect the impact of all modifier extensions.
        case extensions
        /// The contents of the narrative may contain additional information not found in 
        /// the structured data. Note that there is no computable way to determine what the 
        /// extra information is, other than by human inspection.
        case additional
        /// The contents of the narrative are some equivalent of "No human-readable text 
        /// provided in this case".
        case empty     
    }

    /// Whether an operation parameter is an input or an output parameter.
    enum OperationParameterUse: String, Codable {
        /// This is an input parameter.
        case `in`
        /// This is an output parameter.
        case out
    }

    /// How a property is represented when serialized.
    enum PropertyRepresentation: String, Codable {
        /// In XML, this property is represented as an attribute not an element.
        case xmlAttr 
        /// This element is represented using the XML text attribute (primitives only).
        case xmlText 
        /// The type of this element is indicated using xsi:type.
        case typeAttr
        /// Use CDA narrative instead of XHTML.
        case cdaText 
        /// The property is represented using XHTML.
        case xhtml   
    }

    /// How the Quantity should be understood and represented.
    enum QuantityComparator: String, Codable {
        case lessThan     = "<"
        case lessEqual    = "<="
        case greaterEqual = ">="
        case greaterThan  = ">"
    }

    /// Whether a reference needs to be version specific or version independent, or whether either can be used.
    enum ReferenceVersionRules: String, Codable {
        /// The reference may be either version independent or version specific.
        case either     
        /// The reference must be version independent.
        case independent
        /// The reference must be version specific.
        case specific   
    }

    /// The type of relationship to the related artifact.
    enum RelatedArtifactType: String, Codable {
        /// Additional documentation for the knowledge resource. This would include 
        /// additional instructions on usage as well as additional information on clinical 
        /// context or appropriateness.
        case documentation = "documentation"
        /// A summary of the justification for the knowledge resource including supporting 
        /// evidence, relevant guidelines, or other clinically important information. This 
        /// information is intended to provide a way to make the justification for the 
        /// knowledge resource available to the consumer of interventions or results 
        /// produced by the knowledge resource.
        case justification = "justification"
        /// Bibliographic citation for papers, references, or other relevant material for 
        /// the knowledge resource. This is intended to allow for citation of related 
        /// material, but that was not necessarily specifically prepared in connection with 
        /// this knowledge resource.
        case citation      = "citation"
        /// The previous version of the knowledge resource.
        case predecessor   = "predecessor"
        /// The next version of the knowledge resource.
        case successor     = "successor"
        /// The knowledge resource is derived from the related artifact. This is intended to 
        /// capture the relationship in which a particular knowledge resource is based on 
        /// the content of another artifact, but is modified to capture either a different 
        /// set of overall requirements, or a more specific set of requirements such as 
        /// those involved in a particular institution or clinical setting.
        case derivedFrom   = "derived-from"
        /// The knowledge resource depends on the given related artifact.
        case dependsOn     = "depends-on"
        /// The knowledge resource is composed of the given related artifact.
        case composedOf    = "composed-of"
    }

    /// How resource references can be aggregated.
    enum ResourceAggregationMode: String, Codable {
        /// The reference is a local reference to a contained resource.
        case contained 
        /// The reference to a resource that has to be resolved externally to the resource 
        /// that includes the reference.
        case referenced
    }

    /// How slices are interpreted when evaluating an instance.
    enum ResourceSlicingRules: String, Codable {
        /// No additional content is allowed other than that described by the slices in this 
        /// profile.
        case closed   
        /// Additional content is allowed anywhere in the list.
        case open     
        /// Additional content is allowed, but only at the end of the list. Note that using 
        /// this requires that the slices be ordered, which makes it hard to share uses. 
        /// This should only be done where absolutely required.
        case openAtEnd
    }

    /// The possible sort directions, ascending or descending.
    enum SortDirection: String, Codable {
        /// Sort by the value ascending, so that lower values appear first.
        case ascending 
        /// Sort by the value descending, so that lower values appear last.
        case descending
    }

    /// The type of trigger.
    enum TriggerType: String, Codable {
        /// The trigger occurs in response to a specific named event, and no other 
        /// information about the trigger is specified. Named events are completely pre-
        /// coordinated, and the formal semantics of the trigger are not provided.
        case namedEvent      = "named-event"
        /// The trigger occurs at a specific time or periodically as described by a timing 
        /// or schedule. A periodic event cannot have any data elements, but may have a name 
        /// assigned as a shorthand for the event.
        case periodic        = "periodic"
        /// The trigger occurs whenever data of a particular type is changed in any way, 
        /// either added, modified, or removed.
        case dataChanged     = "data-changed"
        /// The trigger occurs whenever data of a particular type is accessed.
        case dataAccessed    = "data-accessed"
        /// The trigger occurs whenever access to data of a particular type is completed.
        case dataAccessEnded = "data-access-ended"
    }

    /// UnitsOfTime
    enum UnitsOfTime: String, Codable {
        case second = "s"
        case minute = "min"
        case hour   = "h"
        case day    = "d"
        case week   = "wk"
        case month  = "mo"
        case year   = "a"
    }

    enum Discriminator: String, CodingKey {
        case resourceType = "resourceType"
    }
}
