import SwiftUI

struct DoctorInfoView: View {
    
    @State var doctor: DoctorCellModel
    @State var doctorInfo: DoctorInfoModel = doctorInfoDemo
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack(alignment: .leading) {
            CustomNavBar(title: "Педиатор", onBack: { dismiss() })
            
            HStack(spacing: 16) {
                AsyncImage(url: URL(string: doctor.avatar)) { image in
                    image.image?
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 50, height: 50)
                .clipShape(.circle)
                
                Text(doctor.fullName)
                    .font(.h4)
                    .foregroundStyle(.iBlack)
                    .lineSpacing(5)
                
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.top, 4)
            
            HStack {
                Image(.seniority)
                Text("Опыт работы: \(yearsText(for: doctor.seniority))")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            HStack {
                Image(.scientificDegree)
                Text("\(doctor.scientificDegreeLabel)")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            HStack {
                Image(.educationType)
                Text("\(doctor.educationTypeLabel)")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            HStack {
                Image(.workplace)
                Text("\(doctor.workplace)")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            
            NavigationLink(destination: PricesView(doctor: doctor)) {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.iWhite)
                        .stroke(Color.iGray, lineWidth: 1)
                        .frame(height: 60)
                    HStack {
                        Text("Стоимость услуг")
                            .font(.h4)
                        Spacer()
                        Text("от " + String(doctor.price) + " ₽")
                            .font(.h4)
                    }
                    .foregroundStyle(.iBlack)
                    .padding(.horizontal)
                }
                
            }
            .buttonStyle(PlainButtonStyle())
            .padding(.top, 16)
            
            
            Text(doctorInfo.description ?? "")
                .font(.system(size: 14))
                .foregroundStyle(.iBlack)
                .lineSpacing(10)
                .padding(.top, 20)
            
            
            Spacer()
            Button(action: {}) {
                Text(doctor.receptionAvailable ? "Записаться" : "Нет свободного расписания")
                    .font(.h4)
                    .foregroundStyle(doctor.receptionAvailable ? .iWhite : .iBlack)
                    .frame(maxWidth: .infinity)
                
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(doctor.receptionAvailable ? .iPink : .iGray)
            .padding(.bottom, 28)
        }
        .padding([.horizontal, .bottom])
        .background(Color(.iLightGray))
        .toolbar(.hidden, for: .navigationBar)
        
    }
}

#Preview {
    DoctorInfoView(doctor: doctorCellDemo)
}
