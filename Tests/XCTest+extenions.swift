//
//  XCTest+extenions.swift
//  SMPClientTests
//
//  Created by Andy Stechishin on 2024-05-16.
//

import Foundation
import XCTest
@testable import SMPClient

extension XCTest {
    /// Read a JSON file into an object, used to test the Decodable implementation
    /// - Parameters:
    ///   - fileName: the name of the file (without the trailing .json) to read from
    ///   - fileBundle: the Bundle that contains the JSON file to read and parse, default is nil which indicates the file is part of the Test bundle,
    ///   use Bundle.main for main application bundle
    ///   - file: the file that invoked this method (do not specify unless calling from another convenience method)
    ///   - line: the line in the invoking method (do not specify unless calling from another convenience method)
    /// - Returns:the parsed results of the requested type
    public func parseJSON<T: Decodable>(from fileName: String, fileBundle: Bundle? = nil, decoderType: DecoderType = .onlyDate,
                                        file: StaticString = #filePath, line: UInt = #line) -> T? {
        let bundle: Bundle
        
        if fileBundle == nil {
            bundle = Bundle(for: type(of: self))
        } else {
            bundle = fileBundle!
        }
        guard let url = bundle.url(forResource: fileName, withExtension: "json") else {
            XCTFail("Missing file: \(fileName).json", file: file, line: line)
            return nil
        }
        
        guard let data = try? Data(contentsOf: url) else {
            XCTFail("Unable to read from file \(fileName).json", file: file, line: line)
            return nil
        }
        
        //let decoder = JSONDecoder()
        //decoder.dateDecodingStrategy = .iso8601
        //decoder.dateDecodingStrategy = .formatted(DateFormatter.justDate)
        guard let localJSON = try? decoderType.decoder.decode(T.self, from: data) else {
            XCTAssertNoThrow(try decoderType.decoder.decode(T.self, from: data), file: file, line: line)
            return nil
        }
        return localJSON
    }
    
    public func getTestBundleFileURL(_ fileName: String, withExtension fileExtension: String = "csv",
                                     file: StaticString = #filePath, line: UInt = #line) -> URL? {
        let bundle = Bundle(for: type(of: self))
        
        guard let url = bundle.url(forResource: fileName, withExtension: fileExtension) else {
            XCTFail("Missing file: \(fileName).\(fileExtension)", file: file, line: line)
            return nil
        }

        return url
    }
}
