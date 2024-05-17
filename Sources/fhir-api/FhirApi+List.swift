//
// FhirApi+List.swift
//
// A list is a curated collection of resources.
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

extension FhirApi {

    /// A list is a curated collection of resources.
    /// 
    struct List: Codable, Resource {
        /// Entries in this list.
        /// 
        struct Entry: Codable {
            /// Unique id for inter-element referencing
            var id: String?

            /// Additional content defined by implementations
            var `extension`: [Extension]?

            /// Extensions that cannot be ignored even if unrecognized
            var modifierExtension: [Extension]?

            /// Status/Workflow information about this item
            var flag: CodeableConcept?

            /// If this item is actually marked as deleted
            var deleted: Bool?

            /// When item added to list
            var date: Date?

            /// Actual entry
            var item: Reference
        }

        let resourceType = "List"

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

        /// Business identifier
        var identifier: [Identifier]?

        /// current | retired | entered-in-error
        var status: ListStatus

        /// working | snapshot | changes
        var mode: ListMode

        /// Descriptive name for the list
        var title: String?

        /// What the purpose of this list is
        var code: CodeableConcept?

        /// If all resources have the same subject
        var subject: Reference?

        /// Context in which list created
        var encounter: Reference?

        /// When the list was prepared
        var date: Date?

        /// Who and/or what defined the list contents (aka Author)
        var source: Reference?

        /// What order the list has
        var orderedBy: CodeableConcept?

        /// Comments about the list
        var note: [Annotation]?

        /// Entries in the list
        var entry: [Entry]?

        /// Why list is empty
        var emptyReason: CodeableConcept?
    }
}
