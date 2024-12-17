
    // Toggle hamburger menu visibility
    function toggleMenu() {
        const navLinks = document.querySelector('.nav-links');
        navLinks.classList.toggle('active');
    }

    // Show a specific section and hide others
    function showSection(sectionId) {
        const sections = document.querySelectorAll('main, .card-sec, .card-third, .card-forth, .card-fifth, .letter, .footer');
        sections.forEach(section => section.style.display = 'none');

        const activeSection = document.getElementById(sectionId);
        if (activeSection) {
            activeSection.style.display = 'block';
        }
    }

    // Ensure the home section is visible on page load
    document.addEventListener('DOMContentLoaded', () => {
        showSection('header');
    });




   




    function toggleMenu() {
        const navLinks = document.querySelector('.nav-links');
        navLinks.classList.toggle('active');
    }
    
    function showSection(sectionId) {
        const sections = document.querySelectorAll('main, .card-sec, .card-third, .card-forth, .card-fifth, .letter, .footer');
        sections.forEach(section => {
            section.style.display = 'none'; // Hide all sections
        });
    
        const activeSection = document.getElementById(sectionId);
        if (activeSection) {
            activeSection.style.display = 'block'; // Show only the targeted section
        }
    }
    
    // Ensure all sections are visible on page load
    document.addEventListener('DOMContentLoaded', () => {
        const sections = document.querySelectorAll('main, .card-sec, .card-third, .card-forth, .card-fifth, .letter, .footer');
        sections.forEach(section => {
            section.style.display = 'block'; // Show all sections
        });
    });
    











* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    line-height: 1.6;
}

header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 20px;
    background-color: #333;
    color: white;
    position: relative;
}

.logo {
    width: 50px;
    height: 50px;
    border-radius: 50%;
    object-fit: cover;
    position: absolute;
    top: 10px;
    right: 10px;
}

.nav {
    position: relative;
}

.hamburger {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.hamburger div {
    width: 25px;
    height: 3px;
    background-color: white;
    margin: 4px 0;
}

.nav-links {
    display: flex;
    gap: 20px;
}

.nav-links a {
    text-decoration: none;
    color: white;
    padding: 5px 10px;
}

.nav-links a:hover {
    background-color: #555;
    border-radius: 5px;
}

@media (max-width: 768px) {
    .hamburger {
        display: flex;
    }

    .nav-links {
        display: none;
        flex-direction: column;
        position: absolute;
        top: 50px;
        right: 20px;
        background-color: #333;
        padding: 10px;
        border-radius: 5px;
    }

    .nav-links.active {
        display: flex;
    }
}

main {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
}

main .text-section {
    max-width: 50%;
}

main img {
    max-width: 40%;
    border-radius: 10px;
}

.card-sec, .card-third, .card-forth, .card-fifth {
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin: 20px 0;
    gap: 10px;
}

.card-sec img, .card-third img, .card-forth img, .card-fifth img {
    width: 200px;
    height: 150px;
    object-fit: cover;
    border-radius: 10px;
    transition: transform 0.3s, box-shadow 0.3s;
}

.card-sec img:hover, .card-third img:hover, .card-forth img:hover, .card-fifth img:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
}

.card-sec h1, .card-third h1, .card-forth h1, .card-fifth h1 {
    text-align: center;
}

.card-sec p, .card-third p, .card-forth p, .card-fifth p {
    text-align: center;
}

.letter, .footer {
    display: none;
    padding: 20px;
    background-color: #f4f4f4;
}

.footer nav {
    margin: 10px 0;
}

.footer nav p {
    margin-bottom: 5px;
}

.footer nav a {
    margin-right: 10px;
    color: #333;
    text-decoration: none;
}

.footer nav a:hover {
    text-decoration: underline;
}

.letter input {
    display: block;
    margin-bottom: 10px;
    padding: 10px;
    width: 100%;
    max-width: 300px;
}

