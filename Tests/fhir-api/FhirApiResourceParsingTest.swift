@testable import SMPClient
import XCTest

final class FhirApiResourceParsingTest: XCTestCase {
    func test_parsePatient() throws {
        if let patient: FhirApi.Patient = parseJSON(from: "betsy-patient") {
            XCTAssertEqual(patient.id, "blah")
        } else {
            XCTFail("Unable to parse patient JSON")
        }
    }
}
