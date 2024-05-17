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

    /// The marketing status describes the date when a medicinal product is actually put on the 
    /// market or the date as of which it is no longer available.
    /// 
    struct ProdCharacteristic: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// Where applicable, the height can be specified using a numerical value and its 
        /// unit of measurement The unit of measurement shall be specified in accordance 
        /// with ISO 11240 and the resulting terminology The symbol and the symbol 
        /// identifier shall be used
        var height: Quantity?

        /// Where applicable, the width can be specified using a numerical value and its 
        /// unit of measurement The unit of measurement shall be specified in accordance 
        /// with ISO 11240 and the resulting terminology The symbol and the symbol 
        /// identifier shall be used
        var width: Quantity?

        /// Where applicable, the depth can be specified using a numerical value and its 
        /// unit of measurement The unit of measurement shall be specified in accordance 
        /// with ISO 11240 and the resulting terminology The symbol and the symbol 
        /// identifier shall be used
        var depth: Quantity?

        /// Where applicable, the weight can be specified using a numerical value and its 
        /// unit of measurement The unit of measurement shall be specified in accordance 
        /// with ISO 11240 and the resulting terminology The symbol and the symbol 
        /// identifier shall be used
        var weight: Quantity?

        /// Where applicable, the nominal volume can be specified using a numerical value 
        /// and its unit of measurement The unit of measurement shall be specified in 
        /// accordance with ISO 11240 and the resulting terminology The symbol and the 
        /// symbol identifier shall be used
        var nominalVolume: Quantity?

        /// Where applicable, the external diameter can be specified using a numerical value 
        /// and its unit of measurement The unit of measurement shall be specified in 
        /// accordance with ISO 11240 and the resulting terminology The symbol and the 
        /// symbol identifier shall be used
        var externalDiameter: Quantity?

        /// Where applicable, the shape can be specified An appropriate controlled 
        /// vocabulary shall be used The term and the term identifier shall be used
        var shape: String?

        /// Where applicable, the color can be specified An appropriate controlled 
        /// vocabulary shall be used The term and the term identifier shall be used
        var color: [String]?

        /// Where applicable, the imprint can be specified as text
        var imprint: [String]?

        /// Where applicable, the image can be provided The format of the image attachment 
        /// shall be specified by regional implementations
        var image: [Attachment]?

        /// Where applicable, the scoring can be specified An appropriate controlled 
        /// vocabulary shall be used The term and the term identifier shall be used
        var scoring: CodeableConcept?
    }
}
