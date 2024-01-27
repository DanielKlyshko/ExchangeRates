import Foundation
import Alamofire

final class NetworkManager {
    static let instance = NetworkManager()
    private init() {}
    let header: HTTPHeaders = [
        "X-CoinAPI-Key" : "0BBD8E04-411A-4D33-B39D-A4D129AE2EF2",
        "Accept": "text/plain"
    ]
    
    
    //MARK: - Base URL settings
    enum Constants {
        static let baseURL = "https://rest.coinapi.io/v1"
    }
    
    enum EndPoints {
        static let assets = "/assets"
        static let exchanges = "/exchanges"
    }
    
    //MARK: - Fetch coins data
    func getCoinsInfo(completion: @escaping ([Coins]) -> Void) {
        AF.request(Constants.baseURL + EndPoints.exchanges, headers: header).responseDecodable(of: [Coins].self) { response in
            switch response.result {
            case .success(let coins):
                completion(coins)
            case .failure(let failure):
                print(failure)
            }
        }
    }
    
}
