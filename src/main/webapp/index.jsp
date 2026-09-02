<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.5">
  <title>VibeMart · modern e‑commerce</title>
  <!-- Fonts & Icons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f9f5f0;
      color: #1e1a17;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    :root {
      --bg: #f9f5f0;
      --card-bg: #ffffff;
      --primary: #1e1a17;
      --accent: #f77f6c;
      --accent-light: #fde8e3;
      --accent-dark: #d95c47;
      --muted: #7b6e67;
      --surface: #f2ebe6;
      --shadow: 0 12px 30px rgba(0, 0, 0, 0.04), 0 4px 8px rgba(0, 0, 0, 0.02);
      --radius: 20px;
      --container: 1260px;
      --transition: 0.25s cubic-bezier(0.2, 0, 0, 1);
    }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header */
    header {
      background: rgba(255, 252, 249, 0.85);
      backdrop-filter: blur(6px);
      border-bottom: 1px solid rgba(30, 26, 23, 0.04);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 20px;
      padding: 16px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 24px;
      letter-spacing: -0.02em;
      color: var(--primary);
    }

    .brand i {
      color: var(--accent);
      font-size: 28px;
    }

    .brand span {
      background: linear-gradient(145deg, #1e1a17, #4a3f3a);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .main-nav ul {
      display: flex;
      gap: 8px;
      list-style: none;
      align-items: center;
    }

    .main-nav a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 14px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      font-size: 0.95rem;
    }

    .main-nav a:hover,
    .main-nav a:focus-visible {
      background: var(--accent-light);
      color: var(--accent-dark);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 6px 6px 6px 18px;
      box-shadow: 0 2px 8px rgba(0,0,0,0.02);
      border: 1px solid rgba(30, 26, 23, 0.06);
      transition: var(--transition);
      min-width: 200px;
    }

    .search-wrap:focus-within {
      border-color: var(--accent);
      box-shadow: 0 4px 12px rgba(247, 127, 108, 0.08);
    }

    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
      padding: 8px 0;
      color: var(--primary);
    }

    .search-wrap button {
      background: var(--accent);
      border: 0;
      color: white;
      width: 38px;
      height: 38px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 15px;
    }

    .search-wrap button:hover {
      background: var(--accent-dark);
      transform: scale(0.96);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 12px;
    }

    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 18px;
      color: var(--primary);
      padding: 8px;
      border-radius: 40px;
      transition: var(--transition);
      cursor: pointer;
      display: inline-flex;
      align-items: center;
      justify-content: center;
    }

    .icon-btn:hover {
      background: var(--accent-light);
      color: var(--accent-dark);
    }

    .cart {
      position: relative;
      display: inline-flex;
      align-items: center;
      gap: 6px;
      background: var(--primary);
      color: white;
      padding: 8px 16px 8px 14px;
      border-radius: 60px;
      transition: var(--transition);
      font-weight: 500;
    }

    .cart i {
      font-size: 18px;
    }

    .cart:hover {
      background: var(--accent-dark);
      transform: translateY(-1px);
    }

    .cart-count {
      background: var(--accent);
      color: white;
      font-weight: 700;
      font-size: 12px;
      width: 22px;
      height: 22px;
      display: inline-grid;
      place-items: center;
      border-radius: 40px;
      margin-left: 2px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 24px;
      color: var(--primary);
      cursor: pointer;
      padding: 4px 8px;
    }

    /* mobile menu */
    #mobileMenu {
      background: white;
      border-top: 1px solid rgba(30,26,23,0.04);
      padding: 12px 0;
    }

    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 10px;
      padding: 0 8px;
    }

    #mobileMenu a {
      display: block;
      padding: 12px 14px;
      border-radius: 16px;
      font-weight: 500;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }

    #mobileMenu a:hover {
      background: var(--accent-light);
      color: var(--accent-dark);
    }

    /* hero */
    .hero {
      background: linear-gradient(165deg, #1e1a17 0%, #3a2f2a 100%);
      color: white;
      border-radius: 0 0 var(--radius) var(--radius);
      padding: 64px 24px;
      margin: 0 0 32px;
      position: relative;
      overflow: hidden;
    }

    .hero::after {
      content: '';
      position: absolute;
      right: -60px;
      bottom: -60px;
      width: 360px;
      height: 360px;
      background: radial-gradient(circle, rgba(247,127,108,0.20) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }

    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 700px;
    }

    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: clamp(2.2rem, 5vw, 3.8rem);
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 16px;
    }

    .hero h1 i {
      color: var(--accent);
    }

    .hero p {
      font-size: 1.1rem;
      opacity: 0.8;
      margin-bottom: 28px;
      max-width: 540px;
    }

    .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 12px 28px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }

    .btn-primary {
      background: var(--accent);
      color: #1e1a17;
    }

    .btn-primary:hover {
      background: var(--accent-dark);
      color: white;
      transform: translateY(-3px);
      box-shadow: 0 8px 20px rgba(247, 127, 108, 0.3);
    }

    .btn-ghost {
      background: rgba(255,255,255,0.06);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255,255,255,0.12);
      color: white;
    }

    .btn-ghost:hover {
      background: rgba(255,255,255,0.12);
      transform: translateY(-3px);
    }

    /* sections */
    .section {
      padding: 40px 0;
    }

    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 24px;
      flex-wrap: wrap;
      gap: 8px;
    }

    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
      letter-spacing: -0.02em;
    }

    .section-header .muted {
      color: var(--muted);
      font-size: 0.95rem;
    }

    .grid {
      display: grid;
      gap: 24px;
    }

    /* categories */
    .categories-grid {
      grid-template-columns: repeat(6, 1fr);
    }

    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 22px 10px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: var(--transition);
      cursor: default;
      border: 1px solid rgba(30,26,23,0.02);
    }

    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.04);
      background: var(--accent-light);
      border-color: var(--accent);
    }

    .cat-card .icon {
      font-size: 32px;
      color: var(--accent);
      margin-bottom: 6px;
    }

    .cat-card h4 {
      font-weight: 600;
      font-size: 0.95rem;
    }

    .cat-card .muted {
      font-size: 0.75rem;
      opacity: 0.7;
    }

    /* products */
    .products-grid {
      grid-template-columns: repeat(4, 1fr);
    }

    .product-card {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(30,26,23,0.02);
    }

    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: 0 24px 48px rgba(0,0,0,0.04);
    }

    .product-img {
      height: 200px;
      background: #f0ebe7;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 48px;
      color: var(--muted);
      position: relative;
    }

    .product-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .product-badge {
      position: absolute;
      top: 14px;
      left: 14px;
      background: var(--accent);
      color: #1e1a17;
      font-weight: 700;
      font-size: 11px;
      padding: 6px 12px;
      border-radius: 40px;
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }

    .product-body {
      padding: 16px 18px 12px;
      flex: 1;
    }

    .product-body h5 {
      font-weight: 600;
      font-size: 1rem;
      margin-bottom: 4px;
    }

    .product-category {
      font-size: 0.8rem;
      color: var(--muted);
      text-transform: capitalize;
      margin-bottom: 8px;
    }

    .price-row {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
    }

    .price-current {
      font-weight: 700;
      font-size: 1.1rem;
    }

    .price-old {
      color: var(--muted);
      text-decoration: line-through;
      font-size: 0.9rem;
    }

    .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      color: #f5b342;
      font-size: 0.9rem;
    }

    .rating span {
      color: var(--muted);
      font-size: 0.8rem;
    }

    .product-footer {
      display: flex;
      gap: 8px;
      padding: 12px 18px 18px;
      border-top: 1px solid rgba(30,26,23,0.03);
    }

    .add-btn {
      flex: 1;
      background: var(--primary);
      color: white;
      border: 0;
      padding: 10px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }

    .add-btn:hover {
      background: var(--accent-dark);
      transform: scale(0.98);
    }

    .wish-btn {
      background: transparent;
      border: 1px solid rgba(30,26,23,0.06);
      padding: 10px 14px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
    }

    .wish-btn:hover {
      background: var(--accent-light);
      border-color: var(--accent);
    }

    /* deal */
    .deal-card {
      display: flex;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      align-items: stretch;
    }

    .deal-img {
      width: 45%;
      background: #e3ddd8;
      min-height: 240px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 64px;
      color: var(--muted);
    }

    .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    .deal-body {
      padding: 32px 32px 32px 28px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }

    .deal-body h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
    }

    .deal-timer {
      display: flex;
      gap: 12px;
      margin: 16px 0;
    }

    .time-box {
      background: var(--primary);
      color: white;
      padding: 10px 12px;
      border-radius: 12px;
      min-width: 68px;
      text-align: center;
    }

    .time-box div:first-child {
      font-weight: 700;
      font-size: 1.3rem;
    }

    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.6;
    }

    .deal-price {
      display: flex;
      align-items: center;
      gap: 16px;
      margin: 8px 0 12px;
    }

    .deal-price .price {
      font-size: 1.8rem;
      font-weight: 700;
    }

    .deal-discount {
      background: #ff4757;
      color: white;
      padding: 4px 14px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 0.9rem;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }

    .testimonial-card {
      min-width: 280px;
      background: white;
      padding: 22px;
      border-radius: var(--radius);
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      border: 1px solid rgba(30,26,23,0.02);
    }

    .testimonial-card .rating {
      color: #f5b342;
      margin-bottom: 8px;
    }

    .testimonial-card p {
      font-size: 0.95rem;
      color: #2d2622;
    }

    .testimonial-author {
      display: flex;
      align-items: center;
      gap: 12px;
      margin-top: 14px;
    }

    .testimonial-author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 60px;
      background: #ddd6d0;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--muted);
    }

    /* newsletter */
    .newsletter-box {
      background: var(--primary);
      color: white;
      border-radius: var(--radius);
      padding: 40px 32px;
      text-align: center;
    }

    .newsletter-box h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 1.8rem;
    }

    .newsletter-box p {
      opacity: 0.7;
      margin: 8px 0 20px;
    }

    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }

    .newsletter-form input {
      padding: 14px 20px;
      border-radius: 60px;
      border: 0;
      width: 300px;
      max-width: 100%;
      background: rgba(255,255,255,0.08);
      color: white;
      outline: none;
      font-size: 1rem;
      border: 1px solid rgba(255,255,255,0.06);
    }

    .newsletter-form input::placeholder {
      color: rgba(255,255,255,0.4);
    }

    .newsletter-form input:focus {
      background: rgba(255,255,255,0.12);
    }

    .newsletter-form .btn {
      background: var(--accent);
      color: #1e1a17;
    }

    .newsletter-form .btn:hover {
      background: white;
      color: var(--primary);
    }

    #newsletterMsg {
      margin-top: 16px;
      font-size: 0.9rem;
      color: #a3d8c0;
    }

    /* footer */
    footer {
      padding: 40px 0 24px;
      border-top: 1px solid rgba(30,26,23,0.04);
      margin-top: 20px;
    }

    .footer-grid {
      display: flex;
      flex-wrap: wrap;
      gap: 40px;
      justify-content: space-between;
    }

    .footer-brand p {
      color: var(--muted);
      max-width: 280px;
      margin-top: 6px;
    }

    .footer-social {
      display: flex;
      gap: 12px;
      margin-top: 12px;
    }

    .footer-social a {
      background: var(--surface);
      width: 40px;
      height: 40px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      transition: var(--transition);
    }

    .footer-social a:hover {
      background: var(--accent-light);
      color: var(--accent-dark);
    }

    .footer-links {
      display: flex;
      gap: 48px;
      flex-wrap: wrap;
    }

    .footer-links h5 {
      font-weight: 600;
      margin-bottom: 8px;
    }

    .footer-links div {
      color: var(--muted);
      line-height: 1.9;
      font-size: 0.95rem;
    }

    .footer-copy {
      text-align: center;
      color: var(--muted);
      font-size: 0.8rem;
      margin-top: 32px;
      border-top: 1px solid rgba(30,26,23,0.04);
      padding-top: 20px;
    }

    /* responsive */
    @media (max-width: 1200px) {
      .categories-grid { grid-template-columns: repeat(3, 1fr); }
      .products-grid { grid-template-columns: repeat(3, 1fr); }
    }

    @media (max-width: 992px) {
      .main-nav { display: none; }
      .mobile-toggle { display: inline-block; }
      .products-grid { grid-template-columns: repeat(2, 1fr); }
      .categories-grid { grid-template-columns: repeat(2, 1fr); }
      .deal-card { flex-direction: column; }
      .deal-img { width: 100%; height: 200px; }
    }

    @media (max-width: 600px) {
      .hero { padding: 48px 20px; }
      .products-grid { grid-template-columns: 1fr; }
      .categories-grid { grid-template-columns: 1fr; }
      .deal-body { padding: 24px; }
      .search-wrap { min-width: 140px; }
      .header-inner { gap: 12px; }
      .footer-grid { flex-direction: column; gap: 24px; }
    }

    /* utilities */
    .muted { color: var(--muted); }
    .text-center { text-align: center; }
    .mt-1 { margin-top: 8px; }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand">
        <i class="fas fa-store-alt"></i>
        <span>VibeMart</span>
      </a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search ..." aria-label="Search">
        <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
      </div>

      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <a href="#" class="cart" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCount">0</span>
        </a>
      </div>
    </div>
  </div>

  <!-- mobile menu -->
  <div id="mobileMenu" style="display:none;">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Categories</a></li>
        <li><a href="#products">Trending</a></li>
        <li><a href="#deals">Deals</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="hero">
    <div class="container hero-content">
      <h1>New drop · <i>winter</i> edit</h1>
      <p>Discover bold style, smart tech, and everyday essentials — curated for the modern soul.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Shop now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">Explore deals</button>
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section container" id="categories">
    <div class="section-header">
      <h2>Categories</h2>
      <span class="muted">Explore by interest</span>
    </div>
    <div class="grid categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- products -->
  <section class="section container" id="products">
    <div class="section-header">
      <h2>Trending now</h2>
      <span class="muted">Popular picks</span>
    </div>
    <div class="grid products-grid" id="productsGrid"></div>
  </section>

  <!-- deal -->
  <section class="section container" id="deals">
    <div class="section-header">
      <h2>Flash sale</h2>
      <span class="muted">Limited time</span>
    </div>
    <div class="deal-card">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook Air M2">
      </div>
      <div class="deal-body">
        <h3>MacBook Air M2</h3>
        <p class="muted">Thin, light, and ridiculously powerful.</p>
        <div class="deal-timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$999</span>
          <span class="price-old">$1,199</span>
          <span class="deal-discount">-17%</span>
        </div>
        <p style="margin:6px 0 12px;"><strong>12</strong> left at this price</p>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Buy now</button>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>Real voices</h2>
      <span class="muted">From our community</span>
    </div>
    <div class="testimonials-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Absolutely love the curation. Every piece feels intentional.”</p>
        <div class="testimonial-author">
          <div class="avatar"><i class="fas fa-user"></i></div>
          <div><strong>Ava Martin</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
        <p>“Super fast shipping and the quality is top-tier.”</p>
        <div class="testimonial-author">
          <div class="avatar"><i class="fas fa-user"></i></div>
          <div><strong>Michael Lee</strong><div class="muted" style="font-size:0.8rem;">Frequent buyer</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“My new go-to store for unique finds. 10/10.”</p>
        <div class="testimonial-author">
          <div class="avatar"><i class="fas fa-user"></i></div>
          <div><strong>Elena Park</strong><div class="muted" style="font-size:0.8rem;">Designer</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section container">
    <div class="newsletter-box">
      <h3>Stay in the loop</h3>
      <p>Get early access to drops & exclusive offers</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Your email" required>
        <button class="btn" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <div style="font-family:'Space Grotesk',sans-serif;font-weight:700;font-size:22px;"><i class="fas fa-store-alt" style="color:var(--accent);"></i> VibeMart</div>
      <p>Modern e‑commerce with soul. Built for discovery.</p>
      <div class="footer-social">
        <a href="#" aria-label="Instagram"><i class="fab fa-instagram"></i></a>
        <a href="#" aria-label="Twitter"><i class="fab fa-twitter"></i></a>
        <a href="#" aria-label="YouTube"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div class="footer-links">
      <div><h5>Company</h5><div>About<br>Careers<br>Press</div></div>
      <div><h5>Support</h5><div>Help<br>Returns<br>Contact</div></div>
    </div>
  </div>
  <div class="footer-copy">© <span id="year"></span> VibeMart · all rights reserved</div>
