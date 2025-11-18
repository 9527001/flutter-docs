# 🚀 部署到 GitHub Pages 指南

## 📋 部署步骤

### 1. 创建 GitHub 仓库

```bash
# 在 GitHub 上创建一个新仓库
# 仓库名建议：flutter-visualization-tools
# 设置为 Public（公开）
```

### 2. 初始化 Git 仓库

```bash
cd /Users/zongxin/mind/app_workspace/doc

# 初始化 Git 仓库
git init

# 添加所有文件
git add .

# 提交
git commit -m "feat#initial: 初始化 Flutter 可视化学习工具集"
```

### 3. 关联远程仓库

```bash
# 替换 YOUR_USERNAME 为你的 GitHub 用户名
git remote add origin https://github.com/YOUR_USERNAME/flutter-visualization-tools.git

# 或使用 SSH（推荐）
git remote add origin git@github.com:YOUR_USERNAME/flutter-visualization-tools.git
```

### 4. 推送到 GitHub

```bash
# 推送到 main 分支
git branch -M main
git push -u origin main
```

### 5. 启用 GitHub Pages

1. 进入 GitHub 仓库页面
2. 点击 `Settings`（设置）
3. 在左侧菜单找到 `Pages`
4. 在 `Source` 下拉菜单中选择：
   - Branch: `main`
   - Folder: `/root` 或 `/` （根目录）
5. 点击 `Save`（保存）

### 6. 等待部署

- GitHub Pages 会自动构建和部署
- 通常需要 1-3 分钟
- 访问地址：`https://YOUR_USERNAME.github.io/flutter-visualization-tools/`

---

## 🔧 自动部署脚本

创建一个快速部署脚本：

```bash
#!/bin/bash
# deploy.sh

echo "🚀 开始部署到 GitHub Pages..."

# 添加所有更改
git add .

# 提交（使用时间戳）
git commit -m "feat#update: 更新文档 $(date '+%Y-%m-%d %H:%M:%S')"

# 推送
git push origin main

echo "✅ 部署完成！"
echo "📍 访问地址: https://YOUR_USERNAME.github.io/flutter-visualization-tools/"
```

使用方法：

```bash
# 给脚本添加执行权限
chmod +x deploy.sh

# 运行脚本
./deploy.sh
```

---

## 📝 注意事项

### 1. .nojekyll 文件

已创建 `.nojekyll` 文件，告诉 GitHub Pages 不要使用 Jekyll 处理文件。

### 2. 文件路径

确保所有资源文件的路径是相对路径，例如：
- ✅ `href="index.html"`
- ✅ `src="flutter_tree_visualization.html"`
- ❌ `href="/index.html"` （绝对路径可能出问题）

### 3. 浏览器缓存

如果更新后看不到变化，尝试：
- 强制刷新：`Ctrl + F5` (Windows) 或 `Cmd + Shift + R` (Mac)
- 清除浏览器缓存

### 4. 自定义域名（可选）

如果有自己的域名：

1. 在仓库根目录创建 `CNAME` 文件：
```bash
echo "your-domain.com" > CNAME
git add CNAME
git commit -m "feat#domain: 添加自定义域名"
git push
```

2. 在域名 DNS 设置中添加：
```
类型: CNAME
名称: www
值: YOUR_USERNAME.github.io
```

---

## 🌐 访问地址

部署成功后，访问地址格式：

```
https://YOUR_USERNAME.github.io/flutter-visualization-tools/
```

例如：
```
https://zongxin.github.io/flutter-visualization-tools/
```

---

## 🔄 更新内容

每次修改后，重新提交和推送：

```bash
git add .
git commit -m "feat#update: 更新内容说明"
git push origin main
```

GitHub Pages 会自动重新部署（通常 1-3 分钟）。

---

## ❓ 常见问题

### Q1: 404 Not Found

**原因**：GitHub Pages 还没有部署完成或路径错误

**解决**：
1. 等待 2-3 分钟
2. 检查 Settings -> Pages 中的状态
3. 确认访问的 URL 是否正确

### Q2: 样式丢失

**原因**：文件路径错误或缓存问题

**解决**：
1. 检查 HTML 中的 CSS 引用路径
2. 清除浏览器缓存
3. 强制刷新页面

### Q3: 无法访问 .md 文件

**原因**：GitHub Pages 默认渲染 Markdown

**解决**：
- Markdown 文件会被自动渲染为 HTML
- 如果需要查看原始内容，访问 GitHub 仓库

### Q4: 更新不生效

**原因**：GitHub Pages 缓存或 CDN 延迟

**解决**：
1. 等待 5-10 分钟
2. 清除浏览器缓存
3. 使用无痕模式访问

---

## 📊 GitHub Actions 自动部署（高级）

如果需要更高级的自动化部署，可以使用 GitHub Actions：

创建 `.github/workflows/deploy.yml`：

```yaml
name: Deploy to GitHub Pages

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./
```

---

## 🎉 完成

部署成功后，你的 Flutter 可视化学习工具集就可以在线访问了！

分享链接给其他开发者，帮助更多人学习 Flutter！

---

**创建日期**: 2025年11月18日  
**版本**: 1.0.0

