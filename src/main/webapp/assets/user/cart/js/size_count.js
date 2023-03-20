const minusBtns = document.getElementsByClassName('minus');
const plusBtns = document.getElementsByClassName('plus');
const total_amts = document.getElementsByClassName('total_amt');
const prices = document.getElementsByClassName('price');
const totalPrices = document.getElementsByClassName('sb_tt_price');
const val = document.getElementsByClassName('val');

const deleteBtns = document.getElementsByClassName('delete');
const prodDetails = document.getElementsByClassName('prodDetail');
const basket_bottoms = document.getElementsByClassName('basket_bottom');

const submits = document.getElementsByClassName('submit');
const initQuantities = document.getElementsByClassName('initQuantity');

// for (i = 0; i < submits.length; ++i) {
//     let total_amt = total_amts[i];
//     let price = prices[i];
//     let totalPrice = totalPrices[i];
//     let submit = submits[i];
//     let initQuantity = initQuantities[i];
//     let closeButton = closeButtons[i];

//     submit.addEventListener('click', (e) => {
//         initQuantity.lastElementChild.innerText = totalQuantity;
//         price.innerText = totalPrice.innerText;

//         closeButton.click();
//     });
// }

const imgs = document.getElementsByClassName('img');
for (i = 0; i < minusBtns.length; ++i) {
    let totalQty = parseInt(prices[i].innerText.substring(0, prices[i].innerText.length - 1));
    let qtyVal = val[i];
    let price = prices[i];
    let prodDetail = prodDetails[i];
    let cartNum = prodDetail.dataset.cart_num;
    let img = imgs[i].src;

    minusBtns[i].addEventListener('click', (e) => {
        let quantity = parseInt(e.target.nextElementSibling.innerText);
        const xhttp = new XMLHttpRequest();
        if (quantity > 0) {
            qtyVal.innerText = quantity - 1;
            price.innerText = (parseInt(qtyVal.innerText) * parseInt(price.dataset.p_price)).toLocaleString('ko-KR') + '원';

            if (qtyVal.innerText == 0) {
                xhttp.open('POST', '/jhc/deleteCart');
                xhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhttp.send(`cart_num=${cartNum}`);
            }

            xhttp.open('POST', 'update/decreaseQty');
            xhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhttp.send(`cart_num=${cartNum}&p_price=${price.dataset.p_price}`);
        }
        updateSummary();
    });
    
    plusBtns[i].addEventListener('click', (e) => {
        let quantity = parseInt(e.target.previousElementSibling.innerText);
        const xhttp = new XMLHttpRequest();
        if (quantity < 100) {
            qtyVal.innerText = quantity + 1;
            price.innerText = (parseInt(qtyVal.innerText) * parseInt(price.dataset.p_price)).toLocaleString('ko-KR') + '원';

            if (qtyVal.innerText == 1) {
                const jsonObj = {
                    'mem_num' : mem_num,
                    'pd_num' : prodDetail.dataset.pd_num,
                    'mem_cstm_path' : img,
                    'cart_quantity' : 1,
                    'cart_amount' : price.dataset.p_price
                };
                xhttp.open('POST', '/jhc/createCart');
                xhttp.setRequestHeader('Content-Type', 'application/json');
                xhttp.send(JSON.stringify(jsonObj));
            } else {
                xhttp.open('POST', 'update/increaseQty');
                xhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
                xhttp.send(`cart_num=${cartNum}&p_price=${price.dataset.p_price}`);
            }
        }
        updateSummary();
    });

    let basket_bottom = basket_bottoms[i];
    deleteBtns[i].addEventListener('click', (e) => {
        if (confirm('정말로 삭제하시겠습니까?')) {
            const xhttp = new XMLHttpRequest();

            xhttp.open('POST', '/jhc/deleteCart');
            xhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
            xhttp.send(`cart_num=${cartNum}`);

            basket_bottom.remove();
        }
    });
}
