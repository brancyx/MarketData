//
//  StockListViewModel.swift
//  MarketData
//
//  Created by Charmaine Lim on 5/8/21.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    // @Published var stocks: [StockInfoModel] = JsonParser.load("StockInfoData.json")
    private var stockListService: StockListService
    @Published var stocks: [StockInfoModel]?

    init(stockListService: StockListService) {
        //populate stocks data using service
        //service need method to give the data
        self.stockListService = stockListService
        initStocks()
    }
    
    private func initStocks() {
        stocks = self.stockListService.getTopStocks()
    }
    
}
