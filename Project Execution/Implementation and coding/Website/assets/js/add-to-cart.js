const alert = import("./alertify.min.js");

// add items to cart
const addToCartBtn = document.querySelectorAll('.add-to-cart-btn');

// add event listeners
addToCartBtn.forEach(addEvent);

// the event
function addEvent(element) {
    element.addEventListener('click', addItemsToCart);
}

// function that will be called on event
function addItemsToCart(event) {

    // setup ajax request
    let xhr = new XMLHttpRequest();
    let productId = event.target.getAttribute('id');

    xhr.open('POST', './ajax-req-processings/add-items-to-cart.php', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    xhr.onload = function() {
        alertify.alert('Alert', this.responseText).set({transition: 'fade'});
    }

    // send request
    xhr.send("productId="+productId);
}
