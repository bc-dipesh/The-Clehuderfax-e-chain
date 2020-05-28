// dynamically change the range values displayed to the user
const slider = document.getElementById('priceRange');
const minPriceSpan = document.querySelector('min-price');
const maxPriceSpan = document.querySelector('max-price'); 

// this will update the price while user slides the price range.
slider.addEventListener("input", () => {
    maxPriceSpan.innerHTML = slider.value;
});