import Foundation

final class MockServer {
    static let shared = MockServer()
    private init() {}
    
    // MARK: - Private Properties
    private let emulatedDelayInSeconds: Double = 0.0
    
    // MARK: - Public Methods
    func getDocListData() async throws -> (Data, URLResponse) {
        guard let data = homeViewMockJson.data(using: .utf8) else {
            return (Data(), URLResponse())
        }
        
        try await Task.sleep(nanoseconds: secondsToNano(seconds: emulatedDelayInSeconds))
        
        return (data, URLResponse())
    }
    
    // MARK: - Private Methods
    private func secondsToNano(seconds: Double) -> UInt64 {
        return UInt64(seconds * 1_000_000_000)
    }
    
}

fileprivate let homeViewMockJson = """
{
  "count": 91,
  "previous": null,
  "message": "Success",
  "errors": null,
  "data": {
    "users": [
      {
        "id": "baf5c608-1d3f-47c3-954f-cc2ee8206db3",
        "slug": "_06db3",
        "first_name": "Андрей",
        "patronymic": "Сергеевич",
        "last_name": "Синявин",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 3,
        "text_chat_price": 0,
        "video_chat_price": 6,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [
          {
            "id": 854,
            "university": "литьии",
            "specialization": "тмоттр",
            "qualification": "иоитттт",
            "start_date": 1698796800,
            "end_date": 1700006400,
            "until_now": false,
            "is_moderated": true
          }
        ],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 0,
        "category_label": "нет",
        "is_favorite": true
      },
      {
        "id": "0ff8be76-c9ce-4283-8fa0-fd724646ec8a",
        "slug": "_6ec8a",
        "first_name": "Эльвира",
        "patronymic": "Григорьевна",
        "last_name": "Иванова",
        "gender": "0",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 100,
        "home_price": 1,
        "hospital_price": 1,
        "avatar": "https://media.istockphoto.com/id/1372002650/photo/cropped-portrait-of-an-attractive-young-female-doctor-standing-with-her-arms-folded-in-the.jpg?s=1024x1024&w=is&k=20&c=HwRi4NnrK9aKEC27BkXnJJfuggGABNmqnnmXL7D9aBs=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 0,
        "rank_label": "нет",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "2b90c7ac-b588-4f12-9e89-99cbf4c33564",
        "slug": "_33564",
        "first_name": "Борис",
        "patronymic": "Анатольевич",
        "last_name": "Борисов",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [
          {
            "id": 1,
            "name": "Акушер",
            "is_moderated": true
          },
          {
            "id": 38,
            "name": "ЛОР (Оториноларинголог)",
            "is_moderated": true
          },
          {
            "id": 2,
            "name": "Аллерголог",
            "is_moderated": true
          },
          {
            "id": 4,
            "name": "Андролог",
            "is_moderated": true
          }
        ],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 2.5
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 2.5,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 11111,
        "home_price": 10,
        "hospital_price": 1,
        "avatar": "https://media.istockphoto.com/id/1346124900/photo/confident-successful-mature-doctor-at-hospital.jpg?s=1024x1024&w=is&k=20&c=YEbzhy_uH_NtBJodMt42qM8aoypw2ufHEW9Zbn_Py4c=",
        "nearest_reception_time": 1700490600,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [
          {
            "id": 852,
            "university": "алт",
            "specialization": "опоо",
            "qualification": "омро",
            "start_date": 1698796800,
            "end_date": 1700092800,
            "until_now": false,
            "is_moderated": true
          },
          {
            "id": 853,
            "university": "рпро",
            "specialization": "поиоо",
            "qualification": "ргог",
            "start_date": 1698796800,
            "end_date": 1700092800,
            "until_now": false,
            "is_moderated": true
          },
          {
            "id": 834,
            "university": "12121212====333",
            "specialization": "1121212",
            "qualification": "12121212",
            "start_date": 1230768000,
            "end_date": 1230768000,
            "until_now": false,
            "is_moderated": true
          }
        ],
        "work_expirience": [
          {
            "id": 487,
            "organization": "Ооо",
            "position": "Роо",
            "start_date": 4070908800,
            "end_date": 1230768000,
            "until_now": true,
            "is_moderated": true
          }
        ],
        "advanced_training": [],
        "rank": 0,
        "rank_label": "нет",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 2,
        "category_label": "первая",
        "is_favorite": false
      },
      {
        "id": "4b86d20f-aa71-4f10-acee-0f55f0b2c8ca",
        "slug": "tsedrik_Andrej_2c8ca",
        "first_name": "Андрей",
        "patronymic": "",
        "last_name": "Цедрик",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 10000,
        "home_price": 1,
        "hospital_price": 1,
        "avatar": "https://media.istockphoto.com/id/1327024466/photo/portrait-of-male-doctor-in-white-coat-and-stethoscope-standing-in-clinic-hall.jpg?s=1024x1024&w=is&k=20&c=9dGjXLWwRAimcACr0jOZDmmLcH0P29fi2ibKunQ6xpo=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 0,
        "rank_label": "нет",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "f6b588c4-b60e-4b65-84e0-8d54f383c754",
        "slug": "_3c754",
        "first_name": "Лана",
        "patronymic": "",
        "last_name": "Махно",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 0,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "b3e4c437-e9fd-4835-b206-7a604e6bb4ce",
        "slug": "_bb4ce",
        "first_name": "Анна",
        "patronymic": "Александровна",
        "last_name": "Евграфова",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 10,
        "home_price": 10,
        "hospital_price": 10,
        "avatar": "https://media.istockphoto.com/id/1346711310/photo/portrait-of-smiling-female-doctor-wearing-uniform-standing.jpg?s=1024x1024&w=is&k=20&c=Kir6D3kfw4XzIbarncN3AAJNwYOS8LYS2mlNGHv3tbA=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 0,
        "rank_label": "нет",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "2584980a-5f5f-42a9-992b-cc30abb2a08a",
        "slug": "_2a08a",
        "first_name": "Денис",
        "patronymic": "",
        "last_name": "Морозов",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 0,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "4f572ceb-e3d3-412d-8a7d-4e9ed8381af3",
        "slug": "_81af3",
        "first_name": "Наталья",
        "patronymic": "Артемовна",
        "last_name": "Иванова",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 0,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/1292777576/photo/doctor-clicking-on-a-laptop-before-her.jpg?s=1024x1024&w=is&k=20&c=gaIXOmSFv4YDK6UCyK_5m1OQvxhhkvpOzn46ovO2ALk=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "19cd5b0d-670a-4af5-b257-b69573f861f9",
        "slug": "_861f9",
        "first_name": "Пилюлькин",
        "patronymic": "Петрович",
        "last_name": "Доктор",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [
          {
            "id": 1,
            "name": "Акушер",
            "is_moderated": true
          }
        ],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 3,
        "text_chat_price": 5000,
        "video_chat_price": 20000,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": {
          "id": 69,
          "name": "Ставропольский государственный медицинский университет"
        },
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [
          {
            "id": 343,
            "organization": "Мгимо",
            "position": "мамолог",
            "end_date": 1264982400,
            "file": "/media/media/certificate/certificate.txt",
            "is_moderated": true
          }
        ],
        "rank": 1,
        "rank_label": "доцент",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "7bc7fd9e-7b91-45bf-9bd6-e26d1141e95f",
        "slug": "_1e95f",
        "first_name": "TestSVN",
        "patronymic": "TestSVO",
        "last_name": "TestSVF",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [
          {
            "id": 1,
            "name": "Акушер",
            "is_moderated": true
          }
        ],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 1,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "763b9b8c-7145-4e1a-b4c9-90cd310ad553",
        "slug": "_ad553",
        "first_name": "Сергей",
        "patronymic": "Алексеевич",
        "last_name": "Гопоненко",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 10,
        "text_chat_price": 0,
        "video_chat_price": 0,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [
          {
            "id": 326,
            "organization": "Больница 1",
            "position": "Терапевт",
            "start_date": 1661126400,
            "end_date": null,
            "until_now": true,
            "is_moderated": true
          },
          {
            "id": 327,
            "organization": "Больница 2",
            "position": "Хирург",
            "start_date": 1659916800,
            "end_date": null,
            "until_now": true,
            "is_moderated": true
          }
        ],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "d95b0b18-e337-46db-8c78-da9c4ef5e153",
        "slug": "_5e153",
        "first_name": "Влад",
        "patronymic": "Дата",
        "last_name": "Один",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 1000,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/1292777576/photo/doctor-clicking-on-a-laptop-before-her.jpg?s=1024x1024&w=is&k=20&c=gaIXOmSFv4YDK6UCyK_5m1OQvxhhkvpOzn46ovO2ALk=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 2,
        "category_label": "первая",
        "is_favorite": false
      },
      {
        "id": "b35ea8c3-12dd-4c15-bac6-41d1d6cb61a4",
        "slug": "Ivanov_Ivan_Ivanovich_b61a4",
        "first_name": "Василий",
        "patronymic": "Александрович",
        "last_name": "Пикулин",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 1234,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/668598078/photo/cheerful-doctor-posing.jpg?s=1024x1024&w=is&k=20&c=ecnjlrr16IzM5Fa06KJo0N4Gak9Eod_92_MLhlHm7Vg=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 1,
        "category_label": "вторая",
        "is_favorite": false
      },
      {
        "id": "417abd5c-a4e5-4037-bdb0-d3374d6d67c5",
        "slug": "Bondar'_Anna_Vladimirovna_d67c5",
        "first_name": "Анна",
        "patronymic": "Владимировна",
        "last_name": "Бондарь",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 4
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 5
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 5
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 5
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 5
          }
        ],
        "ratings_rating": 4,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 1000,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/1323303738/photo/medical-doctor-indoors-portraits.jpg?s=1024x1024&w=is&k=20&c=Geuc9vlwj-eHaOiyv6a5xaptQ9jM58ADjYwapPziFUI=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "9428b2ca-8ea4-45a7-b1ff-c780a5a8aedf",
        "slug": "Val'chik_Tat'jana_Pavlovna_8aedf",
        "first_name": "ТатьянаВальчикВальчикВальчикВа",
        "patronymic": "ПавловнаВальчикВальчикВальчикВ",
        "last_name": "ВальчикВальчикВальчикВальчикмВ",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 1500,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/1305333546/photo/smiling-professional-female-doctor-taking-notes-looking-at-laptop-screen.jpg?s=1024x1024&w=is&k=20&c=q7XTKaHlpXVC7N6RWIM8GH1SfN4EgojOcsf1bPX0TNc=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      },
      {
        "id": "55ddef68-3433-40c5-ad7c-25c5cc083c67",
        "slug": "Kuchuk_Irina_Dmitrievna_83c67",
        "first_name": "Ирина",
        "patronymic": "Дмитриевна",
        "last_name": "Кучук",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 10,
        "text_chat_price": 0,
        "video_chat_price": 2000,
        "home_price": 1,
        "hospital_price": 1,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 0,
        "rank_label": "нет",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "b50b9e62-b6d4-4a90-a19f-45cb1f7e8cac",
        "slug": "Ivanov_Ivan_Vasil'evich_e8cac",
        "first_name": "Иван",
        "patronymic": "Васильевич",
        "last_name": "Иванов",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [
          {
            "id": 1,
            "name": "Акушер",
            "is_moderated": true
          }
        ],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 19,
        "text_chat_price": 0,
        "video_chat_price": 1,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "13ebcb36-f793-4f0e-931a-1efd709844d9",
        "slug": "Logopedovich_Denis_Sthutdbb_844d9",
        "first_name": "Денис",
        "patronymic": "Сthutdbb",
        "last_name": "Логопедович",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 5.1
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 5.1,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 6667,
        "home_price": 1,
        "hospital_price": 1,
        "avatar": "https://media.istockphoto.com/id/1342708859/photo/portrait-of-a-male-doctor.jpg?s=1024x1024&w=is&k=20&c=bkXwg78z_kxDfKGoFqYHavpvWNE0qYfB6kaqwLt4lsI=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 1,
        "rank_label": "доцент",
        "scientific_degree": 2,
        "scientific_degree_label": "доктор медицинских наук",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "47d20399-4492-4232-9b3b-d474d33d94c3",
        "slug": "Doktorov_Pavel_Olegovich_d94c3",
        "first_name": "Иван",
        "patronymic": "Иванович",
        "last_name": "Петров",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [
          {
            "id": 2,
            "name": "Аллерголог",
            "is_moderated": true
          }
        ],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 4.3
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 4.3,
        "seniority": 0,
        "text_chat_price": 666,
        "video_chat_price": 666,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/1364917551/photo/handsome-doctor-smiling-and-standing-on-white-background.jpg?s=1024x1024&w=is&k=20&c=5xNr_EE-TjE2MudTVoSX8ikX-BnfiksrIBYUouLcs2E=",
        "nearest_reception_time": 1700598600,
        "free_reception_time": [
          {
            "time": 1700598600
          },
          {
            "time": 1700803800
          },
          {
            "time": 1700856000
          }
        ],
        "education_type_label": {
          "id": 1,
          "name": "Алтайский государственный медицинский университет"
        },
        "higher_education": [
          {
            "id": 651,
            "university": "Башкирский государственный медицинский университет",
            "specialization": "в",
            "qualification": "в",
            "start_date": 7952342400,
            "end_date": 7952342400,
            "until_now": false,
            "is_moderated": true
          }
        ],
        "work_expirience": [
          {
            "id": 336,
            "organization": "rккккddddddddddddd",
            "position": "rаааа",
            "start_date": -24298876800,
            "end_date": 7983878400,
            "until_now": false,
            "is_moderated": true
          },
          {
            "id": 475,
            "organization": "string",
            "position": "string",
            "start_date": 0,
            "end_date": 0,
            "until_now": true,
            "is_moderated": true
          },
          {
            "id": 345,
            "organization": "емЧипсы",
            "position": "наДиване",
            "start_date": 1104537600,
            "end_date": 1104537600,
            "until_now": true,
            "is_moderated": true
          }
        ],
        "advanced_training": [
          {
            "id": 397,
            "organization": "s",
            "position": "s",
            "end_date": -27107481600,
            "file": "/media/media/certificate/certificate.txt",
            "is_moderated": true
          }
        ],
        "rank": 0,
        "rank_label": "нет",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 0,
        "category_label": "нет",
        "is_favorite": false
      },
      {
        "id": "34bbddef-7bf0-423b-b7dc-559183aa47a2",
        "slug": "Denisenko_Anton_Anatol'evich_a47a2",
        "first_name": "Антон",
        "patronymic": "Анатольевич",
        "last_name": "Денисенков",
        "gender": "0",
        "gender_label": "Мужчина",
        "specialization": [
          {
            "id": 47,
            "name": "Невролог",
            "is_moderated": true
          },
          {
            "id": 2,
            "name": "Аллерголог",
            "is_moderated": true
          },
          {
            "id": 11,
            "name": "Врач общей практики",
            "is_moderated": true
          }
        ],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 4.5
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 4.5,
        "seniority": 9,
        "text_chat_price": 555,
        "video_chat_price": 100,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": "https://media.istockphoto.com/id/1470505351/photo/portrait-of-a-smiling-doctor-holding-glasses-and-a-mobile-phone-at-the-office.jpg?s=1024x1024&w=is&k=20&c=7qEjVevQHDkL8dPHuwJ3uRVGH4uOOljLhCtSq4vsA-Q=",
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": {
          "id": 5,
          "name": "Башкирский государственный медицинский университет"
        },
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 1,
        "rank_label": "доцент",
        "scientific_degree": 1,
        "scientific_degree_label": "кандидат медицинских наук",
        "category": 1,
        "category_label": "вторая",
        "is_favorite": false
      },
      {
        "id": "11cb274b-bc68-4441-9d9f-0b66a0295314",
        "slug": "Dorofeev_Ignat_Aslanovich_95314",
        "first_name": "Игнат",
        "patronymic": "Асланович",
        "last_name": "Дорофеев",
        "gender": "1",
        "gender_label": "Женщина",
        "specialization": [],
        "ratings": [
          {
            "id": 1,
            "name": "Рейтинг",
            "value": 0
          },
          {
            "id": 2,
            "name": "Пунктуальность",
            "value": 0
          },
          {
            "id": 3,
            "name": "Внимательность",
            "value": 0
          },
          {
            "id": 4,
            "name": "Профессионализм",
            "value": 0
          },
          {
            "id": 5,
            "name": "Ответственность",
            "value": 0
          }
        ],
        "ratings_rating": 0,
        "seniority": 0,
        "text_chat_price": 0,
        "video_chat_price": 897,
        "home_price": 0,
        "hospital_price": 0,
        "avatar": null,
        "nearest_reception_time": null,
        "free_reception_time": [],
        "education_type_label": null,
        "higher_education": [],
        "work_expirience": [],
        "advanced_training": [],
        "rank": 4,
        "rank_label": "4",
        "scientific_degree": 0,
        "scientific_degree_label": "нет",
        "category": 3,
        "category_label": "высшая",
        "is_favorite": false
      }
    ]
  }
}

"""
