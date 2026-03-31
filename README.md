# SwiftUI macOS ScrollView 滚动视图

## 简介

演示 SwiftUI 中 ScrollView 的用法，用于创建可滚动的内容区域。

## 快速开始

```bash
cd swiftui-macos-scrollview-demo
xcodegen generate
open SwiftUIScrollViewDemo.xcodeproj
# Cmd+R 运行
```

## 概念讲解

### 基础 ScrollView

```swift
ScrollView {
    // 滚动的内容
    ForEach(items) { item in
        ItemRow(item)
    }
}
```

### 滚动方向

默认是垂直滚动，水平滚动需要指定：

```swift
// 垂直滚动（默认）
ScrollView {
    // ...
}

// 水平滚动
ScrollView(.horizontal) {
    // ...
}

// 两个方向都可以
ScrollView([.horizontal, .vertical]) {
    // ...
}
```

### 配合 ForEach 使用

ScrollView 经常和 ForEach 一起使用来渲染列表：

```swift
ScrollView {
    VStack(spacing: 10) {
        ForEach(1..<100) { index in
            Text("项 \(index)")
        }
    }
}
```

## 完整示例

```swift
struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(1..<50, id: \.self) { index in
                    HStack {
                        Text("列表项 \(index)")
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
}
```

## 完整讲解（中文）

### ScrollView 的用途

当内容超出窗口大小时，需要滚动查看。ScrollView 提供滚动功能。

### 与 List 的区别

| 特性 | ScrollView | List |
|------|------------|------|
| 性能 | 一般 | 优化过 |
| 选择 | 不支持 | 支持选择 |
| 样式 | 自定义 | 原生样式 |

### 性能考虑

ScrollView 会一次性渲染所有内容，数量多时可能影响性能。如果需要显示大量数据，考虑使用 List 而不是 ScrollView。
