@echo off
REM Local Development Setup Script for Windows

echo Setting up Coding Challenge Platform...

REM Backend setup
echo Setting up backend...
cd backend
python -m venv venv
call venv\Scripts\activate.bat
pip install -r requirements.txt

echo.
echo Backend setup complete!
echo Run: cd backend ^&^& python app.py
echo.
echo Frontend is ready in the frontend\ directory
echo Run: cd frontend ^&^& python -m http.server 3000
echo.
echo Setup complete!
echo Backend: http://localhost:8000
echo Frontend: http://localhost:3000
