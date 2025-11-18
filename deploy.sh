#!/bin/bash

# Flutter 可视化学习工具集 - GitHub Pages 部署脚本

set -e  # 遇到错误立即退出

echo "╔════════════════════════════════════════════════════════╗"
echo "║                                                        ║"
echo "║     🚀 部署到 GitHub Pages                             ║"
echo "║                                                        ║"
echo "╚════════════════════════════════════════════════════════╝"
echo ""

# 检查是否在正确的目录
if [ ! -f "index.html" ]; then
    echo "❌ 错误: 请在 doc 目录下运行此脚本"
    exit 1
fi

# 检查是否已初始化 Git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
    echo "✅ Git 仓库初始化完成"
fi

# 检查是否有远程仓库
if ! git remote | grep -q "origin"; then
    echo ""
    echo "⚠️  未检测到远程仓库"
    echo ""
    echo "请运行以下命令添加远程仓库:"
    echo "  git remote add origin https://github.com/9527001/flutter-docs.git"
    echo ""
    echo "或使用 SSH:"
    echo "  git remote add origin git@github.com:9527001/flutter-docs.git"
    echo ""
    exit 1
fi

echo ""
echo "📝 准备提交..."

# 添加所有文件
git add .

# 检查是否有变更
if git diff --cached --quiet; then
    echo "ℹ️  没有需要提交的变更"
else
    # 生成提交信息
    TIMESTAMP=$(date '+%Y-%m-%d %H:%M:%S')
    COMMIT_MSG="feat#update: 更新文档 ${TIMESTAMP}"
    
    echo "💾 提交信息: ${COMMIT_MSG}"
    git commit -m "${COMMIT_MSG}"
    echo "✅ 提交完成"
fi

echo ""
echo "🚀 推送到 GitHub..."

# 推送到远程仓库
if git push origin main; then
    echo "✅ 推送成功！"
else
    echo "⚠️  推送失败，尝试使用 master 分支..."
    if git push origin master; then
        echo "✅ 推送成功！"
    else
        echo "❌ 推送失败"
        echo ""
        echo "可能的原因:"
        echo "  1. 远程仓库地址不正确"
        echo "  2. 没有权限推送"
        echo "  3. 网络连接问题"
        echo ""
        echo "请检查远程仓库配置:"
        echo "  git remote -v"
        exit 1
    fi
fi

echo ""
echo "╔════════════════════════════════════════════════════════╗"
echo "║                                                        ║"
echo "║     ✅ 部署完成！                                       ║"
echo "║                                                        ║"
echo "╚════════════════════════════════════════════════════════╝"
echo ""
echo "📍 等待 1-3 分钟后访问:"

# 尝试从 git remote 获取仓库信息
REMOTE_URL=$(git remote get-url origin 2>/dev/null || echo "")
if [[ $REMOTE_URL =~ github\.com[:/]([^/]+)/([^/\.]+) ]]; then
    USERNAME="${BASH_REMATCH[1]}"
    REPO="${BASH_REMATCH[2]}"
    echo ""
    echo "   🌐 https://9527001.github.io/flutter-docs/"
    echo ""
else
    echo ""
    echo "   🌐 https://9527001.github.io/flutter-docs/"
    echo ""
fi

echo "💡 提示:"
echo "   1. 首次部署需要在 GitHub 仓库设置中启用 Pages"
echo "   2. Settings -> Pages -> Source: main / root"
echo "   3. 部署需要 1-3 分钟时间"
echo ""

