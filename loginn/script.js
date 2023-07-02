const switchLinks = document.querySelectorAll(".switch-link");
const forms = document.querySelectorAll(".form");

switchLinks.forEach(function (link) {
  link.addEventListener("click", function (e) {
    e.preventDefault();
    const formId = this.getAttribute("data-form");

    forms.forEach(function (form) {
      if (form.id === formId) {
        form.style.display = "block";
      } else {
        form.style.display = "none";
      }
    });
  });
});
