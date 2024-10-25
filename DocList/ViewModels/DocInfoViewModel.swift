import Foundation

final class DocInfoViewModel: ObservableObject {
    
    enum State {
        case loading
        case content
        case error
    }
    
    private let networkService = NetworkService.shared
    
    @Published var state: State = .loading
    
}
