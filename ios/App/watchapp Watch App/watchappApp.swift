//
//  watchappApp.swift
//  watchapp Watch App
//
//  Created by Jens Uwe Becker on 09.04.24.
//

import SwiftUI
import WatchConnectivity
import iOS_capWatch_watch

@main
struct watchddgg_Watch_AppApp: App {
    var body: some Scene {
        WindowGroup {
            CapWatchContentView()
                .onAppear {
                    assert(WCSession.isSupported(), "This sample requires Watch Connectivity support!")
                    WCSession.default.delegate = WatchViewModel.shared
                    WCSession.default.activate()
                }
        }
    }
}
