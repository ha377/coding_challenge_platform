# GitHub Setup and Push Instructions

## Step 1: Create GitHub Repository

### Option A: Via GitHub Website (Recommended)
1. Go to https://github.com
2. Log in with:
   - Username: `syedbasha27`
   - Password: `ssb123456@.com`
3. Click the **"+"** icon in top right → **"New repository"**
4. Fill in:
   - **Repository name**: `coding-challenge-platform`
   - **Description**: `JNTUA Coding Challenge Platform - Multi-round programming competition system`
   - **Visibility**: Choose **Public** or **Private**
   - **⚠️ IMPORTANT**: Do NOT initialize with README, .gitignore, or license (we already have these)
5. Click **"Create repository"**
6. Copy the repository URL shown (should be: `https://github.com/syedbasha27/coding-challenge-platform.git`)

### Option B: Via GitHub CLI (if installed)
```bash
gh repo create coding-challenge-platform --public --source=. --remote=origin
```

## Step 2: Push Code to GitHub

Once the repository is created on GitHub, run these commands:

```bash
cd c:\Users\ssb18\Desktop\finalcoding\CODING\coding_challenge_platform

# Check current status
git status

# If remote already added (skip if error)
git remote remove origin

# Add the GitHub repository as remote
git remote add origin https://github.com/syedbasha27/coding-challenge-platform.git

# Push to GitHub
git push -u origin main
```

**If prompted for credentials:**
- Username: `syedbasha27`
- Password: `ssb123456@.com` OR use Personal Access Token (if 2FA enabled)

## Step 3: Verify Upload

1. Go to https://github.com/syedbasha27/coding-challenge-platform
2. You should see all your files uploaded
3. Check that README.md is displaying correctly

---

## Alternative: Using Personal Access Token (if password fails)

GitHub may require a Personal Access Token instead of password for authentication.

### Create Personal Access Token:
1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click "Generate new token (classic)"
3. Give it a name: "Coding Challenge Platform"
4. Select scopes: `repo` (all checkboxes under repo)
5. Click "Generate token"
6. **COPY THE TOKEN** (you won't see it again!)
7. Use this token as your password when pushing

### Push with Token:
```bash
git remote set-url origin https://syedbasha27:YOUR_PERSONAL_ACCESS_TOKEN@github.com/syedbasha27/coding-challenge-platform.git
git push -u origin main
```

---

## Troubleshooting

### Error: "remote origin already exists"
```bash
git remote remove origin
git remote add origin https://github.com/syedbasha27/coding-challenge-platform.git
```

### Error: "repository not found"
- Make sure you created the repository on GitHub first
- Check spelling of username and repository name
- Verify you're logged into the correct GitHub account

### Error: "Authentication failed"
- Try using Personal Access Token instead of password
- Make sure username is correct: `syedbasha27`
- Check if 2FA is enabled on your GitHub account

### Error: "Permission denied"
- Verify you have write access to the repository
- Try using HTTPS instead of SSH
- Use Personal Access Token

---

## Next Steps After Successful Push

1. ✅ Code is on GitHub
2. 📦 Deploy Backend to Render (see HOSTING_GUIDE.md)
3. 🚀 Deploy Frontend to Vercel (see HOSTING_GUIDE.md)
4. 🎉 Your application is live!

---

## Quick Reference

**GitHub Repository URL**: https://github.com/syedbasha27/coding-challenge-platform

**Clone Command** (for others):
```bash
git clone https://github.com/syedbasha27/coding-challenge-platform.git
```

**Update Repository** (after making changes):
```bash
git add .
git commit -m "Description of changes"
git push origin main
```
