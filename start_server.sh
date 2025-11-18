#!/bin/bash

# Flutter Engine 三棵树可视化 - 快速启动脚本

echo "🌳 启动 Flutter Engine 三棵树可视化工具..."
echo ""
echo "📍 当前目录: $(pwd)"
echo ""

# 检查 Python 是否安装
if command -v python3 &> /dev/null; then
    PORT=8000
    echo "🚀 启动 HTTP 服务器在端口 $PORT..."
    echo ""
    echo "✅ 请在浏览器中访问:"
    echo "   http://localhost:$PORT/flutter_tree_visualization.html"
    echo ""
    echo "💡 按 Ctrl+C 停止服务器"
    echo ""
    echo "----------------------------------------"
    echo ""
    
    python3 -m http.server $PORT
elif command -v python &> /dev/null; then
    PORT=8000
    echo "🚀 启动 HTTP 服务器在端口 $PORT..."
    echo ""
    echo "✅ 请在浏览器中访问:"
    echo "   http://localhost:$PORT/flutter_tree_visualization.html"
    echo ""
    echo "💡 按 Ctrl+C 停止服务器"
    echo ""
    echo "----------------------------------------"
    echo ""
    
    python -m SimpleHTTPServer $PORT
else
    echo "❌ 错误: 未找到 Python"
    echo ""
    echo "💡 你可以:"
    echo "   1. 安装 Python 3"
    echo "   2. 直接在浏览器中打开 flutter_tree_visualization.html 文件"
    echo ""
    echo "   Mac 用户可以直接执行:"
    echo "   open flutter_tree_visualization.html"
    exit 1
fi

