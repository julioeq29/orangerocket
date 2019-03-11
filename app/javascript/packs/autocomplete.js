const input = document.querySelector(".searchbar #query");
const results = document.querySelector("#list-of-results");

input.addEventListener("keyup", () => {
  console.log(input.value)
  fetch(`http://localhost:3000/api/v1/categories?query=${input.value}`)
    .then(response => response.json())
    .then((data) => {
      results.innerHTML = ""
      data.forEach((obj) => {
        results.insertAdjacentHTML('beforeend', `<li><a href="/categories/${obj.id}">${obj.name}</a></li>`);
        console.log(results)
      })
    });
})
document.addEventListener("click", () => {
  if (results.children) {
    results.innerHTML = '';
  }
})
