//
//  StockList.swift
//  MarketData
//
//  Created by Charmaine Lim on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    @StateObject var vm = StockListViewModel(stockListService: MockStockListDataService())
    
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

//struct StockList_Previews: PreviewProvider {
//
//
//    static func loopThrough() -> [StockInfoModel] {
//        var stocks = [] as [StockInfoModel]
//        // parse json file
//
//        for n in 1...5 {
//      // replace with for-loop through json file
//            let tradePrice = Amount(value: 650.00, currency: .usd)
//            let actualChange = Amount(value: 0.00, currency: .usd)
//
//            let price = PriceInfo(symbol: "TSLA", tradePrice: tradePrice, actualChange: actualChange, percentageChange: 10.00)
//            let stock = StockInfoModel(name: "TESLA", symbol: "TSLA", imageURL: nil, priceInfo: price)
//            stocks.append(stock)
//        }
//        return stocks
//    }
//
//    static var previews: some View {
//        let vm = StockListViewModel(stockListService: MockStockListDataService())
//        if let stocks = vm.stocks {
//            StockListView(stocks: stocks)
//        } else {
//            Text("No Stocks")
//        }
//
//    }
