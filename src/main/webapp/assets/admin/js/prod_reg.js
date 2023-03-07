
const mainCategory = document.getElementById('main-category');

function selectMain(event) {
	
    const xhttp = new XMLHttpRequest();

    xhttp.addEventListener('readystatechange', (e) => {
        if (e.target.readyState == 4 && e.target.status == 200) {

			var subCategory = document.getElementById('sub-category');
            var subCategoryOpt = subCategory.getElementsByTagName('option');

            // 서브 카테고리 option 갯수 확인
            if (subCategoryOpt.length > 1) {
                // 서브 카테고리 option 갯수 1개로 초기화
                subCategory.length = 1;
            }

            // 해당 메인 카테고리의 서브 카테고리 가져오기
            var sCtgr = JSON.parse(xhttp.responseText);

            if (sCtgr != null) {
                // 서브 카테고리 option 추가
                for ( i = 0; i < sCtgr.length; i++) {
                    var createOpt = document.createElement('option');
                    createOpt.text = sCtgr[i].s_ctgr_name;
                    createOpt.value = sCtgr[i].s_ctgr_num;
                    subCategory.options.add(createOpt);
                    }
            }

        }
    });

    xhttp.open('POST', '/jhc/restful/admin/prod/reg');

    xhttp.setRequestHeader('Content-type', 'application/json');
    
    
    const obj = {
        m_ctgr_num : event.value
    }
    
    xhttp.send(JSON.stringify(obj));
}

var colorNum = 1;
var sizeNum = 1;

var colorTable = document.getElementById('prod-color-table-body');
var sizeTable = document.getElementById('prod-size-table-body');

function addColor(evt) {

    const newColor = colorTable.insertRow();

    newColor.id = `color${colorNum}`;

    const newColorName = newColor.insertCell(0);
    const newColorCode = newColor.insertCell(1);
    const newColorPath = newColor.insertCell(2);
    const newColorBtn = newColor.insertCell(3);

    newColorName.innerHTML += `<input type="text" class="form-control" id="color-name${colorNum}" name="prodColors[${colorNum}].pc_name"/>`
    newColorCode.innerHTML += `<input type="color" class="form-control" id="color-code${colorNum}" name="prodColors[${colorNum}].pc_code"/>`;
    newColorPath.innerHTML += `<input type="file" class="form-control" id="color-path${colorNum}" name="prodColors[${colorNum}].pc_img_path" onchange="inputColorImg(this)"/>`;
    newColorBtn.innerHTML += `<button type="button" class="btn btn-plus fa-solid fa-circle-plus btn-primary" onclick="addColorBtn(event)"></button>
    <button type="button" class="btn btn-minus fa-solid fa-circle-minus btn-danger" style='display: none;' onclick="removeColorBtn(event)"></button>`;

    colorNum++;
};

function plusToMinus(evt) {
    const evtPe = evt.target.parentElement;

    evt.target.style.display = 'none';

    evtPe.children[1].style.display = 'block';
}

function addColorBtn(evt) {    
    plusToMinus(evt);
    addColor(evt);
}

function removeColorBtn(evt) {

    var removeTarget = evt.target.parentElement.parentElement;
    console.log(removeTarget);
    var row = document.getElementById(removeTarget.id);

    colorTable.deleteRow((row.rowIndex - 1));
}

//사이즈 추가/제거 버튼
function addSize(evt) {
    const newSize = sizeTable.insertRow();

    newSize.id = `size${sizeNum}`;

    const newSizeName = newSize.insertCell(0);
    const newSizeBtn = newSize.insertCell(1);

    newSizeName.innerHTML += `<input type="text" class="form-control" id="size-name${sizeNum}" name="prodSizes[${sizeNum}].ps_name"/>`;
    newSizeBtn.innerHTML += `<button type="button" class="btn btn-plus fa-solid fa-circle-plus btn-primary" onclick="addSizeBtn(event)"></button>
    <button type="button" class="btn btn-minus fa-solid fa-circle-minus btn-danger" style='display: none;' onclick="removeSizeBtn(event)"></button>`;

    sizeNum++;
};


function addSizeBtn(evt) {   
    plusToMinus(evt);
    addSize(evt);
}

function removeSizeBtn(evt) {

    var removeTarget = evt.target.parentElement.parentElement;
    console.log(removeTarget);
    var row = document.getElementById(removeTarget.id);

    sizeTable.deleteRow((row.rowIndex - 1));
}

function openForm(){
    var url = '../prod/admin_prod_reg_view.html';
    var name = '제품 등록 정보';
    var option = 'width = 500, height = 700, top = 300, left = 500, location = no, nofullscreen = no';

    window.open(url, name, option);
}