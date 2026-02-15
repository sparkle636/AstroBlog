@echo off
chcp 65001 >nul 2>&1  :: 关键：将控制台编码设置为 UTF-8，解决中文乱码
setlocal enabledelayedexpansion

:: 1. 切换到当前 BAT 文件所在目录（确保执行路径正确）
cd /d "%~dp0"

:: 2. 执行 Git 命令，每步都有提示，出错也不中断
echo ============= 开始执行 Git 操作 =============
echo 1. 添加所有文件到暂存区...
git add .

echo.
echo 2. 提交文件（备注：博客更新）...
git commit -m "博客更新"

echo.
echo 3. 关联远程仓库（已存在则跳过）...
git remote | findstr /i "origin" >nul 2>&1
if errorlevel 1 (
    git remote add origin https://github.com/sparkle636/AstroBlog.git
) else (
    echo 远程仓库 origin 已存在，跳过关联步骤
)

echo.
echo 4. 推送代码到 main 分支...
git push -u origin main

:: 3. 执行完成后停留窗口，按任意键退出
echo.
echo ============= Git 操作执行完成 =============
echo 按任意键关闭窗口...
pause >nul
endlocal