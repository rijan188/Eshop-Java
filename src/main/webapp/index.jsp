<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Eshop</title>

<style>
/* ===== RESET ===== */
*{margin:0;padding:0;box-sizing:border-box;font-family:Arial,Helvetica,sans-serif}

/* ===== BODY ===== */
body{
  background:#1e1e1e;
  color:#fff;
}

/* ===== HEADER ===== */
header{
  background:#111;
  padding:15px 40px;
}

.nav{
  display:flex;
  align-items:center;
  justify-content:space-between;
}

.nav ul{
  display:flex;
  gap:35px;
  list-style:none;
}

.nav ul li a{
  color:#fff;
  font-size:18px;
}

.brand{
  color:crimson;
  letter-spacing:6px;
  font-weight:bold;
}

/* ===== HERO ===== */
.hero{
  height:320px;
  display:flex;
  flex-direction:column;
  justify-content:center;
  align-items:center;
  text-align:center;
  background:radial-gradient(circle,#000,#111);
}

.hero h1{
  font-size:38px;
  margin-bottom:15px;
}

.hero p{
  font-size:26px;
  margin-bottom:20px;
}

.hero button{
  background:#3cff00;
  border:none;
  padding:12px 30px;
  font-size:16px;
  font-weight:bold;
  cursor:pointer;
  border-radius:4px;
}

/* ===== CATEGORIES ===== */
.categories{
  display:flex;
  justify-content:center;
  gap:20px;
  padding:40px 20px;
  overflow-x:auto;
}

.category{
  background:#222;
  width:160px;
  padding:20px;
  border-radius:90px;
  text-align:center;
  box-shadow:0 4px 12px rgba(0,0,0,.6);
}

.category h3{
  margin-top:10px;
}

/* ===== PRODUCTS ===== */
.products{
  padding:40px;
}

.products h2{
  text-align:center;
  margin-bottom:30px;
}

.product-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(220px,1fr));
  gap:30px;
}

.product{
  background:#111;
  padding:20px;
  border-radius:8px;
  text-align:left;
}

.product img{
  width:100%;
  height:180px;
  object-fit:cover;
}

.product h3{
  color:#1fa3ff;
  margin:10px 0;
}

.product p{
  color:#aaa;
  font-size:14px;
}

.price{
  margin:10px 0;
  font-weight:bold;
}

.product button{
  width:100%;
  background:#12b83f;
  border:none;
  padding:10px;
  color:#fff;
  font-weight:bold;
  cursor:pointer;
}

/* ===== FOOTER ===== */
footer{
  background:#111;
  padding:30px 40px;
}

.footer-grid{
  display:grid;
  grid-template-columns:repeat(auto-fit,minmax(200px,1fr));
  gap:30px;
}

footer h4{
  margin-bottom:10px;
}

footer p{
  font-size:13px;
  color:#aaa;
}

.copy{
  text-align:center;
  margin-top:20px;
  font-size:12px;
  color:#777;
}
</style>
</head>

<body>

<header>
  <div class="nav">
    <div class="brand">Eshop</div>
    <ul>
      <li><a href="#">Home</a></li>
      <li><a href="#">Products</a></li>
      <li><a href="#">Categories</a></li>
      <li><a href="#">Contact</a></li>
      <li><a href="login.jsp">Login</a></li>
      <li>${email}</li>
    </ul>
  </div>
</header>

<!-- HERO -->
<section class="hero">
  <h1>Shop the Best Deals Online</h1>
  <p>Exclusive offers, just for you</p>
  <button>Start Shopping</button>
</section>

<!-- CATEGORIES -->
<section class="categories">
  <div class="category"><h3>Drinks</h3></div>
  <div class="category"><h3>Foods</h3></div>
  <div class="category"><h3>Laptop</h3></div>
  <div class="category"><h3>Phone</h3></div>
  <div class="category"><h3>TV</h3></div>
  <div class="category"><h3>Men</h3></div>
  <div class="category"><h3>Women</h3></div>
  <div class="category"><h3>Home</h3></div>
  <div class="category"><h3>Beauty</h3></div>
</section>

<!-- PRODUCTS -->
<section class="products">
  <h2>Featured Products</h2>

  <div class="product-grid">
    <div class="product">
      <img src="resource/phone.png">
      <h3>Smartphone</h3>
      <p>Latest model with amazing features</p>
      <div class="price">Rs. 60,000</div>
      <button>Add to Cart</button>
    </div>

    <div class="product">
      <img src="../resources/images/laptop.png">
      <h3>Laptop</h3>
      <p>Powerful performance</p>
      <div class="price">Rs. 50,000</div>
      <button>Add to Cart</button>
    </div>

    <div class="product">
      <img src="images/tv.png">
      <h3>TV</h3>
      <p>Best TV experience</p>
      <div class="price">Rs. 55,00</div>
      <button>Add to Cart</button>
    </div>

    <div class="product">
      <img src="images/food.png">
      <h3>Food</h3>
      <p>Tasty features</p>
      <div class="price">Rs. 1,000</div>
      <button>Add to Cart</button>
    </div>
  </div>
</section>

<!-- FOOTER -->
<footer>
  <div class="footer-grid">
    <div>
      <h4>Eshop</h4>
      <p>Home</p>
      <p>Products</p>
      <p>Contact</p>
    </div>
    <div>
      <h4>SUPPORT</h4>
      <p>Order Status</p>
      <p>Shipping</p>
      <p>Privacy Policy</p>
    </div>
    <div>
      <h4>COMPANY</h4>
      <p>Payment</p>
      <p>User Login / Register</p>
      <p>Terms</p>
    </div>
    <div>
      <h4>SUBSCRIBE</h4>
      <input type="email" placeholder="Your email">
    </div>
  </div>

  <div class="copy">
    © 2025 Eshop | All rights reserved
  </div>
</footer>

</body>
</html>
