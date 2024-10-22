import Foundation

struct DoctorCellModel: Identifiable, Hashable {
    let id: String
    let fullName: String
    let specialization: String
    let rating: Float
    let seniority: Int
    let price: Int
    let receptionAvailable: Bool
    let liked: Bool
    let avatar: String
}

let doctorsListMock: [DoctorCellModel] = [
    DoctorCellModel(
        id: "2b90c7ac-b588-4f12-9e89-99cbf4c33564",
        fullName: "Борис Анатольевич Борисов",
        specialization: "Акушер",
        rating: 2.5,
        seniority: 5,
        price: 2500,
        receptionAvailable: true,
        liked: false,
        avatar: "https://media.istockphoto.com/id/1346124900/photo/confident-successful-mature-doctor-at-hospital.jpg?s=1024x1024&w=is&k=20&c=YEbzhy_uH_NtBJodMt42qM8aoypw2ufHEW9Zbn_Py4c="
    ),
    DoctorCellModel(
        id: "2b90c7ac-b588-4f12-9e89-99cbf4453564",
        fullName: "Борис Анатольевич Борисов",
        specialization: "Акушер",
        rating: 2.5,
        seniority: 5,
        price: 3500,
        receptionAvailable: true,
        liked: false,
        avatar: "https://media.istockphoto.com/id/1346124900/photo/confident-successful-mature-doctor-at-hospital.jpg?s=1024x1024&w=is&k=20&c=YEbzhy_uH_NtBJodMt42qM8aoypw2ufHEW9Zbn_Py4c="
    ),
    DoctorCellModel(
        id: "2b90c7ac-b588-4f12-9e89-99cbf4c33567",
        fullName: "Борис Анатольевич Борисов",
        specialization: "Акушер",
        rating: 2.5,
        seniority: 5,
        price: 2500,
        receptionAvailable: true,
        liked: false,
        avatar: "https://media.istockphoto.com/id/1346124900/photo/confident-successful-mature-doctor-at-hospital.jpg?s=1024x1024&w=is&k=20&c=YEbzhy_uH_NtBJodMt42qM8aoypw2ufHEW9Zbn_Py4c="
    )
]

let doctorCellDemo: DoctorCellModel = DoctorCellModel(
    id: "2b90c7ac-b588-4f12-9e89-99cbf4c33564",
    fullName: "Синявин \nАндрей Сергеевич",
    specialization: "Акушер",
    rating: 2.5,
    seniority: 5,
    price: 2500,
    receptionAvailable: true,
    liked: false,
    avatar: "https://media.istockphoto.com/id/1346124900/photo/confident-successful-mature-doctor-at-hospital.jpg?s=1024x1024&w=is&k=20&c=YEbzhy_uH_NtBJodMt42qM8aoypw2ufHEW9Zbn_Py4c="
)
