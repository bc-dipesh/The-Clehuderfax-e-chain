const hamburgerMenu = document.querySelector(".hamburger-menu");
const asideNavList = document.querySelector(".aside-nav-list")
const mobileAsideNavList = document.querySelector(".mobile-aside-nav-list");
// const body = document.querySelector("body");

hamburgerMenu.addEventListener('click', () => {
    hamburgerMenu.classList.toggle("change");
    asideNavList.classList.toggle("change");
    // body.classList.toggle("push-left");
});
