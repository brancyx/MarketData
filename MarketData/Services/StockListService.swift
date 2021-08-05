//
//  StockListService.swift
//  MarketData
//
//  Created by Charmaine Lim on 5/8/21.
//

import Foundation

class StockListService {
    
    func getTopStocks() -> [StockInfoModel] {
        return JsonParser.load("StockInfoData.json")
    }
    
    
}
