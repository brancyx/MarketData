//
//  MarketDataApp.swift
//  MarketData
//
//  Created by Charmaine Lim on 4/8/21.
//

import SwiftUI

@main
struct MarketDataApp: App {
    
    @StateObject var vm = StockListViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vm)
        }
    }
}
