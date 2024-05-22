//
// FhirApi+GlobalEnums.swift
//
// Various global enumerations for Resources in the FHIR APIs 
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

extension FhirApi {

    /// The gender of a person used for administrative purposes.
    enum AdministrativeGender: String, Codable {
        /// Male.
        case male   
        /// Female.
        case female 
        /// Other.
        case other  
        /// Unknown.
        case unknown
    }

    /// The type of link between this patient resource and another patient resource.
    enum LinkType: String, Codable {
        /// The patient resource containing this link must no longer be used. The link 
        /// points forward to another patient resource that must be used in lieu of the 
        /// patient resource that contains this link.
        case replacedBy = "replaced-by"
        /// The patient resource containing this link is the current active patient record. 
        /// The link points back to an inactive patient resource that has been merged into 
        /// this resource, and should be consulted to retrieve additional referenced 
        /// information.
        case replaces   = "replaces"
        /// The patient resource containing this link is in use and valid but not considered 
        /// the main source of information about a patient. The link points forward to 
        /// another patient resource that should be consulted to retrieve additional patient 
        /// information.
        case refer      = "refer"
        /// The patient resource containing this link is in use and valid, but points to 
        /// another patient resource that is known to contain data about the same person. 
        /// Data in this resource might overlap or contradict information found in the other 
        /// patient resource. This link does not indicate any relative importance of the 
        /// resources concerned, and both should be regarded as equally valid.
        case seealso    = "seealso"
    }

    /// The processing mode that applies to this list.
    enum ListMode: String, Codable {
        /// This list is the master list, maintained in an ongoing fashion with regular 
        /// updates as the real world list it is tracking changes.
        case working 
        /// This list was prepared as a snapshot. It should not be assumed to be current.
        case snapshot
        /// A point-in-time list that shows what changes have been made or recommended.  E.g.
        ///  a discharge medication list showing what was added and removed during an 
        /// encounter.
        case changes 
    }

    /// The current state of the list.
    enum ListStatus: String, Codable {
        /// The list is considered to be an active part of the patient's record.
        case current        = "current"
        /// The list is "old" and should no longer be considered accurate or relevant.
        case retired        = "retired"
        /// The list was never accurate.  It is retained for medico-legal purposes only.
        case enteredInError = "entered-in-error"
    }

    enum MedicationStatementStatus: String, Codable {
        /// The medication is still being taken.
        case active         = "active"
        /// The medication is no longer being taken.
        case completed      = "completed"
        /// Some of the actions that are implied by the medication statement may have 
        /// occurred.  For example, the patient may have taken some of the medication.  
        /// Clinical decision support systems should take this status into account.
        case enteredInError = "entered-in-error"
        /// The medication may be taken at some time in the future.
        case intended       = "intended"
        /// Actions implied by the statement have been permanently halted, before all of 
        /// them occurred. This should not be used if the statement was entered in error.
        case stopped        = "stopped"
        /// Actions implied by the statement have been temporarily halted, but are expected 
        /// to continue later. May also be called 'suspended'.
        case onHold         = "on-hold"
        /// The state of the medication use is not currently known.
        case unknown        = "unknown"
        /// The medication was not consumed by the patient
        case notTaken       = "not-taken"
    }

    enum MedicationStatus: String, Codable {
        /// The medication is available for use.
        case active         = "active"
        /// The medication is not available for use.
        case inactive       = "inactive"
        /// The medication was entered in error.
        case enteredInError = "entered-in-error"
    }

    enum MedicationrequestIntent: String, Codable {
        /// The request is a suggestion made by someone/something that doesn't have an 
        /// intention to ensure it occurs and without providing an authorization to act
        case proposal      = "proposal"
        /// The request represents an intention to ensure something occurs without providing 
        /// an authorization for others to act.
        case plan          = "plan"
        /// The request represents a request/demand and authorization for action
        case order         = "order"
        /// The request represents the original authorization for the medication request.
        case originalOrder = "original-order"
        /// The request represents an automatically generated supplemental authorization for 
        /// action based on a parent authorization together with initial results of the 
        /// action taken against that parent authorization..
        case reflexOrder   = "reflex-order"
        /// The request represents the view of an authorization instantiated by a fulfilling 
        /// system representing the details of the fulfiller's intention to act upon a 
        /// submitted order.
        case fillerOrder   = "filler-order"
        /// The request represents an instance for the particular order, for example a 
        /// medication administration record.
        case instanceOrder = "instance-order"
        /// The request represents a component or option for a RequestGroup that establishes 
        /// timing, conditionality and/or  other constraints among a set of requests.
        case option        = "option"
    }

    enum MedicationrequestStatus: String, Codable {
        /// The prescription is 'actionable', but not all actions that are implied by it 
        /// have occurred yet.
        case active         = "active"
        /// Actions implied by the prescription are to be temporarily halted, but are 
        /// expected to continue later.  May also be called 'suspended'.
        case onHold         = "on-hold"
        /// The prescription has been withdrawn before any administrations have occurred
        case cancelled      = "cancelled"
        /// All actions that are implied by the prescription have occurred.
        case completed      = "completed"
        /// Some of the actions that are implied by the medication request may have occurred.
        ///   For example, the medication may have been dispensed and the patient may have 
        /// taken some of the medication.  Clinical decision support systems should take 
        /// this status into account
        case enteredInError = "entered-in-error"
        /// Actions implied by the prescription are to be permanently halted, before all of 
        /// the administrations occurred. This should not be used if the original order was 
        /// entered in error
        case stopped        = "stopped"
        /// The prescription is not yet 'actionable', e.g. it is a work in progress, 
        /// requires sign-off, verification or needs to be run through decision support 
        /// process.
        case draft          = "draft"
        /// The authoring/source system does not know which of the status values currently 
        /// applies for this observation. Note: This concept is not to be used for 'other' - 
        /// one of the listed statuses is presumed to apply, but the authoring/source system 
        /// does not know which.
        case unknown        = "unknown"
    }

    /// Identifies the level of importance to be assigned to actioning the request.
    enum RequestPriority: String, Codable {
        /// The request has normal priority.
        case routine
        /// The request should be actioned promptly - higher priority than routine.
        case urgent 
        /// The request should be actioned as soon as possible - higher priority than urgent.
        case asap   
        /// The request should be actioned immediately - highest possible priority.  E.g. an 
        /// emergency.
        case stat   
    }
}

protocol Resource: Decodable {
    static var resourceName: String { get }
    
    var resourceType: String { get }
    var id: String? { get }
}
