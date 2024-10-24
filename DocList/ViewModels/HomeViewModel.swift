import Foundation

final class HomeViewModel: ObservableObject {
    
    enum State {
        case loading
        case content
        case error
    }
    
    private let networkService = NetworkService.shared
    
    @Published var state: State = .loading
    @Published var doctors = doctorsListMock
    
    
    
    
    func fetchDocList() async {
        do {
            DispatchQueue.main.async {
                self.state = .loading
            }
            
            let fetchedDoctors = try await networkService.getDocListFromResponse()
            
            DispatchQueue.main.async {
                self.doctors = fetchedDoctors
                self.state = .content
            }
        } catch {
            DispatchQueue.main.async {
                self.state = .error
            }
        }
    }
    
    func fetchDoc(with id: Int) async throws {
        
    }
    
    
}
