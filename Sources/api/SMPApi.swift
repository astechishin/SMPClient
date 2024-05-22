//
//  SMPApi.swift
//  SMPClient
//
//  Created by Andy Stechishin on 2024-05-16.
//

import Foundation

class SMPApi: JsonApiClient {
    // MiHIN Endpoint: https://gw.interop.community/MiHIN/open
    // HAPI Server: https://hapi.fhir.org/baseR4
    // Patient_ID: patientBSJ1
    // TOC Bundle: Bundle/Smith-Johnson-Bundle
    static let scheme = "https"
    static let hapiHost = "hapi.fhir.org"
    static let mihinHost = "gw.interop.community"
    static let mihinPathPrefix = "MiHIN/open"
    static let hapiURL = "https://hapi.fhir.org/baseR4"
    static let mihinURL = "https://gw.interop.community/MiHIN/open"
    
    let session: URLSession
    
    private let baseURL: URL
    
    private var activeRetrieveTask: URLSessionDataTask?
    
    init(session: URLSession = .shared) {
        self.session = session
        self.baseURL = URL(string: Self.mihinURL)!
    }
    
    func getResource<T: Resource>(for id: String, decoderType: DecoderType = .onlyDate) async -> T? {
        var resource: T? = nil

        var components = URLComponents()
        components.scheme = Self.scheme
        components.host = Self.mihinHost
        components.path = "/\(Self.mihinPathPrefix)/\(T.resourceName)/\(id)"

        components.queryItems = [URLQueryItem(name: "_format", value: "json")]

        guard let url = components.url else {
            print("Invalid URL \(components.string ?? "-complete junk-")")
            print(components.host ?? "no host")
            print(components.path)
            return nil
        }
        
        Base.logImportTx().info("retrieving from \(url.absoluteString)")

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            resource = try decoderType.decoder.decode(T.self, from: data)
            
            return resource
        } catch {
            print("Invalid data: \(error)")
            return nil
        }
    }
    
    func getListBundle(for patientId: String, decoderType: DecoderType = .onlyDate) async -> [FhirApi.List] {
        var list = [FhirApi.List]()

        var components = URLComponents()
        components.scheme = Self.scheme
        components.host = Self.mihinHost
        components.path = "/\(Self.mihinPathPrefix)/\(FhirApi.List.resourceName)"

        components.queryItems = [URLQueryItem(name: "subject", value: "\(FhirApi.Patient.resourceName)/\(patientId)"),
                                 URLQueryItem(name: "_format", value: "json")]

        guard let url = components.url else {
            print("Invalid URL \(components.string ?? "-complete junk-")")
            print(components.host ?? "no host")
            print(components.path)
            return list
        }
        
        // "https://gw.interop.community/MiHIN/open/List?subject=Patient/patientBSJ1"
        
        Base.logImportTx().info("retrieving from \(url.absoluteString)")

        do {
            let (data, _) = try await URLSession.shared.data(from: url)

            let bundle: MedListBundle = try decoderType.decoder.decode(MedListBundle.self, from: data)
            
            if let entries = bundle.entry {
                list = entries.compactMap { $0.resource }
            }
        } catch {
            print("Invalid data: \(error)")
        }
 
        return list
    }
}
