//
//  SelectPatientPanel.swift
//  SMPClient
//
//  Created by Andrew Stechishin on 2024-05-18.
//

import SwiftUI

struct SelectPatientPanel: View {
    private var fhirApi = SMPApi()
    @Environment(PatientAndDrugs.self) private var patientAndDrugs

    @State private var patientId: String = ""
    
    @State private var patient: FhirApi.Patient? = nil
    @State private var isRunning = false
    @State private var isRetrieving = false
    
    var body: some View {
        VStack {
            HStack {
                TextField("Patient Search", text: $patientId,
                          prompt: Text("enter a patient's ID"))
                Button("Search", systemImage: "magnifyingglass") {
                    isRunning = true
                    Task {
                        await executeQuery()
                        isRunning = false
                    }
                }
                .disabled(isRunning)
            }
            .padding()
            .frame(maxWidth: 250)
            
            if let patient {
                GroupBox {
                    PatientGroupBox(patient: patient)
                    Button("Select Patient", systemImage:  "person.fill.checkmark") {
                        isRetrieving = true
                        Task {
                            await storePatient(id: patient.id!)
                        }
                    }
                    .padding()
                    .buttonStyle(.borderedProminent)
                    .disabled(isRetrieving)
                }

            } else {
                ContentUnavailableView(label: {
                    Label("No patient selected", systemImage: "person.fill.questionmark")
                }, description: {
                    Text("Please enter a valid patient ID")
                }, actions: {
                })
            }
        }
    }
    
    private func executeQuery() async {
        patient = await fhirApi.getResource(for: patientId)
    }
    
    private func storePatient(id: String) async {
        await patientAndDrugs.retrievePatient(by: id)
    }
}

struct PatientGroupBox: View {
    var patient: FhirApi.Patient
    
    var body: some View {
        GroupBox {
            ZStack(alignment: .bottomLeading) {
                Image("old-lady")
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: 250, maxHeight: 250)
                Color.gray
                    .frame(maxWidth: 250, maxHeight: 250)
                    .opacity(0.1)
                VStack(alignment: .leading) {
                    Text("Patient")
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5)
                    Text(patient.id ?? "^^^")
                        .font(.title2)
                        .foregroundColor(.white)
                        .shadow(color: .black, radius: 5)
                    if let name = patient.name {
                        Text("\(name[0].given?.joined(separator: ",") ?? "") \(name[0].family ?? "unnamed")")
                            .font(.title2)
                            .bold()
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 5)
                    } else {
                        Text("patient name not provided")
                            .italic()
                            .font(.title3)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 5)
                    }
                }
                .background(.clear)
            }
        }
    }
}

#if DEBUG
#Preview {
    var pAndD = PatientAndDrugs()
    return SelectPatientPanel()
        .environment(pAndD)
}
#endif
