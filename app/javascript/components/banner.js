import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.querySelector('#banner-typed-text');
  if (banner) {
    new Typed('#banner-typed-text', {
      strings: ["Rent unique places", "Meet new people", "Discover the world"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
