// Buttons to change color when clicked
const button = document.querySelector("#clickme");

const toggleTagButton = () => {
  if (button) {
    button.addEventListener('click', (e) => {
      this.style.backgroundColor = 'red';
    });
  }
}

export { toggleTagButton };
