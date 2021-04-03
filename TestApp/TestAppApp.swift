//
//  TestAppApp.swift
//  TestApp
//
//  Created by Gorez Tony on 10/03/2021.
//

import SwiftUI

@main
struct TestAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
