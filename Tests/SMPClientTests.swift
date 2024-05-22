//
//  SMPClientTests.swift
//  SMPClientTests
//
//  Created by Andy Stechishin on 2024-05-16.
//

import XCTest
@testable import SMPClient

final class SMPClientTests: XCTestCase {
    let fhirClient = SMPApi()
    let patientId = "patientBSJ1"
    let medRxId = "smp-medrx-1-1"
    let medListID = "smp-med-list-1"

    func test_PatientRetrieve() async throws {
        if let patient: FhirApi.Patient = await fhirClient.getResource(for: patientId) {
            Base.logTesting().info("Retrieved: \(patient.id ?? "***")")
            XCTAssertEqual(patient.id, "patientBSJ1")
        } else {
            XCTFail("No Patient retrieved")
        }
    }
    
    func test_MedicationRequestRetrieval() async throws {
        if let medRX: FhirApi.MedicationRequest = await fhirClient.getResource(for: medRxId) {
            XCTAssertEqual(medRX.id, "smp-medrx-1-1")
        } else {
            XCTFail("No MedicationRequest retrieved")
        }
    }
    
    func test_MedicationList() async throws {
        if let medList: FhirApi.List = await fhirClient.getResource(for: medListID) {
            XCTAssertEqual(medList.id, "smp-med-list-1")
        } else {
            XCTFail("No Medication List retrieved")
        }
    }
    
    func test_MedListBundle_retrieve() async throws {
        let medList: [FhirApi.List] = await fhirClient.getListBundle(for: patientId)
        XCTAssertEqual(medList.count, 7)
    }
//    func test_DebugPAndD() throws {
//        var pAndD = PatientAndDrugs.fromPreviewData()
//        
//        XCTAssertNotNil(pAndD.patient)
//    }
}
