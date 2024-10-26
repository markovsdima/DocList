import SwiftUI

struct DoctorInfoView: View {
    
    @State var doctorInfo: DoctorInfoModel = doctorInfoDemo
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        
        VStack(alignment: .leading) {
            CustomNavBar(title: "Педиатор", onBack: { dismiss() })
            
            HStack(spacing: 16) {
                AsyncImage(url: URL(string: doctorInfo.avatar)) { image in
                    image.image?
                        .resizable()
                        .scaledToFill()
                }
                .frame(width: 50, height: 50)
                .clipShape(.circle)
                
                Text(doctorInfo.fullName)
                    .font(.h4)
                    .foregroundStyle(.iBlack)
                    .lineSpacing(5)
                    .padding(.bottom, 4)
                Spacer()
            }
            .padding(.bottom, 20)
            .padding(.top, 4)
            
            HStack {
                Image(.seniority)
                Text("Опыт работы: \(doctorInfo.seniority) лет")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            HStack {
                Image(.scientificDegree)
                Text("\(doctorInfo.scientificDegreeLabel)")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            HStack {
                Image(.educationType)
                Text("\(doctorInfo.educationTypeLabel)")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            HStack {
                Image(.workplace)
                Text("\(doctorInfo.workplace)")
                    .font(.system(size: 14))
                    .foregroundStyle(.iDarkGray)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .fill(.iWhite)
                    .stroke(Color.iGray, lineWidth: 1)
                    .frame(height: 60)
                HStack {
                    Text("Стоимость услуг")
                        .font(.h4)
                    Spacer()
                    Text("от " + String(doctorInfo.textChatPrice ?? 0) + " ₽")
                        .font(.h4)
                }
                .foregroundStyle(.iBlack)
                .padding(.horizontal)
                .onTapGesture {
                    print("11111")
                }
            }
            .padding(.top, 16)
            
            Text(doctorInfo.description ?? "")
                .font(.system(size: 14))
                .foregroundStyle(.iBlack)
                .lineSpacing(10)
                .padding(.top, 20)
            
            
            Spacer()
            Button(action: {}) {
                Text("Записаться")
                    .font(.h4)
                    .frame(maxWidth: .infinity)
                
                
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
            .tint(.iPink)
            .padding(.bottom, 28)
        }
        .padding([.horizontal, .bottom])
        .background(Color(.iLightGray))
        .toolbar(.hidden, for: .navigationBar)
        
    }
}

#Preview {
    DoctorInfoView()
}
