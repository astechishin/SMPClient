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

    /// The parameters to the module. This collection specifies both the input and output 
    /// parameters. Input parameters are provided by the caller as part of the $evaluate operation.
    ///  Output parameters are included in the GuidanceResponse.
    /// 
    struct ParameterDefinition: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Name used to access the parameter value
        var name: String?

        /// in | out
        var use: OperationParameterUse

        /// Minimum cardinality
        var min: Int?

        /// Maximum cardinality (a number of *)
        var max: String?

        /// A brief description of the parameter
        var documentation: String?

        /// What type of value
        var type: String

        /// What profile the value is expected to be
        var profile: String?
    }
}
