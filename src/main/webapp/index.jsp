<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · modern e‑commerce</title>

  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,600;14..32,700;14..32,800&family=Playfair+Display:ital,wght@0,700;1,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      background: #f7f6f3;
      font-family: 'Inter', sans-serif;
      color: #1e1e2a;
      line-height: 1.5;
    }

    :root {
      --bg-soft: #f7f6f3;
      --card: #ffffff;
      --ink: #1e1e2a;
      --ink-soft: #5a5a6e;
      --accent: #c47a5a;
      --accent-light: #edd3c5;
      --accent-dark: #a85f42;
      --border: #e9e7e2;
      --shadow: 0 8px 24px rgba(0,0,0,0.03), 0 2px 6px rgba(0,0,0,0.02);
      --shadow-hover: 0 20px 40px rgba(0,0,0,0.06), 0 6px 16px rgba(0,0,0,0.02);
      --radius: 20px;
      --radius-sm: 10px;
    }

    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header */
    header {
      background: rgba(255, 255, 255, 0.85);
      backdrop-filter: blur(12px);
      border-bottom: 1px solid rgba(0,0,0,0.02);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      height: 70px;
      gap: 12px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 8px;
      font-weight: 800;
      font-size: 22px;
      letter-spacing: -0.4px;
    }
    .brand i {
      color: var(--accent);
      font-size: 26px;
    }
    .brand .accent {
      color: var(--accent);
    }

    nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    nav ul li a {
      padding: 8px 18px;
      border-radius: 40px;
      font-weight: 500;
      font-size: 14px;
      color: var(--ink-soft);
      transition: 0.2s;
      display: flex;
      align-items: center;
      gap: 6px;
    }
    nav ul li a:hover, nav ul li a.active {
      background: var(--bg-soft);
      color: var(--ink);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: 50%;
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      transition: 0.2s;
      background: transparent;
      border: none;
      font-size: 18px;
    }
    .icon-btn:hover {
      background: var(--bg-soft);
      color: var(--ink);
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -2px;
      right: -2px;
      background: var(--accent);
      color: white;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      font-size: 11px;
      font-weight: 700;
      display: grid;
      place-items: center;
      border: 2px solid white;
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--bg-soft);
      border-radius: 60px;
      padding: 0 16px 0 18px;
      border: 2px solid transparent;
      transition: 0.2s;
      min-width: 200px;
    }
    .search-wrap:focus-within {
      border-color: var(--accent);
      background: white;
      box-shadow: 0 0 0 4px rgba(196, 122, 90, 0.08);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      outline: none;
      width: 100%;
      color: var(--ink);
    }
    .search-wrap input::placeholder {
      color: #b0b0c0;
    }
    .search-wrap button {
      background: none;
      border: none;
      color: var(--ink-soft);
      padding: 8px 0 8px 10px;
      font-size: 15px;
      transition: 0.2s;
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      background: var(--bg-soft);
      border: none;
      width: 42px;
      height: 42px;
      border-radius: 50%;
      font-size: 20px;
    }
    #mobileMenu {
      display: none;
      background: white;
      border-top: 1px solid var(--border);
      padding: 16px 0 24px;
    }
    #mobileMenu ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    #mobileMenu ul li a {
      padding: 12px 20px;
      border-radius: var(--radius-sm);
      font-weight: 500;
      display: flex;
      align-items: center;
      gap: 12px;
      color: var(--ink);
    }
    #mobileMenu ul li a:hover {
      background: var(--bg-soft);
    }
    #mobileMenu ul li a i {
      width: 22px;
      color: var(--ink-soft);
    }

    /* hero */
    .hero {
      margin: 20px 24px 0;
      border-radius: var(--radius);
      background: #1f1f2e;
      padding: 60px 0;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.25;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      background: rgba(196, 122, 90, 0.18);
      color: #e6c6b7;
      display: inline-block;
      padding: 4px 18px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 13px;
      letter-spacing: 0.2px;
      margin-bottom: 18px;
    }
    .hero h1 {
      font-family: 'Playfair Display', serif;
      font-weight: 700;
      font-size: 48px;
      color: white;
      max-width: 600px;
      line-height: 1.1;
      margin-bottom: 14px;
    }
    .hero p {
      color: rgba(255,255,255,0.75);
      max-width: 480px;
      font-size: 17px;
      margin-bottom: 28px;
    }
    .hero .actions {
      display: flex;
      gap: 12px;
      flex-wrap: wrap;
    }

    .btn {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      padding: 12px 30px;
      border-radius: 60px;
      font-weight: 600;
      font-size: 15px;
      border: 2px solid transparent;
      transition: 0.2s;
      background: transparent;
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
    }
    .btn-primary:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
      transform: translateY(-2px);
      box-shadow: 0 10px 24px rgba(196, 122, 90, 0.25);
    }
    .btn-ghost {
      background: rgba(255,255,255,0.08);
      color: white;
      border-color: rgba(255,255,255,0.15);
    }
    .btn-ghost:hover {
      background: rgba(255,255,255,0.16);
      border-color: rgba(255,255,255,0.3);
      transform: translateY(-2px);
    }

    /* sections */
    .section {
      padding: 52px 0;
    }
    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: flex-end;
      margin-bottom: 28px;
      flex-wrap: wrap;
      gap: 12px;
    }
    .section-header h2 {
      font-size: 28px;
      font-weight: 700;
      letter-spacing: -0.3px;
    }
    .section-header p {
      color: var(--ink-soft);
      font-size: 15px;
      margin-top: 4px;
    }
    .view-all {
      font-weight: 600;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.2s;
    }
    .view-all:hover {
      gap: 12px;
      color: var(--accent-dark);
    }

    /* categories */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--card);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.2s;
      border: 2px solid transparent;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      background: var(--accent-light);
      border-radius: 50%;
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 24px;
      color: var(--accent);
      transition: 0.2s;
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: white;
    }
    .cat-card h4 {
      font-weight: 600;
      font-size: 15px;
    }
    .cat-card .count {
      color: var(--ink-soft);
      font-size: 13px;
    }

    /* products */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.25s;
      border: 2px solid transparent;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translateY(-6px);
      box-shadow: var(--shadow-hover);
      border-color: var(--accent-light);
    }
    .product-card .img-wrap {
      position: relative;
      background: var(--bg-soft);
      aspect-ratio: 1/1;
      overflow: hidden;
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.03);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: white;
      padding: 4px 14px;
      border-radius: 40px;
      font-size: 11px;
      font-weight: 700;
    }
    .product-card .badge.sale {
      background: #d4a373;
      color: var(--ink);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      background: rgba(255,255,255,0.8);
      backdrop-filter: blur(4px);
      width: 36px;
      height: 36px;
      border-radius: 50%;
      border: none;
      font-size: 16px;
      color: var(--ink-soft);
      transition: 0.2s;
      display: grid;
      place-items: center;
    }
    .product-card .wish-btn:hover {
      background: white;
      color: var(--accent);
      transform: scale(1.1);
    }
    .product-card .body {
      padding: 16px 18px 10px;
      flex: 1;
    }
    .product-card .body .category-tag {
      font-size: 12px;
      text-transform: uppercase;
      letter-spacing: 0.3px;
      color: var(--ink-soft);
      font-weight: 600;
    }
    .product-card .body h5 {
      font-weight: 600;
      font-size: 15px;
      margin: 4px 0 6px;
    }
    .product-card .price-row {
      display: flex;
      align-items: center;
      gap: 10px;
      margin-top: 4px;
    }
    .product-card .price {
      font-weight: 700;
      font-size: 18px;
    }
    .product-card .old-price {
      color: var(--ink-soft);
      text-decoration: line-through;
      font-size: 14px;
    }
    .product-card .rating {
      display: flex;
      align-items: center;
      gap: 4px;
      font-size: 13px;
      color: #e6b87e;
      margin-top: 4px;
    }
    .product-card .rating span {
      color: var(--ink-soft);
    }
    .product-card .footer {
      padding: 0 18px 16px;
      display: flex;
      gap: 8px;
    }
    .product-card .add-btn {
      flex: 1;
      background: var(--ink);
      color: white;
      padding: 10px;
      border-radius: var(--radius-sm);
      font-weight: 600;
      font-size: 14px;
      border: none;
      transition: 0.2s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
    }
    .product-card .add-btn:hover {
      background: var(--accent);
    }
    .product-card .add-btn.added {
      background: #7f9f8c;
    }

    /* deal */
    .deal-wrap {
      display: flex;
      background: var(--card);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      min-height: 280px;
      background: var(--bg-soft);
    }
    .deal-wrap .deal-img img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .deal-wrap .deal-content {
      padding: 36px 40px;
      display: flex;
      flex-direction: column;
      justify-content: center;
    }
    .deal-wrap .tag {
      background: #d4a373;
      color: var(--ink);
      align-self: flex-start;
      padding: 4px 16px;
      border-radius: 40px;
      font-weight: 700;
      font-size: 12px;
      text-transform: uppercase;
      letter-spacing: 0.4px;
    }
    .deal-wrap h3 {
      font-size: 28px;
      font-weight: 700;
      margin: 6px 0 4px;
    }
    .deal-wrap .desc {
      color: var(--ink-soft);
      margin-bottom: 12px;
    }
    .deal-wrap .price-big {
      font-size: 32px;
      font-weight: 800;
    }
    .deal-wrap .price-big .old {
      font-size: 20px;
      font-weight: 400;
      color: var(--ink-soft);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .stock {
      font-size: 14px;
      color: var(--ink-soft);
      margin: 4px 0 14px;
    }
    .deal-wrap .stock strong {
      color: var(--accent);
    }
    .timer-grid {
      display: flex;
      gap: 12px;
      margin: 10px 0 18px;
    }
    .timer-box {
      background: var(--ink);
      color: white;
      padding: 10px 16px;
      border-radius: var(--radius-sm);
      min-width: 64px;
      text-align: center;
    }
    .timer-box .num {
      font-size: 24px;
      font-weight: 700;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.6;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    /* testimonials */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 4px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent-light);
      border-radius: 40px;
    }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--card);
      border-radius: var(--radius);
      padding: 24px 28px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
    }
    .testimonial-card .stars {
      color: #e6b87e;
      font-size: 16px;
      letter-spacing: 2px;
      margin-bottom: 10px;
    }
    .testimonial-card blockquote {
      font-style: italic;
      font-size: 15px;
      color: var(--ink);
      line-height: 1.6;
      margin-bottom: 14px;
    }
    .testimonial-card .author {
      display: flex;
      align-items: center;
      gap: 12px;
    }
    .testimonial-card .author .avatar {
      width: 44px;
      height: 44px;
      border-radius: 50%;
      object-fit: cover;
      background: var(--bg-soft);
    }
    .testimonial-card .author .name {
      font-weight: 600;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--ink-soft);
    }

    /* newsletter */
    .newsletter-wrap {
      background: var(--ink);
      border-radius: var(--radius);
      padding: 44px 48px;
      color: white;
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 28px;
    }
    .newsletter-wrap h3 {
      font-size: 26px;
      font-weight: 700;
    }
    .newsletter-wrap p {
      opacity: 0.7;
    }
    .newsletter-wrap form {
      display: flex;
      gap: 10px;
      flex: 1;
      max-width: 460px;
      flex-wrap: wrap;
    }
    .newsletter-wrap input {
      flex: 1;
      min-width: 180px;
      padding: 14px 22px;
      border-radius: 60px;
      border: none;
      background: rgba(255,255,255,0.08);
      color: white;
      font-size: 15px;
      outline: 2px solid transparent;
      transition: 0.2s;
    }
    .newsletter-wrap input::placeholder {
      color: rgba(255,255,255,0.4);
    }
    .newsletter-wrap input:focus {
      outline-color: var(--accent);
      background: rgba(255,255,255,0.14);
    }
    .newsletter-wrap .btn {
      background: var(--accent);
      color: white;
      border-color: var(--accent);
      padding: 14px 32px;
    }
    .newsletter-wrap .btn:hover {
      background: var(--accent-dark);
      border-color: var(--accent-dark);
    }
    #newsletterMsg {
      width: 100%;
      font-size: 14px;
      margin-top: 8px;
      opacity: 0.9;
    }

    /* footer */
    footer {
      padding: 44px 0 28px;
      border-top: 1px solid var(--border);
      margin-top: 8px;
    }
    .footer-grid {
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 40px;
      margin-bottom: 28px;
    }
    .footer-grid .brand-col .brand {
      font-size: 20px;
      margin-bottom: 8px;
    }
    .footer-grid .brand-col p {
      color: var(--ink-soft);
      font-size: 14px;
      max-width: 300px;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: 50%;
      background: var(--bg-soft);
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      transition: 0.2s;
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: white;
    }
    .footer-grid .col h5 {
      font-weight: 700;
      font-size: 14px;
      margin-bottom: 12px;
    }
    .footer-grid .col ul {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 6px;
    }
    .footer-grid .col ul li a {
      color: var(--ink-soft);
      font-size: 14px;
      transition: 0.2s;
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 1px solid var(--border);
      color: var(--ink-soft);
      font-size: 13px;
    }

    /* responsive */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
    }
    @media (max-width: 992px) {
      .hero { margin: 16px 16px 0; padding: 44px 0; }
      .hero h1 { font-size: 36px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; }
      .deal-wrap .deal-content { padding: 28px 30px; }
      .newsletter-wrap { flex-direction: column; text-align: center; }
      .newsletter-wrap form { max-width: 100%; }
      .footer-grid { grid-template-columns: 1fr 1fr; }
    }
    @media (max-width: 768px) {
      nav.main-nav { display: none; }
      .mobile-toggle { display: grid; place-items: center; }
      .products-grid { grid-template-columns: 1fr 1fr; gap: 14px; }
      .categories-grid { grid-template-columns: 1fr 1fr; }
      .hero h1 { font-size: 28px; }
      .hero { min-height: 280px; }
      .search-wrap { min-width: 120px; padding: 0 10px 0 14px; }
      .search-wrap input { font-size: 13px; padding: 8px 0; }
      .header-inner { flex-wrap: nowrap; }
      .brand { font-size: 18px; }
      .deal-wrap .deal-content h3 { font-size: 22px; }
      .footer-grid { grid-template-columns: 1fr; }
      .testimonial-card { flex: 0 0 260px; }
    }
    @media (max-width: 480px) {
      .products-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .categories-grid { grid-template-columns: 1fr 1fr; gap: 10px; }
      .hero { margin: 10px; border-radius: var(--radius-sm); padding: 28px 0; }
      .hero h1 { font-size: 24px; }
      .container { padding: 0 14px; }
      .deal-wrap .deal-content { padding: 20px 18px; }
      .deal-wrap .deal-img { flex: 0 0 160px; }
      .newsletter-wrap { padding: 24px 18px; }
      .product-card .body { padding: 12px 14px 6px; }
      .product-card .body h5 { font-size: 13px; }
      .product-card .price { font-size: 15px; }
      .product-card .footer { padding: 0 14px 12px; }
      .product-card .add-btn { font-size: 12px; padding: 8px; }
      .timer-box { min-width: 48px; padding: 6px 10px; }
      .timer-box .num { font-size: 18px; }
      .cat-card { padding: 16px 8px; }
      .cat-card .icon-wrap { width: 44px; height: 44px; font-size: 18px; }
    }
  </style>
