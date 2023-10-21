import UIKit

//API Module
class APIClient {
    static var instance = APIClient()
    
    func rxecute(_ : URLRequest, complition: (Data) -> Void) {}
}

class MockAPIClient: APIClient {
    override init() {}
}

//Login Module
struct LoggedInUser {}

extension APIClient {
    func login(complition: (LoggedInUser) -> Void) {}
}

class LoginVC: UIViewController {
    
    var api = APIClient.instance
    
    func didTapLoginButton() {
        api.login { user in
                //show next screen
        }
    }
}

//Added Feed Module

struct FeedItem {}

extension APIClient {
    func loadFeed(complition: ([FeedItem]) -> Void) {}
}

class FeedVC: UIViewController {
    
    var api = APIClient.instance
    
    func didTapFeedLoadButton() {
        api.loadFeed { item in
                //show next screen
        }
    }
}
