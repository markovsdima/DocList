import Foundation

final class NetworkService {
    static let shared = NetworkService()
    private init() {}
    
    // MARK: - Private Properties
    private let session = URLSession.shared
    private let decoder = JSONDecoder()
    private let mockServer = HomeViewMockData.shared
}
