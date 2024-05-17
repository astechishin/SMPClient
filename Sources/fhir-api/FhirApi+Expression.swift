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

    /// A expression that is evaluated in a specified context and returns a value. The context of 
    /// use of the expression must specify the context in which the expression is evaluated, and 
    /// how the result of the expression is used.
    /// 
    struct Expression: Codable {
        /// Unique id for inter-element referencing
        var id: String?

        /// Additional content defined by implementations
        var `extension`: [Extension]?

        /// Natural language description of the condition
        var description: String?

        /// Short name assigned to expression for reuse
        var name: String?

        /// text/cql | text/fhirpath | application/x-fhir-query | text/cql-identifier | text/
        /// cql-expression | etc.
        var language: ExpressionLanguage

        /// Expression in specified language
        var expression: String?

        /// Where the expression is found
        var reference: String?
    }
}
