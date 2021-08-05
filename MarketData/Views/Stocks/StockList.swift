//
//  StockList.swift
//  MarketData
//
//  Created by Charmaine Lim on 4/8/21.
//

import SwiftUI

struct StockList: View {
    
    public var stocks: [StockInfo]
    
    var body: some View {
//        return List(stocks, rowContent: StockRow.init)
        List(stocks) { stock in
            StockRow(stock: stock)
        }
    }
}

struct StockList_Previews: PreviewProvider {
    
//    static let tradePrice = Amount(value: 650.00, currency: .usd)
//    static let actualChange = Amount(value: 0.00, currency: .usd)
//
//    static let price = PriceInfo(symbol: "TSLA", tradePrice: tradePrice, actualChange: actualChange, percentageChange: 10.00)
//    static let stock = StockInfo(name: "TESLA", symbol: "TSLA", imageURL: nil, priceInfo: price)
    
    //static let stocks = []
    
    
//    static func readLocalJSONFile(forName name: String) -> Data? {
//        do {
//            if let filePath = Bundle.main.path(forResource: name, ofType: "json") {
//                let fileUrl = URL(fileURLWithPath: filePath)
//                let data = try Data(contentsOf: fileUrl)
//                return data
//            }
//        } catch {
//            print("error: \(error)")
//        }
//        return nil
//    }
//    
//    struct user: Codable {
//        let userId: Int
//        let firstName: String
//        let lastName: String
//        let phoneNumber: String
//        let emailAddress: String
//    }
//    struct sampleRecord: Codable {
//        let users: [user]
//    }
//    
//    static func parse(jsonData: Data) -> sampleRecord? {
//        do {
//            let decodedData = try JSONDecoder().decode(sampleRecord.self, from: jsonData)
//            return decodedData
//        } catch {
//            print("error: \(error)")
//        }
//        return nil
//    }
    
    
    static func loopThrough() -> [StockInfo] {
        var stocks = [] as [StockInfo]
        // parse json file
        
        for n in 1...5 {
      // for-loop through json file
            let tradePrice = Amount(value: 650.00, currency: .usd)
            let actualChange = Amount(value: 0.00, currency: .usd)
            
            let price = PriceInfo(symbol: "TSLA", tradePrice: tradePrice, actualChange: actualChange, percentageChange: 10.00)
            let stock = StockInfo(name: "TESLA", symbol: "TSLA", imageURL: nil, priceInfo: price)
            stocks.append(stock)
        }
        return stocks
    }
      
    static var previews: some View {
        StockList(stocks: loopThrough())
    }
}
