//
// FhirApi+WrappedResource.swift
//
// The wrapper that enables the parsing of the 
// 
// Generated:    2024-05-16
// FHIR Version: 4.3.0 [updated: 2022-05-28T12:47:40+10:00]

import Foundation

typealias Json     = Any
typealias JsonDict = [String : Json]

extension FhirApi {
    /// A wrapper for a generic resource 
    enum WrappedResource: Codable {
        case patient(Patient)
        case medicationStatement(MedicationStatement)
        case medication(Medication)
        case medicationRequest(MedicationRequest)
        case list(List)
        case unknown(String, JsonDict)

        private enum CodingKeys: String, CodingKey {
            case resourceType
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            let resourceType = try container.decode(String.self, forKey: .resourceType)
            switch resourceType {
            case FhirResource.patient.rawValue:             
                self = .patient(try Patient(from: decoder))
            case FhirResource.medicationStatement.rawValue: 
                self = .medicationStatement(try MedicationStatement(from: decoder))
            case FhirResource.medication.rawValue:          
                self = .medication(try Medication(from: decoder))
            case FhirResource.medicationRequest.rawValue:   
                self = .medicationRequest(try MedicationRequest(from: decoder))
            case FhirResource.list.rawValue:                
                self = .list(try List(from: decoder))
            default: fatalError("Unknown type \(resourceType)")
            }
        }

        func encode(to encoder: Encoder) throws {
            switch self {
            case .patient(let resource):
                try resource.encode(to: encoder)
            case .medicationStatement(let resource):
                try resource.encode(to: encoder)
            case .medication(let resource):
                try resource.encode(to: encoder)
            case .medicationRequest(let resource):
                try resource.encode(to: encoder)
            case .list(let resource):
                try resource.encode(to: encoder)
            case .unknown(let resourceType, let _): NSLog("Cannot encode \(resourceType)")
            }
        }
    }
}
