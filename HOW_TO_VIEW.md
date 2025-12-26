# 📖 如何查看文档

## ⚠️ 重要提示

如果你遇到 **CORS 错误** 或 Markdown 文件无法加载，这是正常的！浏览器的安全策略不允许直接通过 `file://` 协议加载某些资源。

## 🚀 快速启动（推荐）

### 方法 1: 使用启动脚本

**最简单的方式！** 在终端中执行：

```bash
# 确保在 doc 目录下
cd /Users/zongxin/mind/app_workspace/doc

# 执行启动脚本
./start_server.sh
```

脚本会：
1. ✅ 自动启动 HTTP 服务器（端口 8000）
2. ✅ 自动在浏览器中打开主页
3. ✅ 显示所有可访问的页面链接

### 方法 2: 手动启动服务器

如果启动脚本不工作，可以手动启动：

```bash
# 切换到 doc 目录
cd /Users/zongxin/mind/app_workspace/doc

# Python 3 用户
python3 -m http.server 8000

# Python 2 用户
python -m SimpleHTTPServer 8000

# Node.js 用户（需要安装 http-server）
npx http-server -p 8000
```

然后在浏览器访问: **http://localhost:8000/index.html**

### 方法 3: 使用 VSCode/Cursor Live Server

如果你使用 VSCode 或 Cursor：

1. 安装 **Live Server** 扩展
2. 右键点击 `index.html`
3. 选择 **"Open with Live Server"**
4. 浏览器会自动打开

## 📱 访问页面

启动服务器后，可以访问以下页面：

### 🏠 主页
```
http://localhost:8000/index.html
```
所有工具和文档的集中入口

### 📖 Markdown 查看器
```
http://localhost:8000/markdown_viewer.html
```
用于查看所有 Markdown 文档

### 🔤 Flutter 语言分析（新！）
```
http://localhost:8000/markdown_viewer.html?file=FLUTTER_LANGUAGE_ANALYSIS.md
```
从 Dart 语言角度深入分析 Flutter

### ⌨️ Cursor CodeLens 参考（新！）
```
http://localhost:8000/cursor_codelens_reference.html
```
快速参考 CodeLens 功能和快捷键

### 🌳 Flutter 三棵树可视化
```
http://localhost:8000/flutter_tree_visualization.html
```
交互式学习 Widget、Element、RenderObject 树

### 📐 Flutter Layout 可视化
```
http://localhost:8000/flutter_layout_visualization.html
```
深入理解约束传递和布局机制

### ⚙️ performLayout 分析
```
http://localhost:8000/perform_layout_visualization.html
```
7 种 performLayout 实现模式分析

### 🧠 Flutter Engine 思维导图
```
http://localhost:8000/flutter_engine_mindmap.html
```
Flutter Engine 完整架构

### 🏛️ Flutter 架构设计
```
http://localhost:8000/flutter_architecture_visualization.html
```
Flutter 分层架构和三棵树机制

### 🎨 SwiftUI 架构设计
```
http://localhost:8000/swiftui_architecture_visualization.html
```
SwiftUI 声明式 UI 和状态管理

## 🐛 常见问题

### Q1: 执行 `./start_server.sh` 提示 "Permission denied"

**解决方案：**
```bash
# 给脚本添加执行权限
chmod +x start_server.sh

# 然后再执行
./start_server.sh
```

### Q2: 提示 "python3: command not found"

**解决方案：**

**macOS:**
```bash
# 使用 Homebrew 安装 Python 3
brew install python3

# 或者使用 Python 2
python -m SimpleHTTPServer 8000
```

**Windows:**
- 从 [python.org](https://www.python.org/) 下载并安装 Python 3
- 或者使用 Node.js 的 http-server

**Linux:**
```bash
# Ubuntu/Debian
sudo apt-get install python3

# CentOS/RHEL
sudo yum install python3
```

### Q3: 端口 8000 被占用

**解决方案：**
```bash
# 使用其他端口，例如 8080
python3 -m http.server 8080

# 然后访问 http://localhost:8080/index.html
```

### Q4: CORS 错误依然存在

**检查清单：**

1. ✅ 确认服务器正在运行（终端应该显示服务器日志）
2. ✅ 确认使用 `http://localhost:8000` 而不是 `file://`
3. ✅ 清除浏览器缓存并刷新
4. ✅ 尝试其他浏览器

## 💡 Pro Tips

### Tip 1: 保持服务器运行

服务器启动后，不要关闭终端窗口。如果需要停止，按 `Ctrl + C`。

### Tip 2: 查看服务器日志

终端会显示访问日志，可以帮助调试问题：
```
127.0.0.1 - - [26/Dec/2025 10:30:15] "GET /index.html HTTP/1.1" 200 -
127.0.0.1 - - [26/Dec/2025 10:30:16] "GET /styles.css HTTP/1.1" 200 -
```

### Tip 3: 同时访问多个页面

可以在不同标签页中打开多个文档页面进行对比学习。

### Tip 4: 移动设备访问

如果在同一网络下：
```
# 查看本机 IP 地址
ifconfig | grep "inet "

# 在移动设备浏览器访问
http://192.168.x.x:8000/index.html
```

## 🎯 快速命令备忘

```bash
# 启动服务器
./start_server.sh

# 或者
python3 -m http.server 8000

# 访问主页
open http://localhost:8000/index.html

# 停止服务器
# 按 Ctrl + C
```

## 📚 相关文档

- [QUICKSTART.md](QUICKSTART.md) - 项目快速开始
- [README.md](README.md) - 项目总览
- [CORS_ERROR_HELP.html](CORS_ERROR_HELP.html) - CORS 错误帮助页面
- [CURSOR_CODELENS_SETUP_SUMMARY.md](CURSOR_CODELENS_SETUP_SUMMARY.md) - CodeLens 配置总结

## 🆘 需要帮助？

如果以上方法都无法解决问题：

1. 查看 [CORS_ERROR_HELP.html](CORS_ERROR_HELP.html) 了解更多
2. 检查终端的错误信息
3. 尝试使用不同的浏览器
4. 在项目中提交 Issue

---

**最后更新**: 2025年12月26日  
**版本**: 1.0.0

祝浏览愉快！🎉

