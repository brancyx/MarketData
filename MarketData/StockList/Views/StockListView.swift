//
//  StockList.swift
//  MarketData
//
//  Created by Charmaine Lim on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    @StateObject var vm = StockListViewModel(stockListService: StockListDataService())
    
    var body: some View {
        if let stocks = vm.stocks {
            List(stocks) { stock in
                NavigationLink(destination: StockDetailsView(stock: stock)) {
                    StockRowView(stock: stock)
                }
            }
        } else {
            ProgressView()
        }
    }
}

struct StockList_Previews: PreviewProvider {
    static var previews: some View {
        StockListView()
    }

}
