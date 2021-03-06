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
        self.stockListService = stockListService
        initStocks()
    }
    
    private func initStocks() {
        stockListService.getTopStocks { result in
            switch result {
            case .success(let stocks):
                DispatchQueue.main.async {
                                    self.stocks = stocks
                }
            default:
                break
            }
        }
    }
    
}
