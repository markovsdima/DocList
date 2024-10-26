import SwiftUI

struct PricesView: View {
    
    @Environment(\.dismiss) private var dismiss
    
    @State var doctor: DoctorModel
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomNavBar(title: "Стоимость услуг", onBack: { dismiss() })
            
            if (doctor.videoChatPrice != nil) && doctor.videoChatPrice != 0 {
                Text("Видеоконсультация")
                    .font(.h4)
                    .foregroundStyle(.iBlack)
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.iWhite)
                        .stroke(Color.iGray, lineWidth: 1)
                        .frame(height: 60)
                    HStack {
                        Text("30 мин")
                            .font(.h4)
                        Spacer()
                        Text("от " + String(doctor.videoChatPrice ?? 0) + " ₽")
                            .font(.h4)
                    }
                    .foregroundStyle(.iBlack)
                    .padding(.horizontal)
                }
                .padding(.top, 6)
                .padding(.bottom, 24)
            }
            
            if (doctor.textChatPrice != nil) && doctor.textChatPrice != 0 {
                Text("Чат с врачом")
                    .font(.h4)
                    .foregroundStyle(.iBlack)
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.iWhite)
                        .stroke(Color.iGray, lineWidth: 1)
                        .frame(height: 60)
                    HStack {
                        Text("30 мин")
                            .font(.h4)
                        Spacer()
                        Text("от " + String(doctor.textChatPrice ?? 0) + " ₽")
                            .font(.h4)
                    }
                    .foregroundStyle(.iBlack)
                    .padding(.horizontal)
                }
                .padding(.top, 6)
                .padding(.bottom, 24)
            }
            
            if (doctor.hospitalPrice != nil) && doctor.hospitalPrice != 0 {
                Text("Прием в клинике")
                    .font(.h4)
                    .foregroundStyle(.iBlack)
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.iWhite)
                        .stroke(Color.iGray, lineWidth: 1)
                        .frame(height: 60)
                    HStack {
                        Text("30 мин")
                            .font(.h4)
                        Spacer()
                        Text("от " + String(doctor.hospitalPrice ?? 0) + " ₽")
                            .font(.h4)
                    }
                    .foregroundStyle(.iBlack)
                    .padding(.horizontal)
                }
                .padding(.top, 6)
                .padding(.bottom, 24)
            }
            
            if (doctor.homePrice != nil) && doctor.homePrice != 0 {
                Text("Прием на дому")
                    .font(.h4)
                    .foregroundStyle(.iBlack)
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.iWhite)
                        .stroke(Color.iGray, lineWidth: 1)
                        .frame(height: 60)
                    HStack {
                        Text("30 мин")
                            .font(.h4)
                        Spacer()
                        Text("от " + String(doctor.homePrice ?? 0) + " ₽")
                            .font(.h4)
                    }
                    .foregroundStyle(.iBlack)
                    .padding(.horizontal)
                }
                .padding(.top, 6)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .background(.iLightGray)
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    PricesView(doctor: doctorCellDemo)
}
