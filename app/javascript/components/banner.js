import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Sustainable solutions to tackle the climate problem 🤟"],
    typeSpeed: 60,
    loop: true
  });
}

export { loadDynamicBannerText };
