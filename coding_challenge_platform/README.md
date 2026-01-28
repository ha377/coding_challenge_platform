# 🏆 JNTUA Coding Challenge Platform

A comprehensive web-based coding challenge platform for conducting multi-round programming competitions. Built with Flask (backend) and vanilla JavaScript (frontend).

## 🌟 Features

### For Students
- **Round 1**: Multiple Choice Questions (MCQ) with timer
- **Round 2**: Code Scrambling Challenge
- **Round 3**: Code Debugging Challenge  
- **Round 4**: Frontend Code Submission
- **Score Tracking**: View personal scores across all rounds

### For Admins
- **Content Management**: Upload MCQ questions, scrambled code, and buggy code
- **Score Dashboard**: View all student scores with filtering
- **Submissions View**: See all student submissions organized by team and round
- **Question Management**: View and manage uploaded questions

## 🛠️ Technology Stack

### Backend
- **Flask** - Python web framework
- **MongoDB Atlas** - Cloud database
- **Flask-CORS** - Cross-origin resource sharing
- **OpenPyXL** - Excel file processing

### Frontend
- **HTML5/CSS3** - Structure and styling
- **Vanilla JavaScript** - Interactivity
- **CodeMirror** - Code editor integration

## 📁 Project Structure

```
coding_challenge_platform/
├── backend/
│   ├── app.py                 # Main Flask application
│   ├── requirements.txt       # Python dependencies
│   ├── scrambled_code.py      # Code scrambling utility
│   └── uploads/               # Student submissions storage
├── frontend/
│   ├── index.html            # Main HTML file
│   ├── styles.css            # Styling
│   ├── config.js             # API configuration
│   └── static/               # Images and assets
├── render.yaml               # Render deployment config
├── vercel.json              # Vercel deployment config
├── HOSTING_GUIDE.md         # Detailed hosting instructions
└── README.md                # This file
```

## 🚀 Quick Start

### Local Development

#### Prerequisites
- Python 3.9+
- pip (Python package manager)
- Modern web browser

#### Backend Setup
```bash
# Navigate to backend directory
cd backend

# Install dependencies
pip install -r requirements.txt

# Run the server
python app.py
```

Backend will run on `http://localhost:8000`

#### Frontend Setup
Simply open `frontend/index.html` in a browser, or use a local server:

```bash
# Using Python's built-in server
cd frontend
python -m http.server 3000
```

Frontend will be available at `http://localhost:3000`

## ☁️ Deployment

### Backend → Render
1. Push code to GitHub
2. Create new Web Service on Render
3. Connect GitHub repository
4. Render auto-detects `render.yaml` configuration
5. Deploy and copy backend URL

### Frontend → Vercel
1. Update `frontend/config.js` with Render backend URL
2. Push changes to GitHub
3. Import project to Vercel
4. Vercel auto-detects `vercel.json` configuration
5. Deploy

**📖 See [HOSTING_GUIDE.md](HOSTING_GUIDE.md) for detailed deployment instructions**

## 🔑 Default Credentials

### Admin Login
- Username: `admin`
- Password: `adminpass`

### Student Login
Students must sign up first to create team accounts.

## 🗄️ Database

- **MongoDB Atlas** cloud database (already configured)
- Connection string in `backend/app.py`
- Collections: `scores`, `users`

## 📝 API Endpoints

### Authentication
- `POST /admin_login` - Admin authentication
- `POST /student_login` - Student authentication
- `POST /student_signup` - Student registration

### Student Routes
- `GET /get_mcq_questions` - Fetch MCQ questions
- `POST /submit_mcq_score` - Submit MCQ answers
- `GET /get_scrambled_code_list` - List scrambled code files
- `POST /submit_scrambled_code` - Submit scrambled code solution
- `GET /get_buggy_code_list` - List buggy code files
- `POST /submit_debug_code` - Submit debugged code
- `POST /submit_frontend` - Submit frontend files
- `GET /student/scores` - Get student's scores

### Admin Routes
- `POST /admin_upload` - Upload challenge files
- `GET /admin/scores` - View all scores
- `GET /admin/questions` - View MCQ questions
- `GET /admin/submissions` - View student submissions
- `DELETE /admin/scores/delete` - Delete all scores

## 🎨 Features in Detail

### Round 1: MCQ
- 10-minute timer
- Randomized questions
- Multiple choice answers
- Instant score calculation

### Round 2: Code Scramble
- Support for Python, C, C++, Java
- Line-by-line scrambling
- Similarity-based scoring
- Code editor with syntax highlighting

### Round 3: Debugging
- Find and fix bugs in provided code
- Test case validation
- Multiple language support
- Real-time code execution

