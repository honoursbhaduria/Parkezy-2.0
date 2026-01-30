//
//  ParkezyApp.swift
//  Parkezy
//
//  Created by Kartik on 28-01-2026.
//

import SwiftUI

@main
struct ParkezyApp: App {
    @StateObject private var mapViewModel = MapViewModel()
    @StateObject private var bookingViewModel = BookingViewModel()
    @StateObject private var hostViewModel = HostViewModel()
    
    var body: some Scene {
        WindowGroup {
            RoleSelectionView()
                .environmentObject(mapViewModel)
                .environmentObject(bookingViewModel)
                .environmentObject(hostViewModel)
        }
    }
}
