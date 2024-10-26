import Foundation

enum NetworkServiceError: Error {
    case emptyResponse
}

final class NetworkService {
    static let shared = NetworkService()
    private init() {}
    
    // MARK: - Private Properties
    private let session = URLSession.shared
    private let decoder = JSONDecoder()
    
    private let mockServer = MockServer.shared
    
    // MARK: - Public Methods
    func getDocListFromResponse() async throws -> [DoctorCellModel] {
        let response: (Data, URLResponse)
        
        response = try await mockServer.getDocListData()
        
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let decodedResponse = try? decoder.decode(
            DocListResponse.self,
            from: response.0
        )
        
        guard decodedResponse != nil else {
            throw NetworkServiceError.emptyResponse
        }
        
        guard let doctors = convertDocList(response: decodedResponse) else { return [] }
        
        return doctors
    }
    
    
    // MARK: - Private Methods
    private func convertDocList(response: DocListResponse?) -> [DoctorCellModel]? {
        var doctors: [DoctorCellModel] = []
        guard let response else { return nil }
        
        
        
        doctors = response.data.users.map { doctor in
            
            let prices = [
                doctor.videoChatPrice,
                doctor.textChatPrice,
                doctor.hospitalPrice,
                doctor.homePrice
            ].compactMap { $0 }.filter { $0 > 0 }
            
            let minPrice = prices.min() ?? 0
            
            return DoctorCellModel(
                id: doctor.id,
                fullName: "\(doctor.lastName ?? "")\n\(doctor.firstName ?? "") \(doctor.patronymic ?? "")",
                specialization: doctor.specialization?.first?.name ?? "",
                rating: doctor.ratingsRating ?? 0,
                seniority: doctor.seniority ?? 0,
                price: minPrice,
                videoChatPrice: doctor.videoChatPrice,
                textChatPrice: doctor.textChatPrice,
                hospitalPrice: doctor.hospitalPrice,
                homePrice: doctor.homePrice,
                receptionAvailable: (doctor.nearestReceptionTime != nil) ? true : false,
                liked: doctor.isFavorite,
                avatar: doctor.avatar ?? "",
                scientificDegreeLabel: doctor.scientificDegreeLabel ?? "",
                educationTypeLabel: doctor.higherEducation?.first?.university ?? "",
                workplace: doctor.workExperience?.first?.organization ?? ""
                
            )
        }
        
        return doctors
    }
}
