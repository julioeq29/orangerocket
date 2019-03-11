import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const typed = document.getElementById('banner-typed-text')
  if (typed) {
    new Typed('#banner-typed-text', {
      strings: ["Sustainable solutions to tackle the climate problem 🤟"],
      typeSpeed: 60,
      loop: true
    });

  }
}

export { loadDynamicBannerText };
