import UIKit

//API Module

class APIClient {
    static var instance = APIClient()
    
    func rxecute(_ : URLRequest, complition: (Data) -> Void) {}
}

extension APIClient {
    func login(complition: (LoggedInUser) -> Void) {}
}

extension APIClient {
    func loadFeed(complition: ([FeedItem]) -> Void) {}
}

class MockAPIClient: APIClient {
    override init() {}
}

//Login Module
struct LoggedInUser {}

class LoginClientAdapter {
    
    var login: (((LoggedInUser) -> Void) -> Void)?

    func loginUser() {
        login? { user in
                //show next screen
        }
    }
}

//Added Feed Module

struct FeedItem {}

class FeedClientAdapter {
    
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { item in
                //show next screen
        }
    }
}
