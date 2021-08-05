//
//  StockListViewModel.swift
//  MarketData
//
//  Created by Charmaine Lim on 5/8/21.
//

import Foundation

class StockListViewModel: ObservableObject {
    
    @Published var stocks: [StockInfoModel] = JsonParser.load("StockInfoData.json")
    
}
