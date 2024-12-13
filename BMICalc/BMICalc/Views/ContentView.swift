import SwiftUI

struct ContentView: View {
    // To control side menu.
    @State private var showMenu = false
    // To know which option is selected for displaying the data accordingly.
    @State private var selectedTab = 0
    @AppStorage("currentPage") var currentPage = 1
    @Environment(\.colorScheme) var colorScheme
    @AppStorage("isDarkMode")  var isDarkMode = false

    var body: some View {
        if currentPage > totalPages {
            NavigationStack {
                // Used ZStack to override the Home page.
                ZStack {
                    TabView(selection: $selectedTab) {
                        HomeView()
                            .tag(0)
                            .toolbar(.hidden, for: .tabBar)
                        AboutBMIView()
                            .tag(1)
                            .toolbar(.hidden, for: .tabBar)
                        QuoteView()
                            .tag(2)
                            .toolbar(.hidden, for: .tabBar)
                        TipsView()
                            .tag(3)
                            .toolbar(.hidden, for: .tabBar)
                        HistoryView()
                            .tag(4)
                            .toolbar(.hidden, for: .tabBar)
                    }
                    SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab )
                }
                .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
                // .navigationTitle("Home")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            showMenu.toggle()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundStyle(.pink)
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            isDarkMode.toggle()
                        } label: {
                            Image(systemName: isDarkMode ? "moon.circle.fill" : "sun.max")
                                .foregroundStyle(isDarkMode ? .white: Color.orange)
                                .frame(width: 50, height: 50)
                        }
                    }
                }
            }
            .preferredColorScheme(isDarkMode ? .dark : .light)
        } else {
            OnboardingView()
        }
    }
}

#Preview {
    ContentView()
}
