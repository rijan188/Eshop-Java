<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Login | Eshop</title>

  <style>
    * { margin: 0; padding: 0; box-sizing: border-box; font-family: Arial, Helvetica, sans-serif; }

    body {
      background-color: #1e1e1e;
      color: #fff;
    }

    a { text-decoration: none; color: inherit; }
    ul { list-style: none; }

    /* ===== HEADER ===== */
    header {
      background: #111;
      border-bottom: 1px solid #222;
      position: sticky;
      top: 0;
    }

    .top-bar {
      display: flex;
      justify-content: space-between;
      align-items: center;
      padding: 14px 40px;
    }

    .logo {
      font-size: 26px;
      font-weight: bold;
      color: crimson;
      letter-spacing: 3px;
    }

    .search-box {
      flex: 1;
      margin: 0 40px;
    }

    .search-box input {
      width: 100%;
      padding: 10px;
      background: #222;
      border: 1px solid #333;
      color: #fff;
      border-radius: 4px;
    }

    .header-actions {
      display: flex;
      gap: 20px;
      font-size: 14px;
    }

    .header-actions a {
      color: #fff;
    }

    .nav-bar {
      background: #000;
    }

    .nav-bar ul {
      display: flex;
      gap: 30px;
      padding: 14px 40px;
    }

    .nav-bar li a {
      color: #fff;
    }

    /* ===== AUTH CARD ===== */
    main {
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 80px 20px;
    }

    .auth-card {
      background: #111;
      width: 100%;
      max-width: 420px;
      padding: 30px;
      border-radius: 8px;
      border: 1px solid #333;
    }

    .auth-card h1 {
      text-align: center;
      margin-bottom: 20px;
      color: #fff;
    }

    .form-group {
      margin-bottom: 16px;
    }

    .form-group label {
      display: block;
      margin-bottom: 6px;
      font-size: 14px;
      color: #ccc;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      background: #222;
      border: 1px solid #333;
      color: #fff;
      border-radius: 4px;
    }

    .btn {
      width: 100%;
      padding: 10px;
      border: none;
      border-radius: 4px;
      background: #12b83f;
      color: #fff;
      font-weight: bold;
      cursor: pointer;
    }

    .btn:hover {
      background: #0fa334;
    }

    .toggle-text {
      margin-top: 16px;
      text-align: center;
      font-size: 14px;
      color: #ccc;
    }

    .toggle-text span {
      color: #1fa3ff;
      cursor: pointer;
      font-weight: bold;
    }

    /* ===== FOOTER ===== */
    footer {
      background: #111;
      color: #aaa;
      margin-top: 60px;
    }

    .footer-bottom {
      text-align: center;
      padding: 14px;
      font-size: 13px;
    }
  </style>
</head>

<body>

<header>
  <div class="top-bar">
    <div class="logo">Eshop</div>

    <div class="search-box">
      <input type="text" placeholder="Search products..." />
    </div>

    <div class="header-actions">
      <a href="login.jsp">Login</a>
      <a href="#">Cart</a>
    </div>
  </div>

  <nav class="nav-bar">
    <ul>
      <li><a href="index.jsp">Home</a></li>
      <li><a href="#">Shop</a></li>
      <li><a href="#">Deals</a></li>
      <li><a href="#">Contact</a></li>
    </ul>
  </nav>
</header>

<main>
  <div class="auth-card">
    <h1 id="formTitle">Login</h1>

    <!-- LOGIN FORM (UNCHANGED) -->
    <form id="loginForm" action="user" method="post">
      <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" required />
      </div>
      <div class="form-group">
        <label>Password</label>
        <input type="password" name="password" required />
      </div>
      <button class="btn" type="submit">Login</button>
    </form>

    <!-- SIGNUP FORM (UNCHANGED) -->
    <form id="signupForm" style="display:none;">
      <div class="form-group">
        <label>Name</label>
        <input type="text" required />
      </div>
       <div class="form-group">
              <label>Username</label>
              <input type="text" required />
            </div>
      <div class="form-group">
        <label>Email</label>
        <input type="email" required />
      </div>
      <div class="form-group">
        <label>Password</label>
        <input type="password" required />
      </div>
      <button class="btn" type="submit">Sign Up</button>
    </form>

    <div class="toggle-text">
      <span id="toggleText">New user? Sign up</span>
    </div>
  </div>
</main>

<footer>
  <div class="footer-bottom">
    © 2025 Eshop. All rights reserved.
  </div>
</footer>

<script>
  const toggleText = document.getElementById('toggleText');
  const loginForm = document.getElementById('loginForm');
  const signupForm = document.getElementById('signupForm');
  const formTitle = document.getElementById('formTitle');

  toggleText.addEventListener('click', () => {
    const isLogin = loginForm.style.display !== 'none';
    loginForm.style.display = isLogin ? 'none' : 'block';
    signupForm.style.display = isLogin ? 'block' : 'none';
    formTitle.innerText = isLogin ? 'Sign Up' : 'Login';
    toggleText.innerText = isLogin
      ? 'Already have an account? Login'
      : 'New user? Sign up';
  });
</script>

</body>
</html>
