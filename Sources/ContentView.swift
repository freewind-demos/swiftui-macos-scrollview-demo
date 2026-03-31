import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                // 基础 ScrollView
                Text("向下滚动查看更多内容")
                    .padding()

                ForEach(1..<50, id: \.self) { index in
                    HStack {
                        Circle()
                            .fill(Color.blue.opacity(0.3))
                            .frame(width: 40, height: 40)
                            .overlay(
                                Text("\(index)")
                                    .font(.caption)
                            )

                        VStack(alignment: .leading) {
                            Text("列表项 \(index)")
                                .font(.headline)
                            Text("这是第 \(index) 项的描述文字")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }

                        Spacer()

                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color(nsColor: .controlBackgroundColor))
                    .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}
