import Foundation

struct DocListResponse: Decodable, Equatable {
    let data: DocListData
}

struct DocListData: Decodable, Equatable {
    let users: [DocListUser]
}

struct DocListUser: Decodable, Equatable {
    let id: String
    let firstName: String?
    let patronymic: String?
    let lastName: String?
    let specialization: [DocSpecialization]?
    let ratingsRating: Float?
    let seniority: Int?
    let textChatPrice: Int?
    let videoChatPrice: Int?
    let homePrice: Int?
    let hospitalPrice: Int?
    let avatar: String?
    let nearestReceptionTime: Int?
    let higherEducation: [DocHigherEducation]?
    let scientificDegreeLabel: String?
    let isFavorite: Bool
    let workExperience: [WorkExperience]?
}

struct DocSpecialization: Decodable, Equatable {
    let id: Int
    let name: String
}

struct DocHigherEducation: Decodable, Equatable {
    let id: Int
    let university: String
}

struct WorkExperience: Decodable, Equatable {
    let id: Int
    let organization: String
    let position: String
}
