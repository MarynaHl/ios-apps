import SwiftUI // Імпортуємо SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now // Вибрана дата з початковим значенням

    var body: some View {
        Form {
            Section(header: Text("Select your wake-up time")) { // Заголовок секції
                DatePicker("Wake-up time", selection: $wakeUp, displayedComponents: .hourAndMinute)
                    .labelsHidden() // Приховує мітку, але залишає її для VoiceOver
            }
        }
    }
}

#Preview {
    ContentView() // Попередній перегляд у SwiftUI
}
