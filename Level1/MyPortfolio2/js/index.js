const nav_bar = document.querySelector(".nav");
const buttons = document.getElementsByClassName("about-btn");

window.onscroll = function () {
  scrollFunction();
};

function scrollFunction() {
  if (document.body.scrollTop > 80 || document.documentElement.scrollTop > 80) {
    nav_bar.style.padding = "2%";
    nav_bar.style.height = "10%";
    nav_bar.style.marginTop = "0";
    nav_bar.style.backgroundColor = "black";
  } else {
    nav_bar.style.height = "20%";
    nav_bar.style.padding = "5%";
    nav_bar.style.background = "none";
  }
}

for (let i = 0; i < buttons.length; i++) {
  buttons[i].addEventListener("click", function () {
    let current = document.getElementsByClassName("active");

    current[0].className = current[0].className.replace("active", "");

    this.className += active;
  });
}