.letter button {
    padding: 10px;
    background-color: #333;
    color: white;
    border: none;
    cursor: pointer;
}




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SMOKH WORLD</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="nav">
            <div class="hamburger" onclick="toggleMenu()">
                <div></div>
                <div></div>
                <div></div>
            </div>
            <nav class="nav-links">
                <a href="#" onclick="showSection('header')">Home</a>
                <a href="#" onclick="showSection('letter')">About</a>
                <a href="#" onclick="showSection('footer')">Contact</a>
                <a href="#" onclick="showSection('card-sec')">Set</a>
            </nav>
        </div>
        <img src="download.png" alt="Logo" class="logo">
    </header>

    <main id="header">
        <div class="text-section">
            <h1>SMOKH WORLD</h1>
            <h2>All Flavors Hookah Available</h2>
            <p>Most Expensive</p>
        </div>
        <img src="main h.jpeg" alt="Hookah">
    </main>

    <div class="card-sec" id="card-sec">
        <div>
            <img src="first h.jpeg" alt="Hookah 1">
            <h1>Hookah 1</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="sec h.jpeg" alt="Hookah 2">
            <h1>Hookah 2</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="third h.jpeg" alt="Hookah 3">
            <h1>Hookah 3</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="forth h.jpeg" alt="Hookah 4">
            <h1>Hookah 4</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
    </div>
    
    <!-- Add content for the third card section -->

    <div class="card-third">
        <div>
            <img src="first h.jpeg" alt="Hookah 1">
            <h1>Hookah 1</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="sec h.jpeg" alt="Hookah 2">
            <h1>Hookah 2</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="third h.jpeg" alt="Hookah 3">
            <h1>Hookah 3</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="forth h.jpeg" alt="Hookah 4">
            <h1>Hookah 4</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
    </div>

    <!-- Add content for the forth card section -->

    <div class="card-forth">
        <div>
            <img src="first h.jpeg" alt="Hookah 1">
            <h1>Hookah 1</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="sec h.jpeg" alt="Hookah 2">
            <h1>Hookah 2</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="third h.jpeg" alt="Hookah 3">
            <h1>Hookah 3</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="forth h.jpeg" alt="Hookah 4">
            <h1>Hookah 4</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
    </div>

    <!-- Add content for the fifth card section -->

    <div class="card-fifth">
        <div>
            <img src="first h.jpeg" alt="Hookah 1">
            <h1>Hookah 1</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="sec h.jpeg" alt="Hookah 2">
            <h1>Hookah 2</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="third h.jpeg" alt="Hookah 3">
            <h1>Hookah 3</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
        <div>
            <img src="forth h.jpeg" alt="Hookah 4">
            <h1>Hookah 4</h1>
            <p>Lorem ipsum dolor sit.</p>
        </div>
    </div>

    <div class="letter" id="letter">
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Facilis, error.</p>
        <input type="text" placeholder="Sign In">
        <button>Sign Up</button>
    </div>

    <div class="footer" id="footer">
        <nav>
            <p>Service</p>
        </nav>
        <nav>
            <p>Customer</p>
        </nav>
        <nav>
            <a href="#">Instagram</a>
            <a href="#">Facebook</a>
            <p>Fardeen</p>
            <p>Contact</p>
            <a href="#">WhatsApp</a>
        </nav>
    </div>

    <script>
        function toggleMenu() {
            const navLinks = document.querySelector('.nav-links');
            navLinks.classList.toggle('active');
        }

        function showSection(sectionId) {
            const sections = document.querySelectorAll('main, .card-sec, .card-third, .card-forth, .card-fifth, .letter, .footer');
            sections.forEach(section => section.style.display = 'none');

            const activeSection = document.getElementById(sectionId);
            if (activeSection) {
                activeSection.style.display = 'block';
            }
        }

        // Show Home section by default
        showSection('header');
    </script>
</body>
</html>
