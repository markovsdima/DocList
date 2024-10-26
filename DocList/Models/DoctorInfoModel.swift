import Foundation

struct DoctorInfoModel: Identifiable, Hashable {
    let id: String
    let fullName: String
    let avatar: String
    let seniority: Int
    let scientificDegreeLabel : String
    let educationTypeLabel: String
    let workplace: String
    let videoChatPrice: Int?
    let textChatPrice: Int?
    let hospitalPrice: Int?
    let homePrice: Int?
    let description: String?
    let receptionAvailable: Bool
}

let doctorInfoDemo: DoctorInfoModel = DoctorInfoModel(
    id: "123demo",
    fullName: "Семенова\nДарья Сергеевна",
    avatar: "https://media.istockphoto.com/id/1346124900/photo/confident-successful-mature-doctor-at-hospital.jpg?s=1024x1024&w=is&k=20&c=YEbzhy_uH_NtBJodMt42qM8aoypw2ufHEW9Zbn_Py4c=",
    seniority: 27,
    scientificDegreeLabel: "Врач высшей категории",
    educationTypeLabel: "1-й ММИ им. И.М.Сеченова",
    workplace: "Детская клиника “РебёнОК”",
    videoChatPrice: 1000,
    textChatPrice: 600,
    hospitalPrice: 1500,
    homePrice: 1000,
    description: "Проводит диагностику и лечение терапевтических больных. Осуществляет расшифровку и снятие ЭКГ. Дает рекомендации по диетологии. Доктор имеет опыт работы в России и зарубежом. Проводит консультации пациентов на английском языке.",
    receptionAvailable: true)
