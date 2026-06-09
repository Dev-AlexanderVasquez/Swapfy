const menuToggle = document.getElementById('menu-toggle');
const navRight = document.getElementById('nav-right');
// Seleccionamos todos los enlaces dentro del menú
const navLinks = document.querySelectorAll('.nav-links a');

// Función para alternar el menú
menuToggle.addEventListener('click', () => {
    navRight.classList.toggle('active');
});

// NUEVO: Cerrar el menú al hacer clic en un enlace
navLinks.forEach(link => {
    link.addEventListener('click', () => {
        navRight.classList.remove('active');
    });
});