import SwiftUI
struct ContentView: View {
    // To control side menu.
    @State private var showMenu = false
    // To know which option is selected for displaying the data accordingly.
    @State private var selectedTab = 0
    var body: some View {
        NavigationStack {
            // Used ZStack to override the Home page.
            ZStack {
                TabView(selection: $selectedTab) {
                    HomeView()
                        .tag(0)
                    AboutBMIView()
                        .tag(1)
                    QuoteView()
                        .tag(2)
                    HistoryView()
                        .tag(6)

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
                    }

                }
            }

        }

    }
}

#Preview {
    ContentView()
}
