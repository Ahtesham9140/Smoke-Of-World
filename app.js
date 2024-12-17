
    function toggleMenu() {
        const navLinks = document.querySelector('.nav-links');
        navLinks.classList.toggle('active');
    }

    function showSection(sectionId) {
        const sections = document.querySelectorAll('main, .card-sec, .card-third, .card-forth, .card-fifth, .letter, .footer');
        const navLinks = document.querySelector('.nav-links');

        // If "Home" is clicked, show all sections
        if (sectionId === 'header') {
            sections.forEach(section => section.style.display = 'block');
        } else {
            // Hide all sections and show the targeted section
            sections.forEach(section => section.style.display = 'none');
            const activeSection = document.getElementById(sectionId);
            if (activeSection) {
                activeSection.style.display = 'block';
            }
        }

        // Close the hamburger menu
        if (navLinks.classList.contains('active')) {
            navLinks.classList.remove('active');
        }
    }

    // Show all sections by default on load
    document.addEventListener('DOMContentLoaded', () => {
        const sections = document.querySelectorAll('main, .card-sec, .card-third, .card-forth, .card-fifth, .letter, .footer');
        sections.forEach(section => section.style.display = 'block');
    });

