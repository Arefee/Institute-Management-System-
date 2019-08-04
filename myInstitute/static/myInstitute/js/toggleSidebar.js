function openNav() {
    if (x.matches) {
        document.getElementById("mySidebar").style.width = "80px";
        document.getElementById("main").style.marginRight = "80px";
    } else {
        document.getElementById("mySidebar").style.width = "250px";
        document.getElementById("main").style.marginRight = "250px";
    }
}

function closeNav() {
    document.getElementById("mySidebar").style.width = "0";
    document.getElementById("main").style.marginRight = "0";
}

var x = window.matchMedia("(max-width: 700px)")
openNav(x)
x.addListener(openNav)