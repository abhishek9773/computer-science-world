// custom-script.js
document.addEventListener("DOMContentLoaded", function() {
    // Load custom header
    fetch("templet/html/header.html")
        .then(response => response.text())
        .then(headerContent => {
            document.getElementById("header-container").innerHTML = headerContent;
        });

    // Load content area
    fetch("templet/html/content.html")
        .then(response=>response.text())
        .then(ContentArea=>{
          document.getElementById("content-container")
        .innerHTML=ContentArea;
        });
    // Load custom footer
    fetch("templet/html/footer.html")
        .then(response => response.text())
        .then(footerContent => {
            document.getElementById("footer-container").innerHTML = footerContent;
        });
});



