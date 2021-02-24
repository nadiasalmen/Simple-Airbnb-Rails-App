import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Rent unique places", "Meet new people", "Discover the world"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
