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
    @Published var chatMessagesCount = 3
    @Published var searchText: String = ""
    @Published var sortType: SortType = .rating
    
    // Отсортированный и отфильтрованный список докторов
        var sortedAndFilteredDoctors: [DoctorCellModel] {
            let sortedDoctors = sortDoctors(doctors)
            
            if searchText.isEmpty {
                return sortedDoctors
            } else {
                return sortedDoctors.filter { $0.fullName.lowercased().contains(searchText.lowercased()) }
            }
        }
        
        // Функция сортировки докторов в зависимости от выбранного типа сортировки
    private func sortDoctors(_ doctors: [DoctorCellModel]) -> [DoctorCellModel] {
        switch sortType {
        case .priceAsc:
            return doctors.sorted { (doc1: DoctorCellModel, doc2: DoctorCellModel) in
                doc1.price < doc2.price
            }
        case .priceDesc:
            return doctors.sorted { (doc1: DoctorCellModel, doc2: DoctorCellModel) in
                doc1.price > doc2.price
            }
        case .seniority:
            return doctors.sorted { (doc1: DoctorCellModel, doc2: DoctorCellModel) in
                doc1.seniority > doc2.seniority
            }
        case .rating:
            return doctors.sorted { (doc1: DoctorCellModel, doc2: DoctorCellModel) in
                doc1.rating > doc2.rating
            }
        }
    }

    
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
