#!/bin/bash

# Mind App 文档服务器 - 快速启动脚本

echo "📚 启动 Mind App 文档服务器..."
echo ""
echo "📍 当前目录: $(pwd)"
echo ""

# 检查 Python 是否安装
if command -v python3 &> /dev/null; then
    PORT=8000
    echo "🚀 启动 HTTP 服务器在端口 $PORT..."
    echo ""
    echo "✅ 请在浏览器中访问以下页面:"
    echo ""
    echo "   🏠 主页:"
    echo "      http://localhost:$PORT/index.html"
    echo ""
    echo "   📖 文档查看器 (支持 Markdown):"
    echo "      http://localhost:$PORT/markdown_viewer.html"
    echo ""
    echo "   🔤 Flutter 语言分析:"
    echo "      http://localhost:$PORT/markdown_viewer.html?file=FLUTTER_LANGUAGE_ANALYSIS.md"
    echo ""
    echo "   ⌨️  Cursor CodeLens 参考:"
    echo "      http://localhost:$PORT/cursor_codelens_reference.html"
    echo ""
    echo "   🌳 Flutter 三棵树可视化:"
    echo "      http://localhost:$PORT/flutter_tree_visualization.html"
    echo ""
    echo "💡 按 Ctrl+C 停止服务器"
    echo ""
    echo "----------------------------------------"
    echo ""
    
    # 自动在浏览器中打开主页
    sleep 1
    if command -v open &> /dev/null; then
        echo "🌐 正在浏览器中打开主页..."
        open "http://localhost:$PORT/index.html"
    elif command -v xdg-open &> /dev/null; then
        xdg-open "http://localhost:$PORT/index.html"
    fi
    
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    PORT=8000
    echo "🚀 启动 HTTP 服务器在端口 $PORT..."
    echo ""
    echo "✅ 请在浏览器中访问:"
    echo "   http://localhost:$PORT/index.html"
    echo ""
    echo "💡 按 Ctrl+C 停止服务器"
    echo ""
    echo "----------------------------------------"
    echo ""
    
    python -m SimpleHTTPServer $PORT
else
    echo "❌ 错误: 未找到 Python"
    echo ""
    echo "💡 请安装 Python 3 来启动本地服务器"
    echo ""
    echo "   Mac 用户安装 Python:"
    echo "   brew install python3"
    echo ""
    echo "   然后重新运行:"
    echo "   ./start_server.sh"
    echo ""
    exit 1
fi

