/* Set rates + misc */
let taxRate = 0.05;
let shippingRate = 15.00;
let fadeTime = 300;
// let productId = document.getElementById('productId').value;

/* Assign actions */
$('.product-quantity input').change(function () {
    updateQuantity(this);
});

$('.product-removal button').click(function () {
    removeItem(this);
});

/* Recalculate cart */
function recalculateCart() {
    let subtotal = 0;

    /* Sum up row totals */
    $('.product').each(function () {
        subtotal += parseFloat($(this).children('.product-line-price').text());
    });

    /* Calculate totals */
    let tax = subtotal * taxRate;
    let shipping = (subtotal > 0 ? shippingRate : 0);
    let total = subtotal + tax + shipping;

    /* Update totals display */
    $('.totals-value').fadeOut(fadeTime, function () {
        $('#cart-subtotal').html(subtotal.toFixed(2));
        $('#cart-tax').html(tax.toFixed(2));
        $('#cart-shipping').html(shipping.toFixed(2));
        $('#cart-total').html(total.toFixed(2));
        if (total == 0) {
            $('.checkout').fadeOut(fadeTime);
        } else {
            $('.checkout').fadeIn(fadeTime);
        }
        $('.totals-value').fadeIn(fadeTime);
    });
}


/* Update quantity */
function updateQuantity(quantityInput) {
    /* Calculate line price */
    let productRow = $(quantityInput).parent().parent();
    let price = parseFloat(productRow.children('.product-price').text());
    let quantity = $(quantityInput).val();
    let linePrice = price * quantity;

    /* Update line price display and recalc cart totals */
    productRow.children('.product-line-price').each(function () {
        $(this).fadeOut(fadeTime, function () {
            $(this).text(linePrice.toFixed(2));
            recalculateCart();
            $(this).fadeIn(fadeTime);
        });
    });
    let productId = $(quantityInput).next().val();
    updateBasketProducts(productId, quantity);
}


/* Remove item from cart */
function removeItem(removeButton) {
    /* Remove row from DOM and recalc cart total */
    let productRow = $(removeButton).parent().parent();
    productRow.slideUp(fadeTime, function () {
        productRow.remove();
        recalculateCart();
    });
    let productId = $(removeButton).next().val();
    deleteBasketProduct(productId);
}

/* update session details */
function updateBasketProducts(productId, quantity) {
    //  send a post ajax request to update the basket products session
    let xhr = new XMLHttpRequest();

    xhr.open('POST', './ajax-req-processings/update-basket-prod.php', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    // send request
    xhr.send("productId="+productId+"&prodQuantity="+quantity);
}

function deleteBasketProduct(productId) {
    //  send a post ajax request to delete the basket product from session
    let xhr = new XMLHttpRequest();

    xhr.open('POST', './ajax-req-processings/delete-basket-prod.php', true);
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");

    // send request
    xhr.send("productId="+productId);
}