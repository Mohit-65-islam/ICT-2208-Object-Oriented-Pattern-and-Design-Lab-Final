<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Tangail District Upazila Quiz</title>
    <style>
        body { font-family: Arial, sans-serif; background:#f4f6f8; display:flex; align-items:center; justify-content:center; height:100vh; margin:0; }
        .card { background:#fff; padding:40px; border-radius:10px; box-shadow:0 4px 12px rgba(0,0,0,0.1); width:360px; text-align:center; }
        h1 { font-size:22px; color:#7a2d1c; margin-bottom:6px; }
        p { color:#555; font-size:14px; margin-bottom:24px; }
        input[type=text] { width:100%; padding:10px; margin-bottom:16px; border:1px solid #ccc; border-radius:6px; box-sizing:border-box; font-size:15px; }
        button { width:100%; padding:10px; background:#7a2d1c; color:#fff; border:none; border-radius:6px; font-size:15px; cursor:pointer; }
        button:hover { background:#5f2215; }
        .error { color:#c0392b; font-size:13px; margin-bottom:10px; }
        a { display:block; margin-top:14px; font-size:13px; color:#7a2d1c; }
    </style>
</head>
<body>
    <div class="card">
        <h1>Tangail District Upazila Quiz</h1>
        <p>10 questions on the crops, geology, and educational institutions of Tangail Sadar, Basail, Bhuapur, Delduar, Dhanbari, Ghatail, Gopalpur, Kalihati, Madhupur, Mirzapur, Nagarpur & Sakhipur.</p>

        <% if ("missing_name".equals(request.getParameter("error"))) { %>
            <div class="error">Please enter your name to start.</div>
        <% } %>

        <form action="quiz" method="get">
            <input type="text" name="name" placeholder="Enter your name" required>
            <button type="submit">Start Quiz</button>
        </form>
        <a href="leaderboard">View Leaderboard</a>
    </div>
</body>
</html>
