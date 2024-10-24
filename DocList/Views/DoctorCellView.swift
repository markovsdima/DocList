import SwiftUI

struct DoctorCellView: View {
    var doctor = doctorCellDemo
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 8)
                .fill(Color.white)
                .stroke(Color.iGray, lineWidth: 1)
                
            VStack(alignment: .leading) {
                HStack(alignment: .top) {
                    
                    AsyncImage(url: URL(string: doctor.avatar)) { image in
                        image.image?
                            .resizable()
                            .scaledToFill()
                    }
                        .frame(width: 50, height: 50)
                        .clipShape(.circle)
                    
                    
                    VStack(alignment: .leading) {
                        Text(doctor.fullName)
                            .font(.h4)
                            
                        RatingView()
                        
                        Text("\(doctor.specialization)" + "・" + "стаж \(doctor.seniority) лет")
                            .font(.sub2)
                            .foregroundStyle(.iDarkGray)
                            //.padding(.top, 8)
                        Text("от \(String(doctor.price)) ₽")
                            .font(.h4)
                            .padding(.top, 8)
                            .padding(.bottom, 8)
                        
                    }
                    .padding(.leading)
                    
                    Spacer()
                    Button(action: {}) {
                        Image(systemName: "heart")
                            .resizable()
                            .tint(.iSilver)
                            
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                    }
                }
                
                Button(action: {}) {
                    Text("Записаться")
                        .font(.h4)
                        .frame(maxWidth: .infinity)
                        
                        
                }
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                .tint(.iPink)
            }
            .padding()
            .padding(.top, 4) // 16 + 4
        }
        .padding(.leading)
        .padding(.trailing)
        .fixedSize(horizontal: false, vertical: true)
        
    }
}

#Preview {
    DoctorCellView()
}

struct RatingView: View {
    var rating: Int = 4
    let maximumRating = 5
    let onColor = Color.iPink
    let offColor = Color.iDarkGray
    
    var body: some View {
        HStack(spacing: 2.5) {
            ForEach(1 ..< maximumRating + 1, id:\.self) { number in
                Image(.ratingStar)
                    .renderingMode(.template)
                    .foregroundColor(number <= rating ? onColor : offColor)
                
            }
        }
        .padding(.bottom, 8)
        .padding(.top, 8)
    }
}
