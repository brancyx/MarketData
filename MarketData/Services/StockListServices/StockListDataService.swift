//
//  StockListDataService.swift
//  MarketData
//
//  Created by Charmaine Lim on 6/8/21.
//

import Foundation

class StockListDataService: StockListService {
    
    let url = URL(string: "http://localhost:8000/StockInfoData.json")!
    
    func getTopStocks(completion: @escaping (Result<[StockInfoModel], Error>) -> Void) {
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalCacheData
        config.urlCache = nil
        let session = URLSession.shared // Shared keyword: dont need to specify config. TODO: Read up on URLComponents.
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            // Show Response
            print(">>>>> Response Object: ",String(describing: response))
            
            // Ensure no errors
            guard error == nil else {
                print(">>>>> Error Object: ", String(describing: error))
                return
            }
            
            // Ensure data is present
            guard let data = data else {
                return
            }

            // Serialize the data into an object
            do {
                let decoder = JSONDecoder()
                let stocks: [StockInfoModel] = try decoder.decode([StockInfoModel].self, from: data)
                print(">>>>> Stocks Array: ", String(describing: stocks))
            } catch {
                print(">>>>> Serialization Error: ", String(describing: error))
            }
        })
        task.resume()
    }
    
    
}
