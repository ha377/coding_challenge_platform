# Hosting Guide for Coding Challenge Platform

## Prerequisites
- GitHub account
- Render account (render.com)
- Vercel account (vercel.com)

## Project Structure
```
coding_challenge_platform/
├── backend/              # Flask backend (Deploy to Render)
│   ├── app.py
│   ├── requirements.txt
│   └── uploads/
├── frontend/            # Static frontend (Deploy to Vercel)
│   ├── index.html
│   ├── styles.css
│   ├── config.js
│   └── static/
├── render.yaml         # Render configuration
└── vercel.json        # Vercel configuration
```

## Step 1: Deploy Backend to Render

### 1.1 Create Render Account
- Go to https://render.com
- Sign up or log in

### 1.2 Deploy from GitHub
1. Click **"New +"** → **"Web Service"**
2. Connect your GitHub repository
3. Select the repository: `coding-challenge-platform`
4. Configure the service:
   - **Name**: `coding-challenge-backend`
   - **Environment**: `Python 3`
   - **Region**: Choose nearest region
   - **Branch**: `main`
   - **Build Command**: `pip install -r backend/requirements.txt`
   - **Start Command**: `cd backend && python app.py`
   
5. **Environment Variables** (click "Advanced"):
   - Add `PORT` = `8000`
   - Add `PYTHON_VERSION` = `3.11.0`

6. Click **"Create Web Service"**

7. Wait for deployment (5-10 minutes)

8. **Copy your backend URL**: `https://your-app-name.onrender.com`

### 1.3 Note Your Backend URL
Your Render backend URL will look like:
```
https://coding-challenge-backend-xxxx.onrender.com
```
**Save this URL - you'll need it for the frontend!**

---

## Step 2: Update Frontend Configuration

### 2.1 Update config.js
Open `frontend/config.js` and replace the API URL:

```javascript
const API_BASE_URL = 'https://your-render-backend-url.onrender.com';
```

Replace with your actual Render backend URL from Step 1.3

### 2.2 Commit Changes
```bash
git add frontend/config.js
git commit -m "Update API URL for production"
git push origin main
```

---

## Step 3: Deploy Frontend to Vercel

### 3.1 Create Vercel Account
- Go to https://vercel.com
- Sign up or log in with GitHub

### 3.2 Deploy from GitHub
1. Click **"Add New..."** → **"Project"**
2. Import your GitHub repository: `coding-challenge-platform`
3. Configure the project:
   - **Framework Preset**: `Other`
   - **Root Directory**: Leave as `./` (root)
   - **Build Command**: Leave empty or `echo "No build needed"`
   - **Output Directory**: `frontend`
   - **Install Command**: Leave empty

4. Click **"Deploy"**

5. Wait for deployment (2-3 minutes)

### 3.3 Your Frontend URL
Your Vercel frontend URL will look like:
```
https://your-project-name.vercel.app
```

---

## Step 4: Test Your Application

1. Visit your Vercel URL: `https://your-project-name.vercel.app`
2. Test login functionality
3. Test all rounds
4. Verify admin panel

---

## Important Notes

### Backend (Render)
- **Free tier**: May sleep after 15 minutes of inactivity
- **First request**: May take 30-60 seconds to wake up
- **Persistent storage**: Use MongoDB Atlas (already configured)
- **File uploads**: Stored temporarily, consider using cloud storage for production

### Frontend (Vercel)
- **Free tier**: Unlimited bandwidth
- **Auto-deploys**: On every push to main branch
- **Custom domain**: Can add your own domain

### MongoDB
- Already using MongoDB Atlas (cloud database)
- Connection string in `app.py` is persistent
- Data survives deployments

---

## Troubleshooting

### Backend Issues
- Check Render logs: Dashboard → Service → Logs
- Verify environment variables are set
- Ensure requirements.txt has all dependencies

### Frontend Issues
- Verify `config.js` has correct backend URL
- Check browser console for errors (F12)
- Ensure CORS is enabled in backend (already done)

### Connection Issues
- Backend must be deployed BEFORE frontend
- Frontend config.js must point to backend URL
- Check if backend is sleeping (free tier)

---

## Updating Your Application

### Backend Updates
```bash
git add backend/
git commit -m "Update backend"
git push origin main
```
Render auto-deploys on push.

### Frontend Updates
```bash
git add frontend/
git commit -m "Update frontend"
git push origin main
```
Vercel auto-deploys on push.

---

## Cost Information

### Free Tier Limits
- **Render**: 750 hours/month (enough for 1 service)
- **Vercel**: Unlimited deployments, 100GB bandwidth
- **MongoDB Atlas**: 512MB storage (free tier)

All free tiers are sufficient for this project!

---

## Support

For issues:
1. Check Render logs
2. Check Vercel deployment logs
3. Check browser console (F12)
4. Verify all URLs are correct
