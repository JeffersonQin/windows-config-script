@echo off
chcp 65001
echo ==============================
echo Start Installing Custom Setups
echo ==============================
for %%i in (..\custom-setups\*.exe ..\custom-setups\*.msi) do (
	echo Installing %%i ...
	%%i
)
echo ==============================
echo Start Installing Normal Setups
echo ==============================
for %%i in (..\setups\*.exe ..\setups\*.msi) do (
	echo Installing %%i ...
	%%i
)
pause