</footer>

<script>
  // ----- data -----
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt' },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop' },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt' },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones' },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints' },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch' }
  ];

  const PRODUCTS = [
    { id:1, title:'iPhone 14 Pro Max', price:1099, oldPrice:1199, rating:5, reviews:128, badge:'New', img:'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category:'phones' },
    { id:2, title:'MacBook Pro 14"', price:1999, rating:4, reviews:86, img:'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category:'laptops' },
    { id:3, title:'Apple Watch S8', price:349, oldPrice:399, rating:5, reviews:214, badge:'-25%', img:'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:4, title:'Nike Air Max 270', price:150, rating:4, reviews:53, img:'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category:'footwear' },
    { id:5, title:'Sony A7 IV', price:2499, rating:5, reviews:42, img:'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category:'gadgets' },
    { id:6, title:'Chanel No.5', price:120, rating:5, reviews:189, img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:7, title:'Travel Backpack', price:79, oldPrice:99, rating:4, reviews:67, img:'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category:'accessories' },
    { id:8, title:'Sony WH-1000XM5', price:399, rating:5, reviews:156, img:'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category:'gadgets' }
  ];

  // ----- refs -----
  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');
  let cartCount = 0;

  // ----- render -----
  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(cat => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `
        <div class="icon"><i class="fas ${cat.icon}"></i></div>
        <h4>${cat.name}</h4>
        <div class="muted">explore</div>
      `;
      el.addEventListener('click', () => {
        searchInput.value = cat.name;
        filterProducts(cat.name);
        document.getElementById('products').scrollIntoView({ behavior: 'smooth', block: 'start' });
      });
      categoriesGrid.appendChild(el);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    list.forEach(p => {
      const el = document.createElement('article');
      el.className = 'product-card';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      el.innerHTML = `
        <div class="product-img">
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
        </div>
        <div class="product-body">
          <h5>${p.title}</h5>
          <div class="product-category">${p.category}</div>
          <div class="price-row">
            <span class="price-current">$${p.price.toLocaleString()}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toLocaleString()}</span>` : ''}
            <span class="rating"><i class="fas fa-star" style="color:#f5b342;"></i> ${p.rating} <span>(${p.reviews})</span></span>
          </div>
        </div>
        <div class="product-footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-plus"></i> Add</button>
          <button class="wish-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        </div>
      `;
      productsGrid.appendChild(el);
    });
    document.querySelectorAll('.add-btn').forEach(btn => {
      btn.addEventListener('click', (e) => {
        const id = Number(btn.dataset.id);
        addToCart(id);
      });
    });
  }

  function filterProducts(query) {
    const q = query.trim().toLowerCase();
    if (!q) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(q) || p.category.toLowerCase().includes(q));
    renderProducts(filtered);
  }

  // ----- cart -----
  function addToCart(id) {
    const p = PRODUCTS.find(x => x.id === id);
    if (!p) return;
    cartCount++;
    cartCountEl.textContent = cartCount;
    const btn = document.querySelector(`.add-btn[data-id="${id}"]`);
    if (btn) {
      const orig = btn.innerHTML;
      btn.innerHTML = '<i class="fas fa-check"></i> Added';
      btn.disabled = true;
      setTimeout(() => { btn.innerHTML = orig; btn.disabled = false; }, 1200);
    }
  }

  // ----- search -----
  searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', (e) => { if (e.key === 'Enter') filterProducts(searchInput.value); });

  // ----- mobile toggle -----
  document.getElementById('mobileToggle').addEventListener('click', () => {
    const menu = document.getElementById('mobileMenu');
    menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
  });

  // ----- newsletter -----
  document.getElementById('newsletterForm').addEventListener('submit', (e) => {
    e.preventDefault();
    const email = document.getElementById('newsletterEmail').value.trim();
    const msg = document.getElementById('newsletterMsg');
    if (!email || !email.includes('@')) {
      msg.textContent = 'Please enter a valid email.';
      msg.style.color = '#f8b4b4';
      msg.style.display = 'block';
      return;
    }
    msg.textContent = 'Thanks! You\'re on the list.';
    msg.style.color = '#a3d8c0';
    msg.style.display = 'block';
    document.getElementById('newsletterEmail').value = '';
    setTimeout(() => msg.style.display = 'none', 3000);
  });

  // ----- deal timer -----
  (function() {
    const target = new Date(Date.now() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      const days = Math.floor(diff / (24*3600*1000));
      const hours = Math.floor((diff % (24*3600*1000)) / (3600*1000));
      const mins = Math.floor((diff % (3600*1000)) / (60*1000));
      const secs = Math.floor((diff % (60*1000)) / 1000);
      document.getElementById('dealDays').textContent = days;
      document.getElementById('dealHours').textContent = String(hours).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(mins).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(secs).padStart(2,'0');
      if (diff <= 0) clearInterval(interval);
    }
    tick();
    const interval = setInterval(tick, 1000);
  })();

  // ----- buttons -----
  document.getElementById('shopNow').addEventListener('click', () => {
    document.getElementById('products').scrollIntoView({ behavior: 'smooth' });
  });
  document.getElementById('exploreDeals').addEventListener('click', () => {
    document.getElementById('deals').scrollIntoView({ behavior: 'smooth' });
  });
  document.getElementById('buyDeal').addEventListener('click', () => {
    cartCount++;
    cartCountEl.textContent = cartCount;
    alert('Added MacBook Air M2 to cart (demo).');
  });

  // ----- init -----
  renderCategories();
  renderProducts(PRODUCTS);
  document.getElementById('year').textContent = new Date().getFullYear();
  cartCountEl.textContent = cartCount;
</script>
</body>
</html>
