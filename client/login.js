const btn = document.querySelector("#btn");

btn.addEventListener("click", login);

function login() {
  let logindata = {
    LOGIN_ID: document.querySelector("#UserID").value,
    LOGIN_PW: document.querySelector("#pw").value,
  };

  fetch("http://localhost:3000/S_LOGIN", {
    method: "POST",
    headers: { "content-type": "application/json" },
    body: JSON.stringify(logindata),
  })
    .then((resp) => resp.json())
    .then((data) => {
      if (data.retCode === "OK") {
        alert("로그인 되었습니다.");
        window.location.href = "main.html";
      } else {
        alert("로그인 실패했습니다.");
      }
    })
    .catch((err) => {
      console.error("연결 오류:", err);
    });
}
