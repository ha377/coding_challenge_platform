# 🚀 Quick Deployment Guide

## Step 1: Deploy Backend to Render

1. Push code to GitHub
2. Go to https://render.com → New Web Service
3. Connect your GitHub repo
4. Settings:
   - **Root Directory**: `backend`
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `gunicorn app:app`
5. Click "Create Web Service"
6. **IMPORTANT**: Copy your backend URL (e.g., `https://your-app-abc123.onrender.com`)

## Step 2: Update Frontend Configuration

Open `frontend/config.js` and replace:
```javascript
const API_BASE_URL = ... 'https://your-render-backend-url.onrender.com';
```
With your actual Render backend URL from Step 1:
```javascript
const API_BASE_URL = ... 'https://your-app-abc123.onrender.com';
```

## Step 3: Deploy Frontend to Vercel

**Option A: Vercel (Recommended)**
1. Go to https://vercel.com → New Project
2. Import your GitHub repo
3. Settings:
   - **Root Directory**: Leave as `./`
   - **Output Directory**: `frontend`
4. Click "Deploy"
5. Done! Your site is live at `https://your-project.vercel.app`

**Option B: Render Static Site**
1. Go to https://render.com → New Static Site
2. Connect your repo
3. Settings:
   - **Build Command**: `echo "Ready"`
   - **Publish Directory**: `frontend`
4. Click "Create Static Site"

## Step 4: Test Your Application

Visit your Vercel URL and test:
- Login functionality
- MCQ questions
- Code challenges
- Admin panel

## 🔧 Important Files to Update Before Deployment

1. ✅ `frontend/config.js` - Update with your Render backend URL
2. ✅ `vercel.json` - (Optional) If using Vercel proxy, update the destination URL
3. ✅ Commit and push changes

## 📝 Environment Variables (Backend on Render)

If needed, add these in Render dashboard:
- `PORT`: Auto-configured by Render (10000)
- `PYTHON_VERSION`: 3.11.0
- `MONGO_URI`: Already in code, or add as secret

## 🐛 Troubleshooting

**Backend not working?**
- Check Render logs for errors
- Ensure MongoDB connection string is correct
- Verify all dependencies in requirements.txt

**Frontend can't connect to backend?**
- Verify the backend URL in config.js
- Check browser console for CORS errors
- Ensure backend is running on Render

**CORS errors?**
- Backend already has CORS enabled with Flask-CORS
- If still issues, check Render backend logs

## 🎉 Success!

Your coding challenge platform should now be live!
- Frontend: https://your-project.vercel.app
- Backend: https://your-app.onrender.com
