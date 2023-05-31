function delivery_form(ordNum) {

    let ord_num = ordNum;
    let url = 'order/delivery?ord_num=' + ord_num;
    let option = 'width = 400, height = 500, top = 50, left = 300, nofullscreen = no';

    window.open(url, ord_num, option);
}

const delivery_reg = (ordNum, tekbeCompanyList, invoiceNumberText) => {

	let ord_num = ordNum;
	let tekbeCompany = tekbeCompanyList;
    let invoiceNumber = invoiceNumberText;

    
	
}
