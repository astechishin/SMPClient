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
    static let hapiURL = "https://hapi.fhir.org/baseR4"
    static let mihinHost = "https://gw.interop.community/MiHIN/open"
    let session: URLSession
    
    private let baseURL: URL
    
    private var activeRetrieveTask: URLSessionDataTask?
    
    init(session: URLSession = .shared) {
        self.session = session
        self.baseURL = URL(string: SMPApi.hapiURL)!
    }
    
    func retrieve(forResource resource: FhirResource, id: String,
                            completion: @escaping (Result<FhirApi.Patient, APIError>) -> Void) {
        var components = URLComponents()
        components.path = "\(resource.profileName())/\(id)"
        components.queryItems = [URLQueryItem(name: "_format", value: "json")]
        let url     = URL(string: components.string!, relativeTo: baseURL)!
        let request = URLRequest(url: url)
        
        Base.logImportTx().info("retrieving from \(url)")
        activeRetrieveTask?.cancel()
        activeRetrieveTask = perform(request: request, completion: parseDecodable(completion: completion))
    }
}
