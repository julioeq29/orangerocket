import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const text = document.getElementById('banner-typed-text');
  if (text) {
    new Typed('#banner-typed-text', {
      strings: ["Sustainable solutions to tackle the climate problem 🤟"],
      typeSpeed: 60,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
