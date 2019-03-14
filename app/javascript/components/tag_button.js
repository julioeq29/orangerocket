// Buttons to change color when clicked
const buttons = document.querySelectorAll(".btn-tags");
const slider = document.querySelector(".slider");
if (slider) {
  const tag = slider.dataset.tag;
}
const dataholders = document.querySelectorAll(".data-holder");



const toggleTagButton = () => {
  if (dataholders) {
    dataholders.forEach(function(holder) {
      console.log(holder.dataset.tag == tag)
      if (holder.dataset.tag == tag) {
        holder.firstElementChild.classList.toggle("clicked")
      }
    })
  }
}

export { toggleTagButton };
