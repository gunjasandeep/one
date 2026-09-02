<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Starbucks · Premium Coffee</title>
  <!-- Google Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,500;14..32,600;14..32,700&family=Space+Grotesk:wght@500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Inter', sans-serif;
      background: #f5f0eb;
      color: #1e1a16;
      line-height: 1.5;
      -webkit-font-smoothing: antialiased;
    }

    :root {
      --bg: #f5f0eb;
      --card: #ffffff;
      --primary: #1e1a16;
      --green: #006241;
      --green-light: #d4e9e0;
      --green-dark: #004e33;
      --accent: #d4a373;
      --accent-light: #f4e6d8;
      --muted: #7a6e67;
      --surface: #ede7e1;
      --shadow-sm: 0 4px 12px rgba(0,0,0,0.02), 0 2px 6px rgba(0,0,0,0.02);
      --shadow-md: 0 12px 32px rgba(0,0,0,0.04), 0 4px 12px rgba(0,0,0,0.02);
      --shadow-lg: 0 24px 56px rgba(0,0,0,0.06), 0 8px 20px rgba(0,0,0,0.02);
      --radius: 20px;
      --radius-sm: 12px;
      --container: 1280px;
      --transition: 0.2s cubic-bezier(0.2, 0, 0, 1);
    }

    .container {
      max-width: var(--container);
      margin: 0 auto;
      padding: 0 24px;
    }

    /* ----- header (Starbucks style) ----- */
    header {
      background: rgba(255, 252, 249, 0.88);
      backdrop-filter: blur(8px);
      border-bottom: 1px solid rgba(0, 98, 65, 0.08);
      position: sticky;
      top: 0;
      z-index: 60;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 14px 0;
      flex-wrap: wrap;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 26px;
      letter-spacing: -0.02em;
      color: var(--green);
    }
    .brand i {
      font-size: 28px;
      color: var(--green);
    }
    .brand span {
      background: linear-gradient(145deg, #006241, #004e33);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
    }

    .main-nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
      align-items: center;
    }
    .main-nav a {
      display: flex;
      align-items: center;
      gap: 8px;
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      color: var(--primary);
      transition: var(--transition);
      font-size: 0.95rem;
    }
    .main-nav a:hover,
    .main-nav a:focus-visible {
      background: var(--green-light);
      color: var(--green-dark);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: white;
      border-radius: 60px;
      padding: 4px 4px 4px 20px;
      box-shadow: var(--shadow-sm);
      border: 1px solid rgba(0, 98, 65, 0.06);
      transition: var(--transition);
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--green);
      box-shadow: 0 4px 16px rgba(0, 98, 65, 0.08);
    }
    .search-wrap input {
      border: 0;
      background: transparent;
      outline: none;
      width: 100%;
      font-size: 14px;
      padding: 10px 0;
      color: var(--primary);
    }
    .search-wrap button {
      background: var(--green);
      border: 0;
      color: white;
      width: 42px;
      height: 42px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
      font-size: 16px;
    }
    .search-wrap button:hover {
      background: var(--green-dark);
      transform: scale(0.96);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 8px;
    }
    .icon-btn {
      background: transparent;
      border: 0;
      font-size: 20px;
      color: var(--primary);
      padding: 10px;
      border-radius: 40px;
      transition: var(--transition);
      cursor: pointer;
    }
    .icon-btn:hover {
      background: var(--green-light);
      color: var(--green-dark);
    }

    .cart {
      background: var(--green);
      color: white;
      padding: 10px 20px 10px 18px;
      border-radius: 60px;
      display: inline-flex;
      align-items: center;
      gap: 10px;
      font-weight: 600;
      transition: var(--transition);
      border: 0;
      cursor: pointer;
    }
    .cart:hover {
      background: var(--green-dark);
      transform: translateY(-2px);
    }
    .cart i {
      font-size: 18px;
    }
    .cart-count {
      background: var(--accent);
      color: #1e1a16;
      font-weight: 700;
      font-size: 13px;
      width: 24px;
      height: 24px;
      display: inline-grid;
      place-items: center;
      border-radius: 40px;
    }

    .mobile-toggle {
      display: none;
      background: transparent;
      border: 0;
      font-size: 24px;
      cursor: pointer;
      padding: 6px;
      color: var(--primary);
    }
    #mobileMenu {
      background: white;
      border-top: 1px solid rgba(0, 98, 65, 0.06);
      padding: 16px 0;
      display: none;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
      padding: 0 8px;
    }
    #mobileMenu a {
      display: block;
      padding: 14px 18px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      background: var(--surface);
      color: var(--primary);
      transition: var(--transition);
    }
    #mobileMenu a:hover {
      background: var(--green-light);
      color: var(--green-dark);
    }

    /* ----- hero (Starbucks vibe) ----- */
    .hero {
      background: linear-gradient(135deg, #1e3a2f 0%, #0f2b21 100%);
      color: white;
      border-radius: 0 0 var(--radius) var(--radius);
      padding: 72px 24px;
      margin-bottom: 40px;
      position: relative;
      overflow: hidden;
    }
    .hero::after {
      content: '';
      position: absolute;
      right: -80px;
      bottom: -80px;
      width: 480px;
      height: 480px;
      background: radial-gradient(circle, rgba(212, 163, 115, 0.12) 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
    }
    .hero-content {
      position: relative;
      z-index: 2;
      max-width: 680px;
    }
    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: clamp(2.4rem, 6vw, 4rem);
      letter-spacing: -0.02em;
      line-height: 1.1;
      margin-bottom: 14px;
    }
    .hero h1 i {
      color: var(--accent);
    }
    .hero p {
      font-size: 1.15rem;
      opacity: 0.8;
      margin-bottom: 32px;
      max-width: 500px;
    }
    .btn-group {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
    }
    .btn {
      display: inline-flex;
      align-items: center;
      gap: 12px;
      padding: 14px 32px;
      border-radius: 60px;
      font-weight: 600;
      border: 0;
      cursor: pointer;
      transition: var(--transition);
      font-size: 1rem;
    }
    .btn-primary {
      background: var(--accent);
      color: #1e1a16;
    }
    .btn-primary:hover {
      background: #c28f5c;
      color: white;
      transform: translateY(-3px);
      box-shadow: 0 12px 28px rgba(212, 163, 115, 0.25);
    }
    .btn-ghost {
      background: rgba(255, 255, 255, 0.06);
      backdrop-filter: blur(4px);
      border: 1px solid rgba(255, 255, 255, 0.1);
      color: white;
    }
    .btn-ghost:hover {
      background: rgba(255, 255, 255, 0.14);
      transform: translateY(-3px);
    }

    /* ----- sections ----- */
    .section {
      padding: 48px 0;
    }
    .section-header {
      display: flex;
      align-items: baseline;
      justify-content: space-between;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 8px;
    }
    .section-header h2 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
      letter-spacing: -0.02em;
      color: var(--green);
    }
    .section-header .muted {
      color: var(--muted);
      font-size: 0.95rem;
    }

    .grid {
      display: grid;
      gap: 24px;
    }

    /* categories (coffee themed) */
    .categories-grid {
      grid-template-columns: repeat(6, 1fr);
    }
    .cat-card {
      background: white;
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      border: 1px solid rgba(0, 98, 65, 0.04);
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-md);
      background: var(--green-light);
      border-color: var(--green);
    }
    .cat-card .icon {
      font-size: 36px;
      color: var(--green);
      margin-bottom: 6px;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 1rem;
    }
    .cat-card .muted {
      font-size: 0.75rem;
      opacity: 0.6;
    }

    /* products (drinks & food) */
    .products-grid {
      grid-template-columns: repeat(4, 1fr);
    }
    .product-card {
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
      display: flex;
      flex-direction: column;
      border: 1px solid rgba(0, 98, 65, 0.04);
    }
    .product-card:hover {
      transform: translateY(-8px);
      box-shadow: var(--shadow-lg);
    }
    .product-img {
      height: 200px;
      background: #ede7e1;
      display: flex;
      align-items: center;
      justify-content: center;
      position: relative;
      overflow: hidden;
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
      color: #1e1a16;
      font-weight: 700;
      font-size: 11px;
      padding: 6px 14px;
      border-radius: 40px;
      text-transform: uppercase;
      letter-spacing: 0.3px;
    }
    .product-body {
      padding: 18px 18px 10px;
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
      border-top: 1px solid rgba(0, 98, 65, 0.04);
    }
    .add-btn {
      flex: 1;
      background: var(--green);
      color: white;
      border: 0;
      padding: 12px;
      border-radius: 60px;
      font-weight: 600;
      cursor: pointer;
      transition: var(--transition);
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 8px;
    }
    .add-btn:hover {
      background: var(--green-dark);
      transform: scale(0.98);
    }
    .wish-btn {
      background: transparent;
      border: 1px solid rgba(0, 98, 65, 0.06);
      padding: 12px 16px;
      border-radius: 60px;
      cursor: pointer;
      transition: var(--transition);
    }
    .wish-btn:hover {
      background: var(--green-light);
      border-color: var(--green);
    }

    /* deal (featured) */
    .deal-card {
      display: flex;
      background: white;
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow-md);
      align-items: stretch;
    }
    .deal-img {
      width: 44%;
      background: #e3ddd8;
      min-height: 260px;
      display: flex;
      align-items: center;
      justify-content: center;
    }
    .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-body {
      padding: 36px 36px 36px 32px;
      flex: 1;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-body h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
      color: var(--green);
    }
    .deal-timer {
      display: flex;
      gap: 14px;
      margin: 16px 0;
    }
    .time-box {
      background: var(--primary);
      color: white;
      padding: 12px 14px;
      border-radius: var(--radius-sm);
      min-width: 72px;
      text-align: center;
    }
    .time-box div:first-child {
      font-weight: 700;
      font-size: 1.5rem;
    }
    .time-box div:last-child {
      font-size: 0.7rem;
      opacity: 0.6;
    }
    .deal-price {
      display: flex;
      align-items: center;
      gap: 18px;
      margin: 8px 0 14px;
    }
    .deal-price .price {
      font-size: 2rem;
      font-weight: 700;
      color: var(--green);
    }
    .deal-discount {
      background: #ff4757;
      color: white;
      padding: 6px 16px;
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
      padding: 24px;
      border-radius: var(--radius);
      box-shadow: var(--shadow-sm);
      scroll-snap-align: start;
      border: 1px solid rgba(0, 98, 65, 0.04);
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
      margin-top: 16px;
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
      background: var(--green);
      color: white;
      border-radius: var(--radius);
      padding: 48px 32px;
      text-align: center;
    }
    .newsletter-box h3 {
      font-family: 'Space Grotesk', sans-serif;
      font-size: 2rem;
    }
    .newsletter-box p {
      opacity: 0.8;
      margin: 8px 0 24px;
    }
    .newsletter-form {
      display: flex;
      justify-content: center;
      gap: 12px;
      flex-wrap: wrap;
    }
    .newsletter-form input {
      padding: 16px 24px;
      border-radius: 60px;
      border: 0;
      width: 340px;
      max-width: 100%;
      background: rgba(255, 255, 255, 0.08);
      color: white;
      outline: none;
      font-size: 1rem;
      border: 1px solid rgba(255, 255, 255, 0.06);
    }
    .newsletter-form input::placeholder {
      color: rgba(255, 255, 255, 0.4);
    }
    .newsletter-form input:focus {
      background: rgba(255, 255, 255, 0.14);
    }
    .newsletter-form .btn {
      background: var(--accent);
      color: #1e1a16;
    }
    .newsletter-form .btn:hover {
      background: white;
      color: var(--green);
    }
    #newsletterMsg {
      margin-top: 16px;
      font-size: 0.95rem;
      color: #c8e6d9;
    }

    /* footer */
    footer {
      padding: 48px 0 24px;
      border-top: 1px solid rgba(0, 98, 65, 0.06);
      margin-top: 24px;
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
      margin-top: 14px;
    }
    .footer-social a {
      background: var(--surface);
      width: 44px;
      height: 44px;
      border-radius: 60px;
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      transition: var(--transition);
    }
    .footer-social a:hover {
      background: var(--green-light);
      color: var(--green-dark);
    }
    .footer-links {
      display: flex;
      gap: 56px;
      flex-wrap: wrap;
    }
    .footer-links h5 {
      font-weight: 600;
      margin-bottom: 8px;
      color: var(--green);
    }
    .footer-links div {
      color: var(--muted);
      line-height: 2;
      font-size: 0.95rem;
    }
    .footer-copy {
      text-align: center;
      color: var(--muted);
      font-size: 0.85rem;
      margin-top: 36px;
      border-top: 1px solid rgba(0, 98, 65, 0.04);
      padding-top: 24px;
    }

    /* ----- responsive ----- */
    @media (max-width: 1200px) {
      .categories-grid {
        grid-template-columns: repeat(3, 1fr);
      }
      .products-grid {
        grid-template-columns: repeat(3, 1fr);
      }
    }
    @media (max-width: 992px) {
      .main-nav {
        display: none;
      }
      .mobile-toggle {
        display: inline-block;
      }
      .products-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .categories-grid {
        grid-template-columns: repeat(2, 1fr);
      }
      .deal-card {
        flex-direction: column;
      }
      .deal-img {
        width: 100%;
        height: 220px;
      }
    }
    @media (max-width: 600px) {
      .hero {
        padding: 48px 20px;
      }
      .products-grid {
        grid-template-columns: 1fr;
      }
      .categories-grid {
        grid-template-columns: 1fr;
      }
      .deal-body {
        padding: 24px;
      }
      .search-wrap {
        min-width: 140px;
      }
      .header-inner {
        gap: 10px;
      }
      .footer-grid {
        flex-direction: column;
        gap: 24px;
      }
      .section-header h2 {
        font-size: 1.5rem;
      }
    }

    .muted {
      color: var(--muted);
    }
    .text-center {
      text-align: center;
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:14px;">
      <button class="mobile-toggle" id="mobileToggle" aria-label="Menu"><i class="fas fa-bars"></i></button>
      <a href="#" class="brand"><i class="fas fa-mug-hot"></i><span>Starbucks</span></a>
    </div>

    <nav class="main-nav" id="mainNav">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Menu</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Popular</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Offers</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:12px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search drinks..." aria-label="Search" />
        <button id="searchBtn" aria-label="Search"><i class="fas fa-arrow-right"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn" aria-label="Account"><i class="far fa-user"></i></button>
        <button class="icon-btn" aria-label="Wishlist"><i class="far fa-heart"></i></button>
        <button class="cart" id="cartBtn">
          <i class="fas fa-shopping-bag"></i>
          <span class="cart-count" id="cartCount">0</span>
        </button>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#categories">Menu</a></li>
        <li><a href="#products">Popular</a></li>
        <li><a href="#deals">Offers</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- Hero -->
  <section class="hero">
    <div class="container hero-content">
      <h1>Good <i>vibes</i> & great coffee</h1>
      <p>Explore handcrafted beverages, fresh food, healthy drinks and seasonal favorites — made just for you.</p>
      <div class="btn-group">
        <button class="btn btn-primary" id="shopNow">Order now <i class="fas fa-arrow-right"></i></button>
        <button class="btn btn-ghost" id="exploreDeals">Explore offers</button>
      </div>
    </div>
  </section>

  <!-- Categories (Menu) -->
  <section class="section container" id="categories">
    <div class="section-header">
      <h2>Menu</h2>
      <span class="muted">Find your favorite</span>
    </div>
    <div class="grid categories-grid" id="categoriesGrid"></div>
  </section>

  <!-- Products (Popular) -->
  <section class="section container" id="products">
    <div class="section-header">
      <h2>Popular now</h2>
      <span class="muted">Trending picks</span>
    </div>
    <div class="grid products-grid" id="productsGrid"></div>
  </section>

  <!-- Deal -->
  <section class="section container" id="deals">
    <div class="section-header">
      <h2>Limited offer</h2>
      <span class="muted">Don't miss out</span>
    </div>
    <div class="deal-card">
      <div class="deal-img">
        <img src="https://images.unsplash.com/photo-1577937927133-66ef06acdf18?auto=format&fit=crop&w=800&q=80" alt="Pumpkin Spice Latte" />
      </div>
      <div class="deal-body">
        <h3>Pumpkin Spice Latte</h3>
        <p class="muted">Fall favorite with a warm spice blend.</p>
        <div class="deal-timer" id="dealTimer">
          <div class="time-box"><div id="dealDays">0</div><div>Days</div></div>
          <div class="time-box"><div id="dealHours">00</div><div>Hrs</div></div>
          <div class="time-box"><div id="dealMinutes">00</div><div>Min</div></div>
          <div class="time-box"><div id="dealSeconds">00</div><div>Sec</div></div>
        </div>
        <div class="deal-price">
          <span class="price">$5.50</span>
          <span class="price-old">$7.25</span>
          <span class="deal-discount">-24%</span>
        </div>
        <p style="margin:6px 0 14px;"><strong>8</strong> left at this price</p>
        <button class="btn btn-primary" id="buyDeal" style="align-self:flex-start;"><i class="fas fa-bolt"></i> Grab it</button>
      </div>
    </div>
  </section>

  <!-- Testimonials -->
  <section class="section container">
    <div class="section-header">
      <h2>What our fans say</h2>
      <span class="muted">Real reviews</span>
    </div>
    <div class="testimonials-scroll" id="testimonials">
      <div class="testimonial-card">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“The best caramel macchiato I've ever had. Perfect every time.”</p>
        <div class="testimonial-author">
          <div class="avatar"><i class="fas fa-user"></i></div>
          <div><strong>Sophia Chen</strong><div class="muted" style="font-size:0.8rem;">Verified</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i></div>
        <p>“Cozy atmosphere and friendly staff. My go‑to study spot.”</p>
        <div class="testimonial-author">
          <div class="avatar"><i class="fas fa-user"></i></div>
          <div><strong>James Park</strong><div class="muted" style="font-size:0.8rem;">Regular</div></div>
        </div>
      </div>
      <div class="testimonial-card">
        <div class="rating"><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i></div>
        <p>“Love the seasonal drinks and the rewards program.”</p>
        <div class="testimonial-author">
          <div class="avatar"><i class="fas fa-user"></i></div>
          <div><strong>Maya Rodriguez</strong><div class="muted" style="font-size:0.8rem;">Gold member</div></div>
        </div>
      </div>
    </div>
  </section>

  <!-- Newsletter -->
  <section class="section container">
    <div class="newsletter-box">
      <h3>Stay caffeinated</h3>
      <p>Get exclusive offers & early access to new drops</p>
      <form class="newsletter-form" id="newsletterForm" onsubmit="return false;">
        <input type="email" id="newsletterEmail" placeholder="Your email" required />
        <button class="btn" id="subscribeBtn">Subscribe</button>
      </form>
      <div id="newsletterMsg"></div>
    </div>
  </section>
</main>

<footer>
  <div class="container footer-grid">
    <div class="footer-brand">
      <div style="font-family:'Space Grotesk',sans-serif;font-weight:700;font-size:22px;color:var(--green);"><i class="fas fa-mug-hot" style="color:var(--green);"></i> Starbucks</div>
      <p>Premium coffee, handcrafted with care.</p>
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
  <div class="footer-copy">© <span id="year"></span> Starbucks · all rights reserved</div>
</footer>

<script>
  // ----- data (Starbucks inspired) -----
  const CATEGORIES = [
    { id: 'hot', name: 'Hot Coffees', icon: 'fa-mug-hot' },
    { id: 'cold', name: 'Cold Brews', icon: 'fa-ice-cream' },
    { id: 'frapp', name: 'Frappuccino', icon: 'fa-blender' },
    { id: 'tea', name: 'Teas', icon: 'fa-leaf' },
    { id: 'food', name: 'Food', icon: 'fa-utensils' },
    { id: 'merch', name: 'Merch', icon: 'fa-tshirt' }
  ];

  const PRODUCTS = [
    { id:1, title:'Caramel Macchiato', price:5.25, oldPrice:6.00, rating:5, reviews:142, badge:'Popular', img:'https://images.unsplash.com/photo-1570968915860-54d5c92c9b5b?auto=format&fit=crop&w=600&q=80', category:'hot' },
    { id:2, title:'Iced Shaken Espresso', price:4.75, rating:4, reviews:98, img:'https://images.unsplash.com/photo-1517701604599-bb29b880090f?auto=format&fit=crop&w=600&q=80', category:'cold' },
    { id:3, title:'Pumpkin Spice Latte', price:5.50, oldPrice:7.25, rating:5, reviews:215, badge:'Seasonal', img:'https://images.unsplash.com/photo-1577937927133-66ef06acdf18?auto=format&fit=crop&w=600&q=80', category:'hot' },
    { id:4, title:'Mocha Frappuccino', price:5.95, rating:4, reviews:76, img:'https://images.unsplash.com/photo-1577968897966-3d4325b36b61?auto=format&fit=crop&w=600&q=80', category:'frapp' },
    { id:5, title:'Matcha Tea Latte', price:4.50, rating:5, reviews:63, img:'https://images.unsplash.com/photo-1558857563-c0c3b2d23b4b?auto=format&fit=crop&w=600&q=80', category:'tea' },
    { id:6, title:'Butter Croissant', price:3.25, rating:4, reviews:44, img:'https://images.unsplash.com/photo-1555507036-ab1f4038808a?auto=format&fit=crop&w=600&q=80', category:'food' },
    { id:7, title:'Cold Brew with Milk', price:4.25, rating:4, reviews:89, img:'https://images.unsplash.com/photo-1558211583-26f610c1f07b?auto=format&fit=crop&w=600&q=80', category:'cold' },
    { id:8, title:'White Chocolate Mocha', price:5.75, rating:5, reviews:121, img:'https://images.unsplash.com/photo-1485808191679-5f86510681a2?auto=format&fit=crop&w=600&q=80', category:'hot' }
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
      el.innerHTML = `
        <div class="product-img">
          <img src="${p.img}" alt="${p.title}" loading="lazy">
          ${p.badge ? `<span class="product-badge">${p.badge}</span>` : ''}
        </div>
        <div class="product-body">
          <h5>${p.title}</h5>
          <div class="product-category">${p.category}</div>
          <div class="price-row">
            <span class="price-current">$${p.price.toFixed(2)}</span>
            ${p.oldPrice ? `<span class="price-old">$${p.oldPrice.toFixed(2)}</span>` : ''}
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
      btn.addEventListener('click', () => {
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
    msg.style.color = '#c8e6d9';
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
    alert('Added Pumpkin Spice Latte to cart (demo).');
  });

  // ----- init -----
  renderCategories();
  renderProducts(PRODUCTS);
  document.getElementById('year').textContent = new Date().getFullYear();
  cartCountEl.textContent = cartCount;
</script>
</body>
</html>
