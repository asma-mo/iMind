import SwiftUI

// Custom type to wrap presentationMode
struct ViewDismissAction: Equatable {
    let dismiss: () -> Void
    
    static func == (lhs: ViewDismissAction, rhs: ViewDismissAction) -> Bool {
        // Equatable conformance (required for Binding)
        true
    }
}
