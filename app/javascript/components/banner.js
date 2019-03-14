import Typed from 'typed.js';
  const text = document.getElementById('banner-typed-text');
  console.log(text)
  if (text) {
    new Typed('#banner-typed-text', {
      strings: ["Sustainable solutions to take action, now! 🤟"],
      typeSpeed: 60,
      loop: true
    });
  }