</head>
<body>

<header>
  <div class="container header-inner">
    <div style="display:flex;align-items:center;gap:10px;">
      <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-bars"></i></button>
      <a class="brand" href="#"><i class="fas fa-store-alt"></i> <span>Nexus<span class="accent">Shop</span></span></a>
    </div>

    <nav class="main-nav">
      <ul>
        <li><a href="#" class="active"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
      </ul>
    </nav>

    <div style="display:flex;align-items:center;gap:10px;">
      <div class="search-wrap">
        <input type="search" id="searchInput" placeholder="Search...">
        <button id="searchBtn"><i class="fas fa-search"></i></button>
      </div>
      <div class="header-actions">
        <button class="icon-btn"><i class="far fa-user"></i></button>
        <button class="icon-btn"><i class="far fa-heart"></i></button>
        <div class="cart-wrap">
          <button class="icon-btn" id="cartBtn"><i class="fas fa-shopping-bag"></i></button>
          <span class="cart-count" id="cartCount">0</span>
        </div>
      </div>
    </div>
  </div>

  <div id="mobileMenu">
    <div class="container">
      <ul>
        <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
        <li><a href="#categories"><i class="fas fa-th-large"></i> Categories</a></li>
        <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
        <li><a href="#deals"><i class="fas fa-tag"></i> Deals</a></li>
        <li><a href="#testimonials"><i class="fas fa-star"></i> Reviews</a></li>
        <li><a href="#"><i class="far fa-user"></i> Account</a></li>
      </ul>
    </div>
  </div>
