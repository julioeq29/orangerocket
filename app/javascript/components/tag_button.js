// Buttons to change color when clicked
const buttons = document.querySelectorAll(".btn-tags");
const slider = document.querySelector(".slider");
const tag = slider.dataset.tag
const dataholders = document.querySelectorAll(".data-holder");
console.log(tag)




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
