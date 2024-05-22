@testable import SMPClient
import XCTest

final class FhirApiResourceParsingTest: XCTestCase {
    func test_parsePatient() throws {
        if let patient: FhirApi.Patient = parseJSON(from: "betsy-patient") {
            XCTAssertEqual(patient.id, "patientBSJ1")
        } else {
            XCTFail("Unable to parse patient JSON")
        }
    }
    
    func test_parseMedicationrequest() throws {
        if let medRx: FhirApi.MedicationRequest = parseJSON(from: "med-request") {
            XCTAssertEqual(medRx.id, "smp-medrx-1-1")
        } else {
            XCTFail("Unable to parse medication request JSON")
        }
    }
    
    func test_parseMedicationStatement() throws {
        if let medStatement: FhirApi.MedicationStatement = parseJSON(from: "med-statement") {
            XCTAssertEqual(medStatement.id, "smp-medstmt-1-1")
        } else {
            XCTFail("Unable to parse medication statement JSON")
        }
    }
    
    func test_parseMedicationList() throws {
        if let medList: FhirApi.List = parseJSON(from: "med-list") {
            XCTAssertEqual(medList.id, "smp-med-list-1")
        } else {
            XCTFail("Unable to parse medication list JSON")
        }
    }
}
