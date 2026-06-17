import SwiftUI

import ARKit

struct ContentView: View {
    @StateObject private var emotionManager = EmotionManager()
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("EmoSuggest")
                    .font(.largeTitle)
                
                TextField("Start typing...", text: $emotionManager.currentText)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Text("Detected Emotion: \(emotionManager.currentEmotion)")
                    .padding()
                
                List(emotionManager.suggestions, id: \.self) { suggestion in
                    Text(suggestion)
                }
            }
            .padding()
        }
    }
}