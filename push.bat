@echo off
REM 檢查是否提供了提交訊息
if "%1"=="" (
    echo 你必須提供一個提交訊息。
    echo 使用方法: git_push.bat "你的提交訊息"
    exit /b 1
)

REM 切換到你的專案目錄

REM 檢查 Git 狀態
git status

REM 新增所有變更
git add .

REM 提交變更，使用傳入的提交訊息
git commit -m "%*"

REM 推送到遠端儲存庫
git push origin main

REM 提示完成訊息
echo Git push Done
pause
