// API Configuration
// For local development, use: http://localhost:8000
// For production, replace with your Render backend URL or use /api for Vercel proxy
const API_BASE_URL = window.location.hostname === 'localhost' || window.location.hostname === '127.0.0.1'
  ? 'http://localhost:8000' 
  : 'https://your-render-backend-url.onrender.com';  // UPDATE THIS with your Render backend URL

// Helper function to build API URLs
function getApiUrl(endpoint) {
  // Remove leading slash if present
  const cleanEndpoint = endpoint.startsWith('/') ? endpoint.slice(1) : endpoint;
  return `${API_BASE_URL}/${cleanEndpoint}`;
}
