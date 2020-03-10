import Foundation

extension DateFormatter {
    static let longDate: DateFormatter = {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .long
        dateFormatter.timeStyle = .none
        dateFormatter.locale = Locale(identifier: "en_US")
        return dateFormatter
    }()
}
