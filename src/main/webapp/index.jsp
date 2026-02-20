<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Web App</title>
    <style>
        :root {
            --body-bg: linear-gradient(135deg, #1d2b64 0%, #f8cdda 100%);
            --text-main: #1f2937;
            --card-bg: rgba(255, 255, 255, 0.92);
            --badge-bg: #eef2ff;
            --badge-text: #4338ca;
            --title-text: #111827;
            --paragraph-text: #374151;
            --secondary-btn-bg: #ffffff;
            --secondary-btn-text: #312e81;
            --secondary-btn-border: #c7d2fe;
            --switch-bg: #ffffff;
            --switch-text: #111827;
            --switch-border: #d1d5db;
            --switch-shadow: 0 8px 18px rgba(16, 24, 40, 0.18);
        }

        body.dark-mode {
            --body-bg: linear-gradient(135deg, #0f172a 0%, #1f2937 100%);
            --text-main: #f3f4f6;
            --card-bg: rgba(17, 24, 39, 0.92);
            --badge-bg: #312e81;
            --badge-text: #c7d2fe;
            --title-text: #f9fafb;
            --paragraph-text: #d1d5db;
            --secondary-btn-bg: #111827;
            --secondary-btn-text: #e5e7eb;
            --secondary-btn-border: #374151;
            --switch-bg: #111827;
            --switch-text: #f9fafb;
            --switch-border: #4b5563;
            --switch-shadow: 0 8px 18px rgba(0, 0, 0, 0.35);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-height: 100vh;
            font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
            background: var(--body-bg);
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 24px;
            color: var(--text-main);
            transition: background 0.3s ease, color 0.3s ease;
        }

        .theme-switch {
            position: fixed;
            top: 20px;
            right: 20px;
            border: 1px solid var(--switch-border);
            border-radius: 999px;
            background: var(--switch-bg);
            color: var(--switch-text);
            box-shadow: var(--switch-shadow);
            padding: 10px 14px;
            font-size: 14px;
            font-weight: 600;
            cursor: pointer;
            transition: transform 0.2s ease, background 0.3s ease, color 0.3s ease;
        }

        .theme-switch:hover {
            transform: translateY(-2px);
        }

        .card {
            width: min(760px, 100%);
            background: var(--card-bg);
            border-radius: 24px;
            padding: 48px;
            box-shadow: 0 20px 50px rgba(16, 24, 40, 0.25);
            backdrop-filter: blur(6px);
            transition: background 0.3s ease;
        }

        .badge {
            display: inline-block;
            padding: 8px 14px;
            border-radius: 999px;
            background: var(--badge-bg);
            color: var(--badge-text);
            font-size: 13px;
            font-weight: 600;
            letter-spacing: 0.3px;
            margin-bottom: 18px;
            transition: background 0.3s ease, color 0.3s ease;
        }

        h1 {
            font-size: clamp(2rem, 4vw, 3rem);
            line-height: 1.15;
            margin-bottom: 16px;
            color: var(--title-text);
            transition: color 0.3s ease;
        }

        p {
            font-size: 1.05rem;
            line-height: 1.7;
            color: var(--paragraph-text);
            max-width: 60ch;
            margin-bottom: 30px;
            transition: color 0.3s ease;
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
            background: var(--secondary-btn-bg);
            color: var(--secondary-btn-text);
            border: 1px solid var(--secondary-btn-border);
        }

        .btn:hover {
            transform: translateY(-2px);
        }

        .btn-primary:hover {
            box-shadow: 0 14px 28px rgba(79, 70, 229, 0.36);
        }

        @media (max-width: 640px) {
            .theme-switch {
                top: 14px;
                right: 14px;
                padding: 9px 12px;
            }

            .card {
                padding: 30px 24px;
                border-radius: 18px;
            }
        }
    </style>
</head>
<body>
<button id="themeSwitch" class="theme-switch" type="button" aria-label="Switch theme">Switch to Dark Mode</button>
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
<script>
    (function () {
        const storageKey = "theme-mode";
        const themeSwitch = document.getElementById("themeSwitch");

        function applyTheme(mode) {
            const isDark = mode === "dark";
            document.body.classList.toggle("dark-mode", isDark);
            themeSwitch.textContent = isDark ? "Switch to Light Mode" : "Switch to Dark Mode";
        }

        const savedMode = localStorage.getItem(storageKey);
        if (savedMode === "dark" || savedMode === "light") {
            applyTheme(savedMode);
        } else {
            applyTheme("light");
        }

        themeSwitch.addEventListener("click", function () {
            const nextMode = document.body.classList.contains("dark-mode") ? "light" : "dark";
            applyTheme(nextMode);
            localStorage.setItem(storageKey, nextMode);
        });
    })();
</script>
</body>
</html>
