@echo off
:: สร้าง Virtual Environment
python -m venv env

:: เปิดใช้งาน Virtual Environment
call env\Scripts\activate

:: ติดตั้งแพ็คเกจจากไฟล์ requires.txt
pip install -r requires.txt

:: รันสคริปต์ download.py
python download.py


cd TypeLPG-9
xcopy train valid /E /I /Y
xcopy train test /E /I /Y

cd ..

:: รันสคริปต์ runv8.py
python runv8.py

:: ปิด Virtual Environment เมื่อเสร็จสิ้น
deactivate
pause
