The project is built with Swift 6 and SwiftUI, targeting recent iOS devices (iOS 17/18+). The app follows a simplified MVVM (Model-View-ViewModel) pattern to separate data logic from the view.
ContainerView.swift: The entry point for the main navigation. It uses SwiftUI's new Tab syntax (iOS 18+) to manage the lower TabBar, including sections for "Tricounts," "Requests," and "Credit Card."

MainView.swift: The main dashboard. It implements a NavigationStack for hierarchical management and a List to display active trips. It includes a complex Toolbar with quick actions (Profile, Add, Edit).
ContentView.swift: The detail view for each trip. Here I implemented:
Segmented Control: To filter between Expenses, Balances, and Photos.
Custom Typography: Using .design: .rounded for monetary figures, improving the readability of numbers.
Context Menu: A context menu (ellipsis) in the toolbar for secondary actions like "Share" or "Delete group".

Xcode Project (/TriCount)
The heart of the project. It contains all the SwiftUI source code discussed above.
Technical Note: The project is a UI Prototype. The buttons are rendered and visually interactive, but do not perform data persistence logic or network calls (e.g., the "Edit" button or saving a new expense). The displayed data is statically mocked in the ViewModels.

Keynote Presentation (/Docs)
A deep dive into the creative process: "Before vs. After" analysis.
Color Theory study: how to choose palettes that respect contrast and Apple accessibility.

Make sure you have Xcode 15+ (or Xcode 16 for full tab syntax support).
Clone the repository: git clone https://github.com/your-username/tricount-redesign.git
Open the TriCount.xcodeproj file.
Select a simulator (e.g., iPhone 15/16 Pro) and press Cmd + R.

Author: Francesco Lombardi Disclaimer: This is an unofficial educational project and is not affiliated with Tricount or its owners.
