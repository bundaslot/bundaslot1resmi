@echo off
echo ============================
echo DEPLOY AMP KE GITHUB
echo ============================

git add -A

git diff --cached --quiet
if %errorlevel%==0 (
    echo Tidak ada perubahan baru.
    goto push
)

git commit -m "Update AMP"

:push
git push origin main

echo.
echo ============================
echo DEPLOY SELESAI
echo ============================
pause