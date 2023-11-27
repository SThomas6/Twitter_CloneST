import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    init(_ placeholder: String, text: Binding<String>) {
        self.placeholder = placeholder
        self._text = text
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            if text.isEmpty {
                placeholderView
            }
            
            TextEditor(text: $text)
                .padding(4)
                .opacity(text.isEmpty ? 0.25 : 1) // Reduce opacity when text is empty
        }
        .font(.body)
    }
    
    private var placeholderView: some View {
        Text(placeholder)
            .foregroundColor(Color(.placeholderText))
            .padding(.horizontal, 8)
            .padding(.vertical, 12)//this is a test
    }
}
