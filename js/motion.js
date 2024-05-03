  const hamburger = document.querySelector('.header .nav-bar .nav-list .hamburger');
const mobile_menu = document.querySelector('.header .nav-bar .nav-list ul');
const menu_item = document.querySelectorAll('.header .nav-bar .nav-list ul li a');
const header = document.querySelector('.header.container');

hamburger.addEventListener('click',()=>{
    hamburger.classList.toggle('active');
    mobile_menu.classList.toggle('active');
});

document.addEventListener('scroll',()=>{
    var scroll_position = window.scrollY;
    if(scroll_position > 50){
        header.style.backgroundColor = "#001";
    }
    else{
        header.style.backgroundColor = "transparent"
    }
})

menu_item.forEach(item=>{
    item.addEventListener('click',()=>{
    hamburger.classList.toggle('active');
    mobile_menu.classList.toggle('active');
    })
});
//Slideshow
var slideIndex = 0;
carousel();

function carousel() {
    var i;
    var x =
    document.getElementsByClassName("myslides");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > x.length)
    {slideIndex = 1}
    x[slideIndex-1].style.display = "block";
    setTimeout(carousel, 7000);
}