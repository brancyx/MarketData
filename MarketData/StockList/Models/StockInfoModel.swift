//
//  StockInfo.swift
//  MarketData
//
//  Created by Charmaine Lim on 4/8/21.
//

import Foundation


public struct StockInfoModel: Identifiable, Codable {
    
  public var id: String { symbol }
  public var name: String
  public var symbol: String
  public var imageURL: String?
  public var priceInfo: PriceInfo
    
}
