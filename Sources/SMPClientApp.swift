//
//  SMPClientApp.swift
//  SMPClient
//
//  Created by Andy Stechishin on 2024-05-16.
//

import SwiftUI



struct SMPClientApp: App {
    @State var patientAndDrugs = PatientAndDrugs()

    @AppStorage("patientId") private var currentPatient: String = ""

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .environmentObject(patientAndDrugs)
    }
}

