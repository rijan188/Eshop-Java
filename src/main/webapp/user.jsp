<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup Form</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .signup-container {
            background: white;
            padding: 25px;
            border-radius: 10px;
            width: 320px;
            box-shadow: 0 0 15px rgba(0,0,0,0.1);
        }

        .signup-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .signup-container label {
            font-weight: bold;
        }

        .signup-container input {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .signup-container button {
            width: 100%;
            padding: 10px;
            background: #4CAF50;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        .signup-container button:hover {
            background: #45a049;
        }
    </style>
</head>
<body>

<div class="signup-container">
    <h2>Signup</h2>

    <form action="user" method="POST">
        <label for="username">Username</label>
        <input type="text" id="username" name="username" required>

        <label for="email">Email</label>
        <input type="email" id="email" name="email" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required minlength="6">

        <button type="submit">Create Account</button>
    </form>
</div>

</body>
</html>