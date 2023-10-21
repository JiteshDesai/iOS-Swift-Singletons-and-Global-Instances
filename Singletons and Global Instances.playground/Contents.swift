import UIKit

//API Module

class APIClient {
    static var instance = APIClient()
    
    func rxecute(_ : URLRequest, complition: (Data) -> Void) {}
}

extension APIClient {
    func login(complition: (LoggedInUser) -> Void) {
        complition(LoggedInUser(name: "test"))
    }
}

extension APIClient {
    func loadFeed(complition: ([FeedItem]) -> Void) {
        complition([FeedItem(name: "One")])
    }
}

class MockAPIClient: APIClient {
    override init() {}
}

//Login Module
struct LoggedInUser {
    let name: String
}

class LoginClientAdapter {
    
    var login: (((LoggedInUser) -> Void) -> Void)?

    func loginUser() {
        login? { user in
                //show next screen
            print(user.name)
        }
    }
}

//Added Feed Module

struct FeedItem {
    let name: String
}

class FeedClientAdapter {
    
    var loadFeed: ((([FeedItem]) -> Void) -> Void)?
    
    func load() {
        loadFeed? { item in
                //show next screen
            print(item.first?.name ?? "")
        }
    }
}

let loginClientAdapter = LoginClientAdapter()

loginClientAdapter.login = { completion in
    APIClient.instance.login(complition: completion)
}

loginClientAdapter.loginUser()
