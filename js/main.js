window.addEventListener("DOMContentLoaded", (event) => {
    let myHeading = document.querySelector ("h1");
    myHeading.textContent = "Bienvenue à Arcadia";

    inputs = document.querySelectorAll("input:not[type=\"submit\"], textarea");
    
    inputs.forEach(e => {
        e.addEventListener("click", function () {
            inputs.forEach(e => {
                e.style.borderBottom = "2px solid black";
            });
            e.style.borderBottom = "2px solid #074D1F";
        })       
    })
})