### Round 4: Frontend Challenge
- File upload system
- Support for text and image files
- Manual review by admins

## 🔒 Security Notes

- Change default admin credentials in production
- MongoDB connection string should use environment variables
- Implement rate limiting for API endpoints
- Add authentication tokens for enhanced security

## 🐛 Troubleshooting

### Backend Issues
- **Port already in use**: Change port in `app.py` (line 530)
- **MongoDB connection failed**: Check internet connection and MongoDB Atlas access
- **Module not found**: Run `pip install -r backend/requirements.txt`

### Frontend Issues
- **API calls failing**: Verify backend is running and CORS is enabled
- **Config not loading**: Check `config.js` has correct backend URL

## 📄 License

This project is for educational purposes.

## 👥 Contributors

Developed for JNTUA College of Engineering, Department of CSE

## 📞 Support

For deployment help, refer to [HOSTING_GUIDE.md](HOSTING_GUIDE.md)

---

Made with ❤️ for coding enthusiasts


A full-stack coding challenge platform with a Flask backend and HTML/CSS/JavaScript frontend.

## 🏗️ Project Structure

```
├── backend/              # Flask backend API
│   ├── app.py           # Main Flask application
│   ├── scrambled_code.py
│   ├── requirements.txt # Python dependencies
│   └── uploads/         # Question files and submissions
├── frontend/            # Static frontend files
│   ├── index.html      # Main HTML file
│   ├── styles.css      # Styles
│   ├── config.js       # API configuration
│   └── static/         # Static assets
├── vercel.json         # Vercel deployment config
├── render.yaml         # Render deployment config
└── package.json        # Project metadata
```

## 🚀 Deployment Instructions

### Backend Deployment (Render)

1. **Push your code to GitHub**
   ```bash
   git init
   git add .
   git commit -m "Initial commit"
   git branch -M main
   git remote add origin <your-repo-url>
   git push -u origin main
   ```

2. **Deploy to Render**
   - Go to [render.com](https://render.com) and sign in
   - Click "New +" → "Web Service"
   - Connect your GitHub repository
   - Configure:
     - **Name**: coding-challenge-backend
     - **Root Directory**: backend
     - **Build Command**: `pip install -r requirements.txt`
     - **Start Command**: `gunicorn app:app`
     - **Environment**: Python 3
   - Add environment variables if needed:
     - `PYTHON_VERSION`: 3.11.0
     - `PORT`: 10000 (auto-configured by Render)
   - Click "Create Web Service"
   - Wait for deployment (note your backend URL, e.g., `https://your-app.onrender.com`)

### Frontend Deployment (Vercel)

1. **Update vercel.json**
   - Open `vercel.json`
   - Replace `https://your-render-backend-url.onrender.com` with your actual Render backend URL

2. **Deploy to Vercel**
   - Go to [vercel.com](https://vercel.com) and sign in
   - Click "New Project"
   - Import your GitHub repository
   - Configure:
     - **Framework Preset**: Other
     - **Root Directory**: ./
     - Leave build settings as default
   - Click "Deploy"
   - Your frontend will be live at `https://your-app.vercel.app`

### Alternative: Deploy Both on Render

If you prefer to host both frontend and backend on Render:

1. Deploy backend as described above
2. For frontend:
   - Create a new "Static Site" on Render
   - **Build Command**: `echo "Static files ready"`
   - **Publish Directory**: `frontend`

## 💻 Local Development

### Backend
```bash
cd backend
python -m venv venv
venv\Scripts\activate  # Windows
pip install -r requirements.txt
python app.py
```
Backend runs on http://localhost:8000

### Frontend
For local development, simply open `frontend/index.html` in a browser or use a simple HTTP server:
```bash
cd frontend
python -m http.server 3000
```
Frontend runs on http://localhost:3000

## 🔧 Configuration

### Environment Variables (Backend)
- `PORT`: Server port (default: 8000)
- `MONGO_URI`: MongoDB connection string (already configured in app.py)

### API Configuration (Frontend)
Edit `frontend/config.js` to change the API base URL:
- Local: `http://localhost:8000`
- Production: Update after deployment

## 📝 Features

- MCQ Round
- Code Scrambling Round
- Debug Round
- Frontend Round
- Admin Panel
- Score Management
- MongoDB Integration

## 🛠️ Technologies

**Backend:**
- Flask (Python web framework)
- MongoDB (Database)
- Gunicorn (WSGI server)

**Frontend:**
- HTML/CSS/JavaScript
- CodeMirror (Code editor)

## 📄 License

MIT License

## 👥 Support

For issues or questions, please contact the development team.
