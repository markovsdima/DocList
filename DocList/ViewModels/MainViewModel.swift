import Foundation

final class MainViewModel: ObservableObject {
    
    // MARK: - Public properties
    @Published var state: State = .loading
    @Published var doctors: [DoctorModel] = []
    @Published var chatMessagesCount = 3
    @Published var searchText: String = ""
    @Published var sortType: SortType = .priceDesc
    
    enum State {
        case loading
        case content
        case error
    }
    
    var sortedAndFilteredDoctors: [DoctorModel] {
        let sortedDoctors = sortDoctors(doctors)
        
        if searchText.isEmpty {
            return sortedDoctors
        } else {
            return sortedDoctors.filter { $0.fullName.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    // MARK: - Private properties
    private let networkService = NetworkService.shared
    
    // MARK: - Public methods
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
    
    // MARK: - Private methods
    private func sortDoctors(_ doctors: [DoctorModel]) -> [DoctorModel] {
        switch sortType {
        case .priceAsc:
            return doctors.sorted { (doc1: DoctorModel, doc2: DoctorModel) in
                doc1.price < doc2.price
            }
        case .priceDesc:
            return doctors.sorted { (doc1: DoctorModel, doc2: DoctorModel) in
                doc1.price > doc2.price
            }
        case .seniority:
            return doctors.sorted { (doc1: DoctorModel, doc2: DoctorModel) in
                doc1.seniority > doc2.seniority
            }
        case .rating:
            return doctors.sorted { (doc1: DoctorModel, doc2: DoctorModel) in
                doc1.rating > doc2.rating
            }
        }
    }
    
}
