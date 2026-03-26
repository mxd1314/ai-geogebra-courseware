@echo off
chcp 65001 >nul
echo ========================================
echo   AI-GeoGebra 课件生成器 - 部署脚本
echo ========================================
echo.

REM 检查是否已安装 Git
where git >nul 2>nul
if %errorlevel% neq 0 (
    echo [错误] 未检测到 Git，请先安装 Git
    echo 下载地址: https://git-scm.com/downloads
    pause
    exit /b 1
)

REM 初始化 Git 仓库
if not exist .git (
    echo [1/5] 初始化 Git 仓库...
    git init
    git add .
    git commit -m "Initial commit: AI-GeoGebra课件生成器 v1.0.4"
) else (
    echo [1/5] Git 仓库已存在，跳过初始化
)

echo.
echo [2/5] 请输入您的 GitHub 用户名:
set /p GITHUB_USER=

echo.
echo [3/5] 请输入仓库名称 (默认: ai-geogebra-courseware):
set /p REPO_NAME=
if "%REPO_NAME%"=="" set REPO_NAME=ai-geogebra-courseware

echo.
echo [4/5] 添加远程仓库...
git remote remove origin >nul 2>nul
git remote add origin https://github.com/%GITHUB_USER%/%REPO_NAME%.git

echo.
echo [5/5] 推送代码到 GitHub...
git branch -M main
git push -u origin main

echo.
echo ========================================
echo   部署完成！
echo ========================================
echo.
echo 下一步操作:
echo 1. 访问 https://github.com/%GITHUB_USER%/%REPO_NAME%/settings/pages
echo 2. 在 "Source" 下选择 "GitHub Actions"
echo 3. 等待自动部署完成
echo 4. 访问 https://%GITHUB_USER%.github.io/%REPO_NAME%/
echo.
pause
