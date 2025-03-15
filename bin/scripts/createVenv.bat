@echo OFF

if "Installed" == "Shipped" goto SHIPPED
if "Installed" == "Installed" goto INSTALLED
if "Installed" == "Custom" goto CUSTOM

:SHIPPED
echo Installing and using shipped python...
echo Creating folder ..\..\bin\python-3.11.1.amd64
mkdir ..\..\bin\python-3.11.1.amd64
echo Extracting python binaries and libs...
tar -xf ..\..\bin\python-3.11.1.amd64.zip -C ..\..\bin\python-3.11.1.amd64
set pythonpath="..\..\bin\python-3.11.1.amd64\python.exe"
goto :END

:INSTALLED
echo Using installed python...
set pythonpath=""
goto END

:CUSTOM
echo Using custom python...
set pythonpath=
goto :END

:END
echo Creating virtual environment 
echo using python: %pythonpath%
echo venv folder: C:\Users\dudeo\Desktop\YOLO TD\github\bin\venv-yolov8-cudatop

%pythonpath% -m venv "C:\Users\dudeo\Desktop\YOLO TD\github\bin\venv-yolov8-cudatop"


echo Done
pause /b 1