//1.HOME PAGE
//1.1SLIDE SHOW
document.addEventListener("DOMContentLoaded", function(event) {
  var slides = document.querySelectorAll(".slide");
  var currentSlide = 0;

  function showSlide(n) {
    slides[currentSlide].classList.remove("active");
    currentSlide = (n + slides.length) % slides.length;
    slides[currentSlide].classList.add("active");
  }


  setInterval(function() {
    showSlide(currentSlide + 1);
  }, 3000);


});


//1.2form validation
function validateForm() {
  var name = document.getElementById('name').value;
  var email = document.getElementById('email').value;
 
  var nameError = document.getElementById('nameError');
  var emailError = document.getElementById('emailError');
 
  var isValid = true;
  
  nameError.textContent = "";
  emailError.textContent = "";
 
  if (name === "") {
    nameError.textContent = "Name is required.";
    isValid = false;
  }
  
  if (email === "") {
    emailError.textContent = "Email is required.";
    isValid = false;
  } else if (!isValidEmail(email)) {
    emailError.textContent = "Invalid email format.";
    isValid = false;
  }
 
  return isValid;
}

function isValidEmail(email) {
  // Basic email validation using regular expression
  var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailPattern.test(email);
}

// 1.3 greetinggs
window.onload = function() {
  var greetingElement = document.getElementById('greeting');
  var currentHour = new Date().getHours();
  var greeting;

  if (currentHour < 12) {
    greeting = 'Good morning!';
  } else if (currentHour < 18) {
    greeting = 'Good afternoon!';
  } else {
    greeting = 'Good evening!';
  }

  greetingElement.innerHTML = greeting;
};

//2.project page
//SEARCH MECHANISM
function searchProjects() {
  var input, filter, ol, li, h2, i, txtValue;
  input = document.getElementById("searchInput");
  filter = input.value.toUpperCase();
  ol = document.getElementById("projectlist");
  li = ol.getElementsByTagName("li");

  for (i = 0; i < li.length; i++) {
    h2 = li[i].getElementsByTagName("h2")[0];
    txtValue = h2.textContent || h2.innerText;
    if (txtValue.toUpperCase().indexOf(filter) > -1) {
      li[i].style.display = "";
    } else {
      li[i].style.display = "none";
    }
  }
}
//3.tooltip
document.addEventListener('DOMContentLoaded', function () {
  tippy('ol', {
      allowHTML: true,
      theme: 'light',
  });
});

//4.contact
function initMap() {
  var myLatLng = { lat: -13.963213, lng: 33.774119 };

  var map = new google.maps.Map(document.getElementById('map'), {
      center: myLatLng,
      zoom: 10
  });

  var marker = new google.maps.Marker({
      position: myLatLng,
      map: map,
      title: 'My Location'
  });
}

//4.1 form validation
function contactv() {
  var name = document.getElementById('name').value;
  var phone = document.getElementById('Pnumber').value;
 
  var nameError = document.getElementById('nameError');
  var emailError = document.getElementById('phonenumberError');
 
  var isValid = true;
  
  nameError.textContent = "";
  phonenumberError.textContent = "";
 
  if (name === "") {
    nameError.textContent = "Name is required.";
    isValid = false;
  }
  
  if (phone === "") {
    phonenumberError.textContent = "phone number is required.";
    isValid = false;
  } else if (!isValidPhonenumber(phone)) {
    phonenumberError.textContent = "Invalid email format.";
    isValid = false;
  }
 
  return isValid;
}
