//= link_tree ../images
//= link_directory ../stylesheets .css
let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");

sidebarBtn.onclik = function() {
    sidebar.classList.toggle("active");
}