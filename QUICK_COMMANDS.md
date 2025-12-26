# ⚡ 快速命令备忘录

## 🚀 启动服务器

### 推荐方式（一键启动）

```bash
./start_server.sh
```

✨ **自动完成：**
- 启动 HTTP 服务器（端口 8000）
- 在浏览器中打开主页
- 显示所有可访问的页面链接

### 手动启动

```bash
# Python 3
python3 -m http.server 8000

# Python 2
python -m SimpleHTTPServer 8000

# Node.js (需要先安装 http-server)
npx http-server -p 8000

# 使用其他端口
python3 -m http.server 8080
```

## 🌐 访问页面

启动服务器后访问：

```bash
# 主页
http://localhost:8000/index.html

# Markdown 查看器
http://localhost:8000/markdown_viewer.html

# Flutter 语言分析
http://localhost:8000/markdown_viewer.html?file=FLUTTER_LANGUAGE_ANALYSIS.md

# CodeLens 参考
http://localhost:8000/cursor_codelens_reference.html

# 三棵树可视化
http://localhost:8000/flutter_tree_visualization.html
```

## 🛠️ 常用命令

### 文件权限

```bash
# 给启动脚本添加执行权限
chmod +x start_server.sh

# 查看文件权限
ls -la start_server.sh
```

### 端口管理

```bash
# 查看端口占用 (macOS/Linux)
lsof -i :8000

# 杀死占用端口的进程
kill -9 <PID>

# 查找 Python 进程
ps aux | grep python
```

### Git 操作

```bash
# 查看状态
git status

# 添加所有更改
git add .

# 提交（遵循项目规范）
git commit -m "任务#t12345678：描述你的更改"

# 部署到 GitHub Pages
./deploy.sh
```

## 📝 编辑器命令

### VSCode/Cursor

```bash
# 在当前目录打开 Cursor
cursor .

# 打开特定文件
cursor index.html

# 安装推荐扩展
code --install-extension dart-code.dart-code
code --install-extension dart-code.flutter
```

### Dart/Flutter

```bash
# 重启 Dart 分析服务器
# 在 Cursor 中: Cmd+Shift+P → "Dart: Restart Analysis Server"

# Flutter Hot Reload
# 在 Cursor 中: Cmd+R (当应用运行时)
```

## 🐛 故障排查

### CORS 错误

```bash
# 确保使用本地服务器而不是直接打开文件
./start_server.sh

# 或手动启动
python3 -m http.server 8000
```

### 权限问题

```bash
# macOS/Linux
chmod +x start_server.sh

# Windows (使用 PowerShell)
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

### 清理缓存

```bash
# 清理浏览器缓存
# Chrome: Cmd+Shift+Delete
# Safari: Cmd+Option+E

# 清理 macOS 系统文件
find . -name '.DS_Store' -type f -delete
```

## 📦 包管理

### Python

```bash
# macOS 安装 Python 3
brew install python3

# 验证安装
python3 --version
which python3
```

### Node.js

```bash
# macOS 安装 Node.js
brew install node

# 全局安装 http-server
npm install -g http-server

# 使用 http-server
http-server -p 8000
```

## 🔍 查找和搜索

```bash
# 查找 Markdown 文件
find . -name "*.md" -type f

# 搜索文件内容
grep -r "Flutter" *.md

# 查找大文件
find . -type f -size +1M

# 统计文件数量
find . -name "*.html" | wc -l
```

## 📊 项目统计

```bash
# 统计代码行数
find . -name "*.html" -o -name "*.md" | xargs wc -l

# 统计文件数量
ls -1 | wc -l

# 查看目录大小
du -sh .
du -sh *
```

## 🎨 开发工作流

### 启动开发环境

```bash
# 1. 启动服务器
./start_server.sh

# 2. 在另一个终端打开编辑器
cursor .

# 3. 开始开发
# 编辑文件后刷新浏览器即可看到更改
```

### 部署流程

```bash
# 1. 测试本地服务器
./start_server.sh

# 2. 提交更改
git add .
git commit -m "任务#t12345678：描述"
git push

# 3. 部署到 GitHub Pages
./deploy.sh
```

## 💡 实用技巧

### 快速打开浏览器

```bash
# macOS
open http://localhost:8000/index.html

# Linux
xdg-open http://localhost:8000/index.html

# Windows
start http://localhost:8000/index.html
```

### 后台运行服务器

```bash
# 后台运行
python3 -m http.server 8000 &

# 查看后台进程
jobs

# 停止后台进程
kill %1
```

### 查看日志

```bash
# 实时查看访问日志
# 服务器运行时会自动显示

# 将日志保存到文件
python3 -m http.server 8000 > server.log 2>&1 &
tail -f server.log
```

## 📱 移动设备访问

```bash
# 1. 查看本机 IP 地址
ifconfig | grep "inet "
# 或
ipconfig getifaddr en0

# 2. 在移动设备浏览器访问
# http://192.168.x.x:8000/index.html
```

## 🆘 获取帮助

```bash
# 查看 Python 服务器帮助
python3 -m http.server --help

# 查看文档
cat HOW_TO_VIEW.md
cat CURSOR_CODELENS_SETUP_SUMMARY.md

# 打开帮助页面
open CORS_ERROR_HELP.html
```

## 📚 快速链接

| 命令 | 说明 |
|------|------|
| `./start_server.sh` | 启动服务器（推荐） |
| `python3 -m http.server 8000` | 手动启动服务器 |
| `chmod +x start_server.sh` | 添加执行权限 |
| `cursor .` | 打开编辑器 |
| `git status` | 查看 Git 状态 |
| `./deploy.sh` | 部署到 GitHub Pages |
| `Ctrl+C` | 停止服务器 |

---

**💡 提示:** 将此文件添加到书签，方便快速查找命令！

**最后更新**: 2025年12月26日  
**版本**: 1.0.0

