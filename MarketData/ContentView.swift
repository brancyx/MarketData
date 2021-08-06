//
//  ContentView.swift
//  MarketData
//
//  Created by Charmaine Lim on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    
     @EnvironmentObject var vm: StockListViewModel
    
    var body: some View {
//        let vm = StockListViewModel(stockListService: MockStockListDataService())
        NavigationView {
            if let stocks = vm.stocks {
              StockListView(stocks: stocks)
                .navigationTitle("Stock List")
            } else {
                ProgressView()
                // TODO:
                //Text("No Stocks")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().environmentObject(StockListViewModel(stockListService: MockStockListDataService()))
    }
}
