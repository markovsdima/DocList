import SwiftUI

struct CustomNavBar: View {
    let title: String
    let onBack: () -> Void
    
    var body: some View {
        ZStack(alignment: .leading) {
            HStack {
                Spacer()
                Text(title)
                    .font(.h3)
                    .foregroundStyle(.iBlack)
                Spacer()
            }
            Button(action: { onBack() }) {
                Image(.backButton)
                
                
            }
        }
        .padding(.top, 12.5)
        .padding(.bottom, 24)
        .background(.iLightGray)
    }
}

#Preview {
    CustomNavBar(title: "Заголовок", onBack: {})
}
