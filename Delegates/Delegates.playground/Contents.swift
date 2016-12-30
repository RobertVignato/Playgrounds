import UIKit

// Delegates - Swift 24 Hours Pg: 276

// Declare a protocol
protocol ButtonDelegateProtocol {
    func didTapButton(button: Button)
}

// Implement the protocol
class ButtonDelegate : ButtonDelegateProtocol {
    func didTapButton(button: Button) {
        print("You tapped the button labeled \(button.title)")
    }
}

class Button {
    let title: String
    let delegate: ButtonDelegateProtocol
    
    init(title: String, delegate2: ButtonDelegateProtocol) {
        self.title = title
        self.delegate = delegate2
    }
    
    func buttonTapped() {
        self.delegate.didTapButton(button: self)
    }
}

let button = Button(title: "Tap Me!", delegate2: ButtonDelegate())
button.buttonTapped()

