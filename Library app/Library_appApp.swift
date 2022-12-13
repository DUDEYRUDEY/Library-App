//
//  Library_appApp.swift
//  Library app
//
//  Created by Sean Smith on 11/12/2022.
//

import SwiftUI

@main
struct Library_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookViewModel())
        }
    }
}
