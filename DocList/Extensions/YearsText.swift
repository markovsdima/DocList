import Foundation

func yearsText(for count: Int) -> String {
    let remainder10 = count % 10
    let remainder100 = count % 100
    
    if remainder100 >= 11 && remainder100 <= 19 {
        return "\(count) лет"
    } else if remainder10 == 1 {
        return "\(count) год"
    } else if remainder10 >= 2 && remainder10 <= 4 {
        return "\(count) года"
    } else {
        return "\(count) лет"
    }
}
