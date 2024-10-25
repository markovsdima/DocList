import SwiftUI

struct SearchBarView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        
        HStack(spacing: 6) {
            Image(.searchGlyph)
                .padding(.leading, 5)
            TextField("Поиск", text: $searchText)
                .padding(.vertical, 9)
        }
        .background(.iWhite)
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.iGray, lineWidth: 1)
        )
        .frame(height: 36)
        .padding([.horizontal, .top])
        .padding(.bottom, 10)
    }
    
}

#Preview {
    SearchBarView(searchText: .constant(""))
}
