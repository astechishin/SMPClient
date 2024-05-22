//
//  PatientAndDrugs.swift
//  SMPClientTests
//
//  Created by Andrew Stechishin on 2024-05-18.
//

import Foundation

@Observable
class PatientAndDrugs: ObservableObject {
    struct KnownList: Identifiable, Decodable {
        var id: String
        var title: String
        var date: Date?
        var medList: FhirApi.List
    }

    let fhirClient = SMPApi()

    var patient: FhirApi.Patient? = nil
    var knownLists: [KnownList] = []
    var medList: FhirApi.List? = nil
    
    func retrievePatient(by id: String) async {
        if let patient: FhirApi.Patient = await fhirClient.getResource(for: id) {
            self.patient = patient
            Base.logServerRetrieve().info("retrieved patient for: \(id)")
            var medLists: [FhirApi.List] = await fhirClient.getListBundle(for: id)
            
            self.knownLists = medLists.compactMap{ list in
                if let id = list.id, let title = list.title {
                    return KnownList(id: id, title: title, date: list.date, medList: list)
                } else {
                    return nil
                }
            }
        } else {
            Base.logServerRetrieve().error("Retrieve patient for \(id) FAILED")
        }
    }
    
    func retrieveList(for id: String) -> FhirApi.List? {
        var foundList: FhirApi.List? = nil
        
        if let list = knownLists.first(where: { $0.id == id } ) {
            foundList = list.medList
        }
        return foundList
    }
}

struct EntryDisplay: Identifiable, Hashable {
    var id: String
    var date: Date
    var display: String
}

extension FhirApi.List {
    var entryDisplays: [EntryDisplay] {
        var entries = [EntryDisplay]()
        
        guard let entry else { return entries }
        
        for singleEntry in entry {
            if let date = singleEntry.date, let reference = singleEntry.item.reference, let display = singleEntry.item.display {
                entries.append(EntryDisplay(id: reference, date: date, display: display))
            }
        }
        return entries
    }
}

#if DEBUG
extension PatientAndDrugs {
    static func fromPreviewData() -> PatientAndDrugs {
        var pAndD = PatientAndDrugs()
        
        pAndD.patient = Bundle.main.jsonLoad("betsy-patient")
        pAndD.knownLists = Bundle.main.jsonLoad("list-summaries")
        //pAndD.medList = Bundle.main.jsonLoad("med-list-1")

        return pAndD
    }
}
#endif
