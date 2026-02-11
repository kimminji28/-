fetch("http://localhost:3000/S_PRODUCT/ALL/1")
  .then((resp) => resp.json())
  .then((data) => {
    console.log(data);
    data.forEach((product) => {
      const parent = document.querySelector("#kfood>section");
      const str = `<div id="snack">
      <img src="img/${product.SPRODUCT_NAME}.jpg" alt="홈런볼" width="200px" height="200px" />
      <p>${product.SPRODUCT_NAME}</p>
      <p>${product.SPRODUCT_PRICE}원</p>
      <p>⭐⭐⭐⭐⭐ (${product.REVIEW})</p>
      </div>`;

      parent.insertAdjacentHTML("beforeend", str);
    });
  })
  .catch((err) => console.log(err));

document.querySelectorAll("aside>ul>li").forEach((li) => {
  li.addEventListener("click", (e) => {
    console.log(e.target.className || "ALL");
    const category = e.target.className;

    fetch(`http://localhost:3000/S_PRODUCT/${category}/1`)
      .then((resp) => resp.json())
      .then((data) => {
        console.log(data);
        const parent = document.querySelector("#kfood>section");
        parent.innerHTML = "";
        data.forEach((product) => {
          const str = `<div id="snack">
      <img src="img/${product.SPRODUCT_NAME}.jpg" alt="홈런볼" width="200px" height="200px" />
      <p>${product.SPRODUCT_NAME}</p>
      <p>${product.SPRODUCT_PRICE}원</p>
      <p>⭐⭐⭐⭐⭐ (${product.REVIEW})</p>
      </div>`;

          parent.insertAdjacentHTML("beforeend", str);
        });
      })
      .catch((err) => console.log(err));
  });
});
