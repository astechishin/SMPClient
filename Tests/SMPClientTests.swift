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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        fhirClient.retrieve(forResource: .patient, id: "patientBSJ1") { result in
            switch result {
            case .success(let patient):
                print("SUccess!")
                
            case .failure(let error):
                print("Error retrieving: \(error.localizedDescription)")
            }
        }
    }
}
