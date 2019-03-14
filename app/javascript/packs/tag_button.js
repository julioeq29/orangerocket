// Buttons to change color when clicked
const buttons = document.querySelectorAll(".btn-tags");
const slider = document.querySelector(".slider");
const dataholders = document.querySelectorAll(".data-holder");



const toggleTagButton = () => {
  if (slider) {
    const tag = slider.dataset.tag;
    dataholders.forEach(function(holder) {
      // console.log(holder.dataset.tag)
      if (holder.dataset.tag === tag) {
        holder.firstElementChild.classList.toggle("clicked")
      }
    })
  }
}


toggleTagButton();
export { toggleTagButton };
