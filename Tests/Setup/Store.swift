import Delta

struct AppState {
    let currentUser = ObservableProperty<User?>(.None)
    let users = ObservableProperty<[User]>([])
}

struct AppStore: Store {
    var state: ObservableProperty<AppState>
}

// MARK: Getters
extension AppStore {
    var currentUser: User? {
        return state.value.currentUser.value
    }

    var users: [User] {
        return state.value.users.value
    }
}

var store: AppStore!
