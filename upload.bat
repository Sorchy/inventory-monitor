@echo off
echo ============================================
echo   GitHub 一键上传工具 (inventory-monitor)
echo ============================================
echo.

cd /d %~dp0

echo 🔧 配置 Git 用户信息...
git config --global user.name "lulu"
git config --global user.email "lulu@example.com"

echo.
echo 🔧 初始化 Git 仓库...
git init

echo.
echo 🔧 添加所有文件到 Git...
git add .

echo.
echo 🔧 创建提交记录...
git commit -m "initial commit"

echo.
echo 🔧 设置 main 分支...
git branch -M main

echo.
echo 🔧 绑定 GitHub 仓库...
git remote remove origin >nul 2>&1
git remote add origin https://github.com/grlapv/inventory-monitor

echo.
echo 🔧 推送到 GitHub...
git push -u origin main

echo.
echo 🎉 已完成！打开你的仓库查看：
echo 👉 https://github.com/grlapv/inventory-monitor
echo.
pause
