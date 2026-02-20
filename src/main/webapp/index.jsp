<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>My Web App</title>
	<style>
		* {
			margin: 0;
			padding: 0;
			box-sizing: border-box;
		}

		body {
			min-height: 100vh;
			font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
			background: linear-gradient(135deg, #1d2b64 0%, #f8cdda 100%);
			display: flex;
			align-items: center;
			justify-content: center;
			padding: 24px;
			color: #1f2937;
		}

		.card {
			width: min(760px, 100%);
			background: rgba(255, 255, 255, 0.92);
			border-radius: 24px;
			padding: 48px;
			box-shadow: 0 20px 50px rgba(16, 24, 40, 0.25);
			backdrop-filter: blur(6px);
		}

		.badge {
			display: inline-block;
			padding: 8px 14px;
			border-radius: 999px;
			background: #eef2ff;
			color: #4338ca;
			font-size: 13px;
			font-weight: 600;
			letter-spacing: 0.3px;
			margin-bottom: 18px;
		}

		h1 {
			font-size: clamp(2rem, 4vw, 3rem);
			line-height: 1.15;
			margin-bottom: 16px;
			color: #111827;
		}

		p {
			font-size: 1.05rem;
			line-height: 1.7;
			color: #374151;
			max-width: 60ch;
			margin-bottom: 30px;
		}

		.actions {
			display: flex;
			flex-wrap: wrap;
			gap: 12px;
		}

		.btn {
			text-decoration: none;
			padding: 12px 20px;
			border-radius: 12px;
			font-weight: 600;
			transition: transform 0.2s ease, box-shadow 0.2s ease;
		}

		.btn-primary {
			background: #4f46e5;
			color: #ffffff;
			box-shadow: 0 10px 24px rgba(79, 70, 229, 0.3);
		}

		.btn-secondary {
			background: #ffffff;
			color: #312e81;
			border: 1px solid #c7d2fe;
		}

		.btn:hover {
			transform: translateY(-2px);
		}

		.btn-primary:hover {
			box-shadow: 0 14px 28px rgba(79, 70, 229, 0.36);
		}

		@media (max-width: 640px) {
			.card {
				padding: 30px 24px;
				border-radius: 18px;
			}
		}
	</style>
</head>
<body>
<main class="card">
	<span class="badge">Java Web Application</span>
	<h1>Welcome to Your Beautiful New Homepage</h1>
	<p>
		Your project is now presented with a modern, elegant design that works well on both desktop and mobile screens.
		You can use this as a stylish starting point for your next sections and features.
	</p>
	<div class="actions">
		<a class="btn btn-primary" href="#">Get Started</a>
		<a class="btn btn-secondary" href="#">Learn More</a>
	</div>
</main>
</body>
</html>
