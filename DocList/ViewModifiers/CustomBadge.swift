import SwiftUI

struct CustomBadge: ViewModifier {
    let count: Int
    let maxCountAmount: Int
    
    func body(content: Content) -> some View {
        ZStack(alignment: .topTrailing) {
            content
            if count > 0 {
                ZStack {
                    Circle()
                        .strokeBorder(Color.white, lineWidth: 2)
                        .background(Circle().foregroundColor(Color.iPink))
                    
                    Text(count > maxCountAmount ? "..." : "\(min(count, maxCountAmount))")
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(.white)
                }
                .frame(width: 19, height: 19)
            }
        }
    }
}

extension View {
    // max badge amount
    func customBadge(_ count: Int = 0, maxCountAmount: Int = 9) -> some View {
        modifier(CustomBadge(count: count, maxCountAmount: maxCountAmount))
    }
}