</header>

<main>
  <!-- hero -->
  <section class="hero">
    <div class="container">
      <div class="badge"><i class="fas fa-sparkles"></i> New Collection 2026</div>
      <h1>Premium Essentials</h1>
      <p>Curated fashion, tech & accessories — free shipping on your first order.</p>
      <div class="actions">
        <button class="btn btn-primary" id="shopNow"><i class="fas fa-arrow-right"></i> Shop Now</button>
        <button class="btn btn-ghost" id="exploreDeals"><i class="fas fa-clock"></i> Explore Deals</button>
      </div>
    </div>
  </section>

  <!-- categories -->
  <section class="section" id="categories">
    <div class="container">
      <div class="section-header">
        <div><h2>Browse Categories</h2><p>Find exactly what you need</p></div>
        <a href="#" class="view-all">All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="categories-grid" id="categoriesGrid"></div>
    </div>
  </section>

  <!-- products -->
  <section class="section" id="products">
    <div class="container">
      <div class="section-header">
        <div><h2>Trending Now</h2><p>What's hot right now</p></div>
        <a href="#" class="view-all">View All <i class="fas fa-arrow-right"></i></a>
      </div>
      <div class="products-grid" id="productsGrid"></div>
    </div>
  </section>

  <!-- deal -->
  <section class="section" id="deals">
    <div class="container">
      <div class="section-header">
        <div><h2>⚡ Flash Deal</h2><p>Limited stock – hurry up</p></div>
      </div>
      <div class="deal-wrap">
        <div class="deal-img">
          <img src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=800&q=80" alt="MacBook" loading="lazy">
        </div>
        <div class="deal-content">
          <span class="tag"><i class="fas fa-bolt"></i> Limited offer</span>
          <h3>MacBook Air M2</h3>
          <p class="desc">Thin, light, and incredibly powerful — the M2 chip redefines performance.</p>
          <div><span class="price-big">$999 <span class="old">$1,199</span></span></div>
          <p class="stock">Only <strong>12</strong> items left — hurry!</p>
          <div class="timer-grid" id="dealTimer">
            <div class="timer-box"><div class="num" id="dealDays">0</div><div class="label">Days</div></div>
            <div class="timer-box"><div class="num" id="dealHours">00</div><div class="label">Hrs</div></div>
            <div class="timer-box"><div class="num" id="dealMinutes">00</div><div class="label">Min</div></div>
            <div class="timer-box"><div class="num" id="dealSeconds">00</div><div class="label">Sec</div></div>
          </div>
          <button class="btn btn-primary" id="buyDeal"><i class="fas fa-cart-plus"></i> Add to Cart</button>
        </div>
      </div>
    </div>
  </section>

  <!-- testimonials -->
  <section class="section" id="testimonials">
    <div class="container">
      <div class="section-header">
        <div><h2>What Customers Say</h2><p>Real reviews from real people</p></div>
      </div>
      <div class="testimonials-scroll" id="testimonialsList"></div>
    </div>
  </section>

  <!-- newsletter -->
  <section class="section">
    <div class="container">
      <div class="newsletter-wrap">
        <div>
          <h3>Stay in the Loop</h3>
          <p>Exclusive offers & early access</p>
        </div>
        <form id="newsletterForm">
          <input type="email" id="newsletterEmail" placeholder="Email address" required>
          <button class="btn"><i class="fas fa-paper-plane"></i> Subscribe</button>
          <div id="newsletterMsg"></div>
        </form>
      </div>
    </div>
  </section>
</main>

<footer>
  <div class="container">
    <div class="footer-grid">
      <div class="brand-col">
        <div class="brand"><i class="fas fa-store-alt"></i> <span>Nexus<span class="accent">Shop</span></span></div>
        <p>Modern e‑commerce demo · quality products, seamless experience.</p>
        <div class="socials">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
         
