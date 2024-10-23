import Foundation

final class HomeViewModel: ObservableObject {
    
    enum State {
        case loading
        case content
        case error
    }
    
    @Published var state: State = .loading
    
    @Published var doctors = doctorsListMock
    
    
    
    func fetchDocs() async throws {
        
    }
}
