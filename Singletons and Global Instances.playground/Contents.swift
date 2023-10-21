import UIKit

struct LoggedInUser {}

class APIClient {
    static var instance = APIClient()
        
    func login(complition: (LoggedInUser) -> Void) {}
}

//let client = APIClient.instance

class MockAPIClient: APIClient {
    override init() {}
}

APIClient.instance = MockAPIClient() // Global Mutating Instance


class LoginVC: UIViewController {
    
    var api = APIClient.instance
    
    func didTapLoginButton() {
        api.login { user in
                //show next screen
        }
    }
}
