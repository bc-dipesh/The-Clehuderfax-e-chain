// // get the buttons from dom.
// const incrementBtn = document.getElementById('incrementBtn');
// const decrementBtn = document.getElementById('decrementBtn');
//
// // get the element to display the count
// const prodCount = document.getElementById('prodCount');
//
// // get the current count
// let currentCount = parseInt(prodCount.textContent);
//
// // max possible order
// const maxOrder = parseInt(document.getElementById('maxOrder').textContent);
//
// // add event listeners to the buttons
// incrementBtn.addEventListener('click', increaseProdCount);
// decrementBtn.addEventListener('click', decreaseProdCount);
//
// // increase product count
// function increaseProdCount(event) {
//     currentCount == maxOrder ? currentCount = currentCount : ++currentCount;
//     prodCount.textContent = currentCount;
//
// }
//
// // decrease product count
// function decreaseProdCount(event) {
//     currentCount == 0 ? currentCount = 0 : --currentCount;
//     prodCount.textContent = currentCount;
// }

$('.btn-plus, .btn-minus').on('click', function (e) {
    const isNegative = $(e.target).closest('.btn-minus').is('.btn-minus');
    const input = $(e.target).closest('.input-group').find('input');

    if (input.is('input')) {
        input[0][isNegative ? 'stepDown' : 'stepUp']()
    }

})