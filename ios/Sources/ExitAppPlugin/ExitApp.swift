import Foundation

@objc public class ExitApp: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        
        DispatchQueue.main.async {
            NotificationCenter.default.post(name: NSNotification.Name("SEND_MESSAGE"), object: nil, userInfo:  ["message": value])
        }
        return value
    }
}
