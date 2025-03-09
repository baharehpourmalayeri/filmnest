🎬 FilmNest: A Film Review Website

A dynamic film review platform built with Vue 3, a PostgreSQL database and Express.js, allowing users to browse and review films.

🚀 Technologies Used

Frontend

  ✅ Vue 3 – Modern JavaScript framework
  
  ✅ Vue Router – Handles navigation between pages
  
  ✅ Swiper.js – Interactive sliders for featured films

Backend

  ✅ Express.js – Server framework for handling requests
  
  ✅ PostgreSQL (pg) – Database for storing film reviews
  
  ✅ Dotenv – Manages environment variables
  
  ✅ CORS – Enables cross-origin requests


🔧 How to Set Up and Run the Project

1. Clone the Repository:

git clone https://github.com/yourusername/filmnest.git
cd filmnest

2. Set Up the Backend

-Navigate to the backend folder:
cd backend

-Install dependencies:
npm install

-Set up the PostgreSQL database (ensure you have PostgreSQL installed):
-createdb filmnest

-Create a .env file in the backend directory and add:
DATABASE_URL=your_postgresql_connection_string
PORT=5000

-Start the backend server:
node server.js
The backend runs at http://localhost:5000

3. Set Up the Frontend

-Navigate to the frontend folder:
cd ../frontend

-Install dependencies:
npm install

-Start the frontend server:
npm run dev
