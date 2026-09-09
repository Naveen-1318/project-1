<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Nexus · neo‑brutalist</title>

  <!-- Fonts & Icons -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,400;14..32,600;14..32,700;14..32,800;14..32,900&family=Space+Grotesk:wght@400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Space Grotesk', 'Inter', sans-serif;
      background: #f5f0e8;
      color: #1c1c1c;
      line-height: 1.5;
    }

    :root {
      --bg: #f5f0e8;
      --card: #ffffff;
      --ink: #1c1c1c;
      --ink-soft: #4a4a4a;
      --accent: #e05a3a;
      --accent-dark: #c44a2e;
      --accent-light: #fce1d6;
      --border-dark: #1c1c1c;
      --shadow: 4px 4px 0 rgba(28, 28, 28, 0.08);
      --shadow-hover: 6px 6px 0 rgba(28, 28, 28, 0.12);
      --radius: 6px;
      --radius-sm: 4px;
    }

    .container {
      max-width: 1240px;
      margin: 0 auto;
      padding: 0 24px;
    }

    /* header – neo‑brutalist */
    header {
      background: #f5f0e8;
      border-bottom: 3px solid var(--border-dark);
      position: sticky;
      top: 0;
      z-index: 50;
    }

    .header-inner {
      display: flex;
      align-items: center;
      justify-content: space-between;
      height: 72px;
      gap: 12px;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 10px;
      font-weight: 800;
      font-size: 24px;
      letter-spacing: -0.5px;
      color: var(--ink);
    }
    .brand .logo-icon {
      width: 38px;
      height: 38px;
      background: var(--accent);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius-sm);
      display: grid;
      place-items: center;
      color: white;
      font-size: 18px;
      transform: rotate(-2deg);
      transition: 0.15s;
    }
    .brand:hover .logo-icon {
      transform: rotate(0deg) scale(1.02);
    }
    .brand .accent {
      color: var(--accent);
      background: var(--bg);
      padding: 0 4px;
    }

    nav ul {
      display: flex;
      gap: 4px;
      list-style: none;
    }
    nav ul li a {
      padding: 8px 20px;
      border-radius: var(--radius-sm);
      font-weight: 600;
      font-size: 14px;
      color: var(--ink-soft);
      transition: 0.15s;
      display: flex;
      align-items: center;
      gap: 6px;
      border: 2px solid transparent;
    }
    nav ul li a:hover, nav ul li a.active {
      background: var(--card);
      color: var(--ink);
      border-color: var(--border-dark);
      box-shadow: var(--shadow);
    }

    .header-actions {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .icon-btn {
      width: 42px;
      height: 42px;
      border-radius: var(--radius-sm);
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      transition: 0.15s;
      background: transparent;
      border: 2px solid transparent;
      font-size: 18px;
    }
    .icon-btn:hover {
      background: var(--card);
      border-color: var(--border-dark);
      box-shadow: var(--shadow);
      color: var(--ink);
    }
    .cart-wrap {
      position: relative;
    }
    .cart-count {
      position: absolute;
      top: -4px;
      right: -4px;
      background: var(--accent);
      color: white;
      width: 20px;
      height: 20px;
      border-radius: 50%;
      font-size: 11px;
      font-weight: 700;
      display: grid;
      place-items: center;
      border: 2px solid var(--bg);
    }

    .search-wrap {
      display: flex;
      align-items: center;
      background: var(--card);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius-sm);
      padding: 0 10px 0 18px;
      transition: 0.15s;
      min-width: 200px;
      box-shadow: var(--shadow);
    }
    .search-wrap:focus-within {
      box-shadow: 6px 6px 0 var(--accent);
    }
    .search-wrap input {
      border: none;
      background: transparent;
      padding: 10px 0;
      font-size: 14px;
      outline: none;
      width: 100%;
      color: var(--ink);
      font-weight: 500;
    }
    .search-wrap input::placeholder {
      color: #a09a92;
    }
    .search-wrap button {
      background: none;
      border: none;
      color: var(--ink-soft);
      padding: 8px 0 8px 10px;
      font-size: 15px;
      transition: 0.15s;
      cursor: pointer;
    }
    .search-wrap button:hover {
      color: var(--accent);
    }

    .mobile-toggle {
      display: none;
      background: var(--card);
      border: 3px solid var(--border-dark);
      width: 42px;
      height: 42px;
      border-radius: var(--radius-sm);
      font-size: 20px;
      box-shadow: var(--shadow);
    }
    #mobileMenu {
      display: none;
      background: var(--bg);
      border-top: 3px solid var(--border-dark);
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
      font-weight: 600;
      display: flex;
      align-items: center;
      gap: 12px;
      color: var(--ink);
      border: 2px solid transparent;
    }
    #mobileMenu ul li a:hover {
      background: var(--card);
      border-color: var(--border-dark);
      box-shadow: var(--shadow);
    }
    #mobileMenu ul li a i {
      width: 22px;
      color: var(--ink-soft);
    }

    /* hero – neo‑brutalist */
    .hero {
      margin: 20px 24px 0;
      border-radius: var(--radius);
      background: #f5f0e8;
      border: 3px solid var(--border-dark);
      box-shadow: 8px 8px 0 rgba(28, 28, 28, 0.06);
      padding: 56px 0;
      position: relative;
      overflow: hidden;
    }
    .hero::before {
      content: '';
      position: absolute;
      inset: 0;
      background: url('https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
      opacity: 0.06;
      mix-blend-mode: multiply;
    }
    .hero .container {
      position: relative;
      z-index: 2;
    }
    .hero .badge {
      background: var(--accent);
      color: white;
      display: inline-block;
      padding: 4px 20px;
      border-radius: var(--radius-sm);
      font-weight: 700;
      font-size: 13px;
      letter-spacing: 0.3px;
      margin-bottom: 18px;
      border: 2px solid var(--border-dark);
      box-shadow: 3px 3px 0 var(--border-dark);
    }
    .hero h1 {
      font-family: 'Space Grotesk', sans-serif;
      font-weight: 700;
      font-size: 52px;
      color: var(--ink);
      max-width: 600px;
      line-height: 1.08;
      margin-bottom: 14px;
      letter-spacing: -1px;
    }
    .hero p {
      color: var(--ink-soft);
      max-width: 480px;
      font-size: 17px;
      margin-bottom: 28px;
      font-weight: 500;
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
      padding: 12px 32px;
      border-radius: var(--radius-sm);
      font-weight: 700;
      font-size: 15px;
      border: 3px solid var(--border-dark);
      transition: 0.15s;
      background: transparent;
      box-shadow: 4px 4px 0 rgba(28, 28, 28, 0.06);
    }
    .btn-primary {
      background: var(--accent);
      color: white;
      border-color: var(--border-dark);
      box-shadow: 4px 4px 0 var(--border-dark);
    }
    .btn-primary:hover {
      transform: translate(-2px, -2px);
      box-shadow: 6px 6px 0 var(--border-dark);
      background: var(--accent-dark);
    }
    .btn-ghost {
      background: var(--card);
      color: var(--ink);
      border-color: var(--border-dark);
      box-shadow: 4px 4px 0 rgba(28, 28, 28, 0.06);
    }
    .btn-ghost:hover {
      transform: translate(-2px, -2px);
      box-shadow: 6px 6px 0 rgba(28, 28, 28, 0.10);
      background: white;
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
      font-family: 'Space Grotesk', sans-serif;
    }
    .section-header p {
      color: var(--ink-soft);
      font-size: 15px;
      margin-top: 4px;
      font-weight: 500;
    }
    .view-all {
      font-weight: 700;
      color: var(--accent);
      display: flex;
      align-items: center;
      gap: 6px;
      transition: 0.15s;
      border-bottom: 2px solid transparent;
    }
    .view-all:hover {
      gap: 12px;
      border-bottom-color: var(--accent);
    }

    /* categories – neo‑brutalist */
    .categories-grid {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      gap: 16px;
    }
    .cat-card {
      background: var(--card);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius);
      padding: 24px 12px;
      text-align: center;
      box-shadow: var(--shadow);
      transition: 0.15s;
      cursor: pointer;
    }
    .cat-card:hover {
      transform: translate(-3px, -3px);
      box-shadow: var(--shadow-hover);
    }
    .cat-card .icon-wrap {
      width: 56px;
      height: 56px;
      background: var(--accent-light);
      border: 2px solid var(--border-dark);
      border-radius: var(--radius-sm);
      display: grid;
      place-items: center;
      margin: 0 auto 12px;
      font-size: 24px;
      color: var(--accent);
      transition: 0.15s;
    }
    .cat-card:hover .icon-wrap {
      background: var(--accent);
      color: white;
    }
    .cat-card h4 {
      font-weight: 700;
      font-size: 15px;
    }
    .cat-card .count {
      color: var(--ink-soft);
      font-size: 13px;
      font-weight: 500;
    }

    /* products – neo‑brutalist */
    .products-grid {
      display: grid;
      grid-template-columns: repeat(4, 1fr);
      gap: 20px;
    }
    .product-card {
      background: var(--card);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
      transition: 0.15s;
      display: flex;
      flex-direction: column;
    }
    .product-card:hover {
      transform: translate(-4px, -4px);
      box-shadow: var(--shadow-hover);
    }
    .product-card .img-wrap {
      position: relative;
      background: var(--bg);
      aspect-ratio: 1/1;
      overflow: hidden;
      border-bottom: 3px solid var(--border-dark);
    }
    .product-card .img-wrap img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      transition: 0.3s;
    }
    .product-card:hover .img-wrap img {
      transform: scale(1.04);
    }
    .product-card .badge {
      position: absolute;
      top: 12px;
      left: 12px;
      background: var(--accent);
      color: white;
      padding: 4px 14px;
      border-radius: var(--radius-sm);
      font-size: 11px;
      font-weight: 700;
      border: 2px solid var(--border-dark);
      box-shadow: 2px 2px 0 var(--border-dark);
    }
    .product-card .badge.sale {
      background: #d4a373;
      color: var(--ink);
    }
    .product-card .wish-btn {
      position: absolute;
      top: 12px;
      right: 12px;
      background: var(--card);
      border: 2px solid var(--border-dark);
      border-radius: var(--radius-sm);
      width: 36px;
      height: 36px;
      font-size: 16px;
      color: var(--ink-soft);
      transition: 0.15s;
      display: grid;
      place-items: center;
      box-shadow: 2px 2px 0 var(--border-dark);
    }
    .product-card .wish-btn:hover {
      background: var(--accent-light);
      color: var(--accent);
      transform: scale(1.05);
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
      font-weight: 700;
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
      font-weight: 800;
      font-size: 18px;
    }
    .product-card .old-price {
      color: var(--ink-soft);
      text-decoration: line-through;
      font-size: 14px;
      font-weight: 500;
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
      font-weight: 500;
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
      font-weight: 700;
      font-size: 14px;
      border: 3px solid var(--border-dark);
      transition: 0.15s;
      display: flex;
      align-items: center;
      justify-content: center;
      gap: 6px;
      box-shadow: 3px 3px 0 var(--border-dark);
    }
    .product-card .add-btn:hover {
      background: var(--accent);
      transform: translate(-2px, -2px);
      box-shadow: 5px 5px 0 var(--border-dark);
    }
    .product-card .add-btn.added {
      background: #7f9f8c;
    }

    /* deal – neo‑brutalist */
    .deal-wrap {
      display: flex;
      background: var(--card);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius);
      overflow: hidden;
      box-shadow: var(--shadow);
    }
    .deal-wrap .deal-img {
      flex: 0 0 48%;
      min-height: 280px;
      background: var(--bg);
      border-right: 3px solid var(--border-dark);
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
      border-radius: var(--radius-sm);
      font-weight: 700;
      font-size: 12px;
      text-transform: uppercase;
      letter-spacing: 0.4px;
      border: 2px solid var(--border-dark);
      box-shadow: 2px 2px 0 var(--border-dark);
    }
    .deal-wrap h3 {
      font-size: 28px;
      font-weight: 700;
      margin: 6px 0 4px;
      font-family: 'Space Grotesk', sans-serif;
    }
    .deal-wrap .desc {
      color: var(--ink-soft);
      margin-bottom: 12px;
      font-weight: 500;
    }
    .deal-wrap .price-big {
      font-size: 32px;
      font-weight: 800;
    }
    .deal-wrap .price-big .old {
      font-size: 20px;
      font-weight: 500;
      color: var(--ink-soft);
      text-decoration: line-through;
      margin-left: 10px;
    }
    .deal-wrap .stock {
      font-size: 14px;
      color: var(--ink-soft);
      margin: 4px 0 14px;
      font-weight: 500;
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
      border: 2px solid var(--border-dark);
      box-shadow: 3px 3px 0 var(--border-dark);
    }
    .timer-box .num {
      font-size: 24px;
      font-weight: 800;
    }
    .timer-box .label {
      font-size: 10px;
      opacity: 0.7;
      text-transform: uppercase;
      letter-spacing: 0.5px;
      font-weight: 600;
    }

    /* testimonials – neo‑brutalist */
    .testimonials-scroll {
      display: flex;
      gap: 20px;
      overflow-x: auto;
      padding: 8px 4px 16px;
      scroll-snap-type: x mandatory;
    }
    .testimonials-scroll::-webkit-scrollbar {
      height: 6px;
    }
    .testimonials-scroll::-webkit-scrollbar-thumb {
      background: var(--accent);
      border: 2px solid var(--border-dark);
      border-radius: var(--radius-sm);
    }
    .testimonial-card {
      flex: 0 0 320px;
      background: var(--card);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius);
      padding: 24px 28px;
      box-shadow: var(--shadow);
      scroll-snap-align: start;
      transition: 0.15s;
    }
    .testimonial-card:hover {
      transform: translate(-3px, -3px);
      box-shadow: var(--shadow-hover);
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
      font-weight: 500;
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
      background: var(--bg);
      border: 2px solid var(--border-dark);
    }
    .testimonial-card .author .name {
      font-weight: 700;
    }
    .testimonial-card .author .role {
      font-size: 13px;
      color: var(--ink-soft);
      font-weight: 500;
    }

    /* newsletter – neo‑brutalist */
    .newsletter-wrap {
      background: var(--bg);
      border: 3px solid var(--border-dark);
      border-radius: var(--radius);
      padding: 44px 48px;
      color: var(--ink);
      display: flex;
      align-items: center;
      justify-content: space-between;
      flex-wrap: wrap;
      gap: 28px;
      box-shadow: 6px 6px 0 rgba(28, 28, 28, 0.04);
    }
    .newsletter-wrap h3 {
      font-size: 26px;
      font-weight: 700;
      font-family: 'Space Grotesk', sans-serif;
    }
    .newsletter-wrap p {
      opacity: 0.7;
      font-weight: 500;
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
      border-radius: var(--radius-sm);
      border: 3px solid var(--border-dark);
      background: var(--card);
      color: var(--ink);
      font-size: 15px;
      outline: none;
      font-weight: 500;
      box-shadow: 3px 3px 0 var(--border-dark);
      transition: 0.15s;
    }
    .newsletter-wrap input::placeholder {
      color: #a09a92;
    }
    .newsletter-wrap input:focus {
      box-shadow: 5px 5px 0 var(--accent);
    }
    .newsletter-wrap .btn {
      background: var(--accent);
      color: white;
      border: 3px solid var(--border-dark);
      box-shadow: 3px 3px 0 var(--border-dark);
      padding: 14px 32px;
    }
    .newsletter-wrap .btn:hover {
      background: var(--accent-dark);
      transform: translate(-2px, -2px);
      box-shadow: 5px 5px 0 var(--border-dark);
    }
    #newsletterMsg {
      width: 100%;
      font-size: 14px;
      margin-top: 8px;
      font-weight: 600;
    }

    /* footer – neo‑brutalist */
    footer {
      padding: 44px 0 28px;
      border-top: 3px solid var(--border-dark);
      margin-top: 8px;
      background: var(--bg);
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
      font-weight: 500;
    }
    .footer-grid .brand-col .socials {
      display: flex;
      gap: 10px;
      margin-top: 14px;
    }
    .footer-grid .brand-col .socials a {
      width: 40px;
      height: 40px;
      border-radius: var(--radius-sm);
      background: var(--card);
      border: 2px solid var(--border-dark);
      display: grid;
      place-items: center;
      color: var(--ink-soft);
      transition: 0.15s;
      box-shadow: 2px 2px 0 var(--border-dark);
    }
    .footer-grid .brand-col .socials a:hover {
      background: var(--accent);
      color: white;
      transform: translate(-2px, -2px);
      box-shadow: 4px 4px 0 var(--border-dark);
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
      transition: 0.15s;
      font-weight: 500;
      border-bottom: 2px solid transparent;
    }
    .footer-grid .col ul li a:hover {
      color: var(--accent);
      border-bottom-color: var(--accent);
    }
    .footer-bottom {
      text-align: center;
      padding-top: 18px;
      border-top: 2px solid var(--border-dark);
      color: var(--ink-soft);
      font-size: 13px;
      font-weight: 500;
    }

    /* responsive */
    @media (max-width: 1200px) {
      .products-grid { grid-template-columns: repeat(3,1fr); }
      .categories-grid { grid-template-columns: repeat(3,1fr); }
    }
    @media (max-width: 992px) {
      .hero { margin: 16px 16px 0; padding: 44px 0; }
      .hero h1 { font-size: 38px; }
      .deal-wrap { flex-direction: column; }
      .deal-wrap .deal-img { flex: 0 0 220px; border-right: none; border-bottom: 3px solid var(--border-dark); }
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
      .hero h1 { font-size: 30px; }
      .hero { min-height: 260px; }
      .search-wrap { min-width: 120px; padding: 0 8px 0 14px; }
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
      <a class="brand" href="#">
        <span class="logo-icon"><i class="fas fa-cube"></i></span>
        <span>Nexus<span class="accent">Shop</span></span>
      </a>
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
        <div class="brand">
          <span class="logo-icon" style="width:32px;height:32px;font-size:16px;"><i class="fas fa-cube"></i></span>
          <span>Nexus<span class="accent">Shop</span></span>
        </div>
        <p>Modern e‑commerce demo · quality products, seamless experience.</p>
        <div class="socials">
          <a href="#"><i class="fab fa-facebook-f"></i></a>
          <a href="#"><i class="fab fa-twitter"></i></a>
          <a href="#"><i class="fab fa-instagram"></i></a>
          <a href="#"><i class="fab fa-youtube"></i></a>
        </div>
      </div>
      <div class="col"><h5>Company</h5><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li></ul></div>
      <div class="col"><h5>Support</h5><ul><li><a href="#">Help</a></li><li><a href="#">Shipping</a></li><li><a href="#">Returns</a></li></ul></div>
      <div class="col"><h5>Legal</h5><ul><li><a href="#">Privacy</a></li><li><a href="#">Terms</a></li></ul></div>
    </div>
    <div class="footer-bottom">&copy; <span id="year"></span> NexusShop. All rights reserved.</div>
  </div>
</footer>

<script>
  // data
  const CATEGORIES = [
    { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', count: 24 },
    { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', count: 18 },
    { id: 'clothing', name: 'Clothing', icon: 'fa-tshirt', count: 42 },
    { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', count: 31 },
    { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', count: 27 },
    { id: 'accessories', name: 'Accessories', icon: 'fa-watch', count: 39 }
  ];

  const PRODUCTS = [
    { id: 1, title: 'iPhone 14 Pro Max', price: 1099, oldPrice: 1199, rating: 5, reviews: 128, badge: 'New', img: 'https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80', category: 'Smartphones' },
    { id: 2, title: 'MacBook Pro 14"', price: 1999, rating: 4, reviews: 86, badge: '', img: 'https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80', category: 'Laptops' },
    { id: 3, title: 'Apple Watch Series 8', price: 349, oldPrice: 399, rating: 5, reviews: 214, badge: 'Sale', img: 'https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 4, title: 'Nike Air Max 270', price: 150, rating: 4, reviews: 53, badge: '', img: 'https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80', category: 'Footwear' },
    { id: 5, title: 'Sony A7 IV Camera', price: 2499, rating: 5, reviews: 42, badge: 'New', img: 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' },
    { id: 6, title: 'Chanel No. 5', price: 120, rating: 5, reviews: 189, badge: '', img: 'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 7, title: 'Travel Backpack', price: 79, oldPrice: 99, rating: 4, reviews: 67, badge: 'Sale', img: 'https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80', category: 'Accessories' },
    { id: 8, title: 'Sony WH-1000XM5', price: 399, rating: 5, reviews: 156, badge: '', img: 'https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80', category: 'Gadgets' }
  ];

  const TESTIMONIALS = [
    { name: 'Ava Martin', role: 'Verified Buyer', avatar: 'https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80', text: 'Fast shipping and excellent support. The product exceeded my expectations!', stars: 5 },
    { name: 'Michael Lee', role: 'Frequent Shopper', avatar: 'https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80', text: 'Great selection and smooth checkout. Will definitely shop again.', stars: 4 },
    { name: 'Sophia Chen', role: 'Designer', avatar: 'https://images.unsplash.com/photo-1494790108378-be9c29b29330?auto=format&fit=crop&w=80&q=80', text: 'Love the quality and the packaging. Everything arrived in perfect condition.', stars: 5 },
    { name: 'James Wilson', role: 'Tech Enthusiast', avatar: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=80', text: 'Amazing prices on electronics. The M2 MacBook deal was unbeatable.', stars: 5 }
  ];

  let cartCount = 0;

  const categoriesGrid = document.getElementById('categoriesGrid');
  const productsGrid = document.getElementById('productsGrid');
  const cartCountEl = document.getElementById('cartCount');
  const searchInput = document.getElementById('searchInput');
  const searchBtn = document.getElementById('searchBtn');
  const mobileToggle = document.getElementById('mobileToggle');
  const mobileMenu = document.getElementById('mobileMenu');
  const testimonialsList = document.getElementById('testimonialsList');
  const newsletterForm = document.getElementById('newsletterForm');
  const newsletterEmail = document.getElementById('newsletterEmail');
  const newsletterMsg = document.getElementById('newsletterMsg');

  function escape(text) { return String(text).replace(/[&<>"']/g, s => ({ '&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;' }[s])); }

  function renderCategories() {
    categoriesGrid.innerHTML = '';
    CATEGORIES.forEach(c => {
      const el = document.createElement('div');
      el.className = 'cat-card';
      el.innerHTML = `<div class="icon-wrap"><i class="fas ${c.icon}"></i></div><h4>${c.name}</h4><div class="count">${c.count} items</div>`;
      el.addEventListener('click', () => { searchInput.value = c.name; filterProducts(c.name); document.getElementById('products').scrollIntoView({ behavior: 'smooth' }); });
      categoriesGrid.appendChild(el);
    });
  }

  function renderProducts(list) {
    productsGrid.innerHTML = '';
    if (!list.length) { productsGrid.innerHTML = `<p style="grid-column:1/-1;text-align:center;padding:40px;color:var(--ink-soft);font-weight:600;">No products found.</p>`; return; }
    list.forEach(p => {
      const el = document.createElement('article');
      el.className = 'product-card';
      const badgeClass = p.badge === 'Sale' ? 'sale' : '';
      const stars = '★'.repeat(Math.round(p.rating)) + '☆'.repeat(5 - Math.round(p.rating));
      el.innerHTML = `
        <div class="img-wrap">
          <img src="${p.img}" alt="${escape(p.title)}" loading="lazy">
          ${p.badge ? `<span class="badge ${badgeClass}">${p.badge}</span>` : ''}
          <button class="wish-btn"><i class="far fa-heart"></i></button>
        </div>
        <div class="body">
          <div class="category-tag">${p.category}</div>
          <h5>${escape(p.title)}</h5>
          <div class="price-row"><span class="price">$${p.price.toLocaleString()}</span>${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}</div>
          <div class="rating">${stars} <span>(${p.reviews})</span></div>
        </div>
        <div class="footer">
          <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add</button>
        </div>
      `;
      productsGrid.appendChild(el);
    });
    document.querySelectorAll('.add-btn').forEach(btn => btn.addEventListener('click', function(e) {
      e.stopPropagation();
      const id = Number(this.dataset.id);
      const p = PRODUCTS.find(x => x.id === id);
      if (!p) return;
      cartCount++; cartCountEl.textContent = cartCount;
      this.innerHTML = '<i class="fas fa-check"></i> Added';
      this.classList.add('added');
      setTimeout(() => { this.innerHTML = '<i class="fas fa-cart-plus"></i> Add'; this.classList.remove('added'); }, 1400);
    }));
  }

  function renderTestimonials() {
    testimonialsList.innerHTML = '';
    TESTIMONIALS.forEach(t => {
      const stars = '★'.repeat(t.stars) + '☆'.repeat(5 - t.stars);
      const el = document.createElement('div');
      el.className = 'testimonial-card';
      el.innerHTML = `<div class="stars">${stars}</div><blockquote>“${escape(t.text)}”</blockquote><div class="author"><img class="avatar" src="${t.avatar}" alt="${escape(t.name)}" loading="lazy"><div><div class="name">${escape(t.name)}</div><div class="role">${escape(t.role)}</div></div></div>`;
      testimonialsList.appendChild(el);
    });
  }

  function filterProducts(q) {
    const query = String(q || '').trim().toLowerCase();
    if (!query) { renderProducts(PRODUCTS); return; }
    const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(query) || p.category.toLowerCase().includes(query));
    renderProducts(filtered);
  }

  // deal timer
  (function() {
    const now = new Date();
    const target = new Date(now.getTime() + (24 * 60 + 36) * 60 * 1000);
    function tick() {
      const diff = target - new Date();
      if (diff <= 0) { document.getElementById('dealDays').textContent = '0'; document.getElementById('dealHours').textContent = '00'; document.getElementById('dealMinutes').textContent = '00'; document.getElementById('dealSeconds').textContent = '00'; return; }
      document.getElementById('dealDays').textContent = Math.floor(diff / (24*3600*1000));
      document.getElementById('dealHours').textContent = String(Math.floor((diff % (24*3600*1000)) / (3600*1000))).padStart(2,'0');
      document.getElementById('dealMinutes').textContent = String(Math.floor((diff % (3600*1000)) / (60*1000))).padStart(2,'0');
      document.getElementById('dealSeconds').textContent = String(Math.floor((diff % (60*1000)) / 1000)).padStart(2,'0');
    }
    tick(); setInterval(tick, 1000);
  })();

  // events
  searchBtn.addEventListener('click', () => filterProducts(searchInput.value));
  searchInput.addEventListener('keydown', e => { if (e.key === 'Enter') filterProducts(e.target.value); });
  mobileToggle.addEventListener('click', () => {
    const open = mobileMenu.style.display === 'block';
    mobileMenu.style.display = open ? 'none' : 'block';
    mobileToggle.innerHTML = open ? '<i class="fas fa-bars"></i>' : '<i class="fas fa-times"></i>';
  });
  document.querySelectorAll('#mobileMenu a').forEach(a => a.addEventListener('click', () => { mobileMenu.style.display = 'none'; mobileToggle.innerHTML = '<i class="fas fa-bars"></i>'; }));
  document.getElementById('shopNow').addEventListener('click', () => document.getElementById('products').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('exploreDeals').addEventListener('click', () => document.getElementById('deals').scrollIntoView({ behavior: 'smooth' }));
  document.getElementById('buyDeal').addEventListener('click', function() {
    cartCount++; cartCountEl.textContent = cartCount;
    const orig = this.innerHTML;
    this.innerHTML = '<i class="fas fa-check"></i> Added!';
    this.style.background = '#7f9f8c';
    setTimeout(() => { this.innerHTML = orig; this.style.background = ''; }, 1500);
  });
  document.getElementById('cartBtn').addEventListener('click', () => alert(`🛒 Cart has ${cartCount} item${cartCount !== 1 ? 's' : ''}.`));
  newsletterForm.addEventListener('submit', e => {
    e.preventDefault();
    const email = newsletterEmail.value.trim();
    if (!email || !email.includes('@')) { newsletterMsg.textContent = 'Please enter a valid email.'; newsletterMsg.style.color = '#e05a3a'; return; }
    newsletterMsg.textContent = '🎉 Thanks for subscribing!'; newsletterMsg.style.color = '#7f9f8c';
    newsletterEmail.value = '';
    setTimeout(() => newsletterMsg.textContent = '', 3000);
  });
  document.getElementById('year').textContent = new Date().getFullYear();

  renderCategories();
  renderProducts(PRODUCTS);
  renderTestimonials();
  cartCountEl.textContent = 0;
  window.addEventListener('resize', () => { if (window.innerWidth > 768) { mobileMenu.style.display = 'none'; mobileToggle.innerHTML = '<i class="fas fa-bars"></i>'; } });
</script>
</body>
</html>
