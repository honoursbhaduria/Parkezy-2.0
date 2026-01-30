//
//  ParkezyApp.swift
//  Parkezy
//
//  Created by Kartik on 28-01-2026.
//

import SwiftUI

@main
struct ParkezyApp: App {
    // Legacy ViewModels (for existing views)
    @StateObject private var mapViewModel = MapViewModel()
    @StateObject private var bookingViewModel = BookingViewModel()
    @StateObject private var hostViewModel = HostViewModel()
    
    // New separated ViewModels
    @StateObject private var commercialViewModel = CommercialParkingViewModel()
    @StateObject private var privateViewModel = PrivateParkingViewModel()
    
    var body: some Scene {
        WindowGroup {
            RoleSelectionView()
                .environmentObject(mapViewModel)
                .environmentObject(bookingViewModel)
                .environmentObject(hostViewModel)
                .environmentObject(commercialViewModel)
                .environmentObject(privateViewModel)
        }
    }
}
