// Buttons to change color when clicked
const buttons = document.querySelectorAll(".btn-tags");
const slider = document.querySelector(".slider");
const dataholders = document.querySelectorAll(".data-holder");



const toggleTagButton = () => {
  if (dataholders) {
    const tag = slider.dataset.tag;
    dataholders.forEach(function(holder) {
      // console.log(holder.dataset.tag)
      if (holder.dataset.tag === tag) {
        holder.firstElementChild.classList.toggle("clicked")
      }
    })
  }
}

export { toggleTagButton };
