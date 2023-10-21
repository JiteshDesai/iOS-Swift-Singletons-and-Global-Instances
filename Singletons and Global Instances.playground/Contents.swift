import UIKit

struct LoggedInUser {}

class APIClient {
    static let instance = APIClient()
    
    private init() {}
    
    func login(complition: (LoggedInUser) -> Void) {}
}

let client = APIClient.instance

class MockAPIClient: APIClient {
    
}

class LoginVC: UIViewController {
    
    var api = APIClient.instance
    
    func didTapLoginButton() {
        api.login { user in
                //show next screen
        }
    }
}
