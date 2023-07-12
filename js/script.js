const carouselImages = document.querySelectorAll('.carousel-image');
let currentImageIndex = 0;
showNextImage()
function showNextImage() {
  carouselImages[currentImageIndex].style.display = 'none';
  currentImageIndex = (currentImageIndex + 1) % carouselImages.length;
  carouselImages[currentImageIndex].style.display = 'block';
}

setInterval(showNextImage, 3000);