const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const homepage = document.querySelector('.home-cards');
  if (navbar && homepage) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= window.innerHeight) {
        navbar.classList.add('navbar-lewagon-white');
      } else {
        navbar.classList.remove('navbar-lewagon-white');
      }
    });
  }
  if (homepage === null) {
    navbar.classList.add('navbar-lewagon-white');
    navbar.classList.remove('fixed-top');
  }
}

export { initUpdateNavbarOnScroll };
