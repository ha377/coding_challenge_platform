#!/bin/bash
# Local Development Setup Script

echo "🚀 Setting up Coding Challenge Platform..."

# Backend setup
echo "📦 Setting up backend..."
cd backend
python -m venv venv
source venv/bin/activate || venv\Scripts\activate
pip install -r requirements.txt

echo "✅ Backend setup complete!"
echo "Run: cd backend && python app.py"

# Frontend info
echo ""
echo "📱 Frontend is ready in the frontend/ directory"
echo "Run: cd frontend && python -m http.server 3000"

echo ""
echo "🎉 Setup complete!"
echo "Backend: http://localhost:8000"
echo "Frontend: http://localhost:3000"
