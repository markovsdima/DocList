import SwiftUI

struct DoctorInfoView: View {
    
    @State var doctorInfo: DoctorInfoModel = doctorInfoDemo
    
    var body: some View {
        VStack(alignment: .leading) {
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
                    .lineSpacing(5)
                    .padding(.bottom, 4)
                Spacer()
            }
            .padding(.bottom, 20)
            
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
                .padding(.horizontal)
                .onTapGesture {
                    print("11111")
                }
            }
            .padding(.top, 16)
            
            Text(doctorInfo.description ?? "")
                .font(.system(size: 14))
                .lineSpacing(10)
                .padding(.top, 20)
            
            
            Spacer()
        }
        .padding()
        .background(Color(.iLightGray))
        
    }
}

#Preview {
    DoctorInfoView()
}
