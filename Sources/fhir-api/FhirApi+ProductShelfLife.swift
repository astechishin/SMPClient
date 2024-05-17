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

    /// The shelf-life and storage information for a medicinal product item or container can be 
    /// described using this class.
    /// 
    struct ProductShelfLife: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Extensions that cannot be ignored even if unrecognized
        var modifierExtension: [Extension]?

        /// Unique identifier for the packaged Medicinal Product
        var identifier: Identifier?

        /// This describes the shelf life, taking into account various scenarios such as 
        /// shelf life of the packaged Medicinal Product itself, shelf life after 
        /// transformation where necessary and shelf life after the first opening of a 
        /// bottle, etc. The shelf life type shall be specified using an appropriate 
        /// controlled vocabulary The controlled term and the controlled term identifier 
        /// shall be specified
        var type: CodeableConcept

        /// The shelf life time period can be specified using a numerical value for the 
        /// period of time and its unit of time measurement The unit of measurement shall be 
        /// specified in accordance with ISO 11240 and the resulting terminology The symbol 
        /// and the symbol identifier shall be used
        var period: Quantity

        /// Special precautions for storage, if any, can be specified using an appropriate 
        /// controlled vocabulary The controlled term and the controlled term identifier 
        /// shall be specified
        var specialPrecautionsForStorage: [CodeableConcept]?
    }
}
