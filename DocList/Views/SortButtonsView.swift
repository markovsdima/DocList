import SwiftUI

struct SortButtonsView: View {
    
    @Binding var selectedSort: SortType
    
    var body: some View {
        HStack(spacing: 0) {
            // По цене
            ZStack {
                Rectangle()
                    .fill(selectedSort == .priceAsc || selectedSort == .priceDesc ? .iPink : .iWhite)
                HStack(spacing: 6) {
                    Text("По цене")
                        .foregroundStyle(selectedSort == .priceAsc || selectedSort == .priceDesc ? .iWhite : .iDarkGray)
                        .font(selectedSort == .priceAsc || selectedSort == .priceDesc ? .system(size: 14, weight: .semibold) : .sub2)
                    if selectedSort == .priceAsc || selectedSort == .priceDesc {
                        Image(.arrowDown)
                            .rotationEffect(selectedSort == .priceAsc ? .degrees(180) : .degrees(0))
                    }
                }
                
            }
            .onTapGesture {
                if selectedSort == .priceAsc {
                    selectedSort = .priceDesc
                } else if selectedSort == .priceDesc {
                    selectedSort = .priceAsc
                } else {
                    selectedSort = .priceDesc
                }
            }
            
            Divider()
                .background(.iGray)
            
            // По стажу
            ZStack {
                Rectangle()
                    .fill(selectedSort == .seniority ? .iPink : .iWhite)
                Text("По стажу")
                    .foregroundStyle(selectedSort == .seniority ? .iWhite : .iDarkGray)
                    .font(selectedSort == .seniority ? .system(size: 14, weight: .semibold) : .sub2)
            }
            .onTapGesture {
                selectedSort = .seniority
            }
            
            Divider()
                .background(.iGray)
            
            // По рейтингу
            ZStack {
                Rectangle()
                    .fill(selectedSort == .rating ? .iPink : .iWhite)
                Text("По рейтингу")
                    .foregroundStyle(selectedSort == .rating ? .iWhite : .iDarkGray)
                    .font(selectedSort == .rating ? .system(size: 14, weight: .semibold) : .sub2)
            }
            .onTapGesture {
                selectedSort = .rating
            }
            
        }
        .frame(height: 32)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color.iGray, lineWidth: 1)
        )
        .padding(.horizontal)
        
    }
}

#Preview {
    SortButtonsView(selectedSort: .constant(.priceDesc))
}
