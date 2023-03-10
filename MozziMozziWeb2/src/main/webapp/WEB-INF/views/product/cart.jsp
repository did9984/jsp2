<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <script src="https://kit.fontawesome.com/79457743d6.js" crossorigin="anonymous"></script>

    <style>
      body {
        margin: 0;
      }

      * {
        box-sizing: border-box;
      }

      p,
      span {
        margin: 0;
      }

      a {
        color: black;
      }

      .img_img {
        display: block;
        width: 100%;
        height: 100%;
        margin: auto;
      }

      .cart {
        width: 80%;
        margin: auto;
        padding: 30px;
      }

      .cart ul {
        background-color: whitesmoke;
        padding: 30px;
        margin-bottom: 50px;
        border: whitesmoke solid 1px;
        border-radius: 5px;
        font-size: 13px;
        font-weight: 300;
      }

      .cart ul :first-child {
        color: orange;
      }

      table {
        border-top: solid 1.5px black;
        border-collapse: collapse;
        width: 100%;
        font-size: 14px;
      }

      thead {
        text-align: center;
        font-weight: bold;
      }

      tbody {
        font-size: 12px;
      }

      td {
        padding: 15px 0px;
        border-bottom: 1px solid lightgrey;
      }


      .cart__list__detail {
        height: 200px;
        text-align: center;
      }


      .cart__list__detail :nth-child(3) {
        vertical-align: middle;
      }

      .cart__list__detail :nth-child(3) a {
        font-size: 12px;
      }

      .cart__list__detail :nth-child(3) p {
        margin-top: 6px;
        font-weight: bold;
      }

      .cart__list__smartstore {
        font-size: 12px;
        color: gray;
      }

      .cart__list__option {
        vertical-align: middle;
      }

      .cart__list__option p {
        margin-bottom: 25px;
        position: relative;
      }

      .cart__list__option p::after {
        content: "";
        width: 90%;
        height: 1px;
        background-color: lightgrey;
        left: 0px;
        top: 25px;
        position: absolute;
      }

      .cart__list__optionbtn {
        background-color: white;
        font-size: 10px;
        border: lightgrey solid 1px;
        padding: 7px;
      }

      .cart__list__detail :nth-child(4),
      .cart__list__detail :nth-child(5),
      .cart__list__detail :nth-child(6) {
        border-left: 2px solid whitesmoke;
      }

      .cart__list__detail :nth-child(5),
      .cart__list__detail :nth-child(6) {
        text-align: center;
      }

      .cart__list__detail :nth-child(5) button {
        background-color: orange;
        color: white;
        border: none;
        border-radius: 5px;
        padding: 4px 8px;
        font-size: 12px;
        margin-top: 5px;
      }

      .price {
        font-weight: bold;
      }

      .cart__mainbtns {
        width: 700px;
        height: 200px;
        padding-top: 20px;
        display: block;
        margin: 0 auto;
        text-align: center;
        float: right;
      }

      .cart__bigorderbtn {
        width: 200px;
        height: 50px;
        font-size: 16px;
        border-radius: 5px;
        position: relative;
        left: 50px;
        margin-left: 10px;
        margin-right: 10px;
      }


      .left {
        background-color: white;
        border: 1px lightgray solid;
      }

      .right_2 {
        background-color: orange;
        color: white;
        border: none;

      }

      .delete {
        background-color: lightgray;
        color: white;
        border: none;
      }

      .align {
        display: flex;
      }

      .alignLeft {
        flex: 1;
      }

      .alignCenter {
        flex: 1;
      }

      .alignRight {
        flex: 1;
      }

      .quty_one {
        line-height: 30px;
      }
    </style>


    <body>
      <section class="cart">
        <div class="cart__information">
          <ul>
            <li>???????????? ????????? ?????? 30?????? ???????????????.</li>
            <li>??????, ?????? ??? ????????? ????????? ?????? ????????? ????????? ??? ????????????.</li>
            <li>???????????? ????????? ????????? ?????? ????????? ?????? ???????????? ????????? ????????? ??? ????????? ?????? ??? ??? ?????? ????????? ????????? ????????????.</li>
          </ul>
        </div>
        <form>
          <table class="cart__list">

            <thead style="border-bottom: 1px solid rgb(136, 135, 135);">
              <tr style="font-size: 25px;">
                <th><input id="allCheck" type="checkbox" onclick="allChk(this)"></th>
                <th colspan="2">????????????</th>
                <th>??????</th>
                <th>????????????</th>
                <th>?????????</th>
              </tr>
            </thead>
            <tbody>
            <c:choose>
				<c:when test="${empty cartList}">
					<tr>
						<td colspan="6" style="text-align : center;"><h5>??????????????? ??????????????????.</h5></td>
					</tr>
				</c:when>
				<c:otherwise>
	              	<c:forEach var="cartItem" items="${cartList}">
	                <tr class="cart__list__detail cart_img" id="cartTr">
	                  <td style="width: 2%;">
	                    <input name="RowCheck" onclick="RowChk(this)" value="${cartItem.cartId}" type="checkbox">
	                  </td>
	                  <td style="width: 13%;">
	                    <a href="productDetail.do?dduck=${cartItem.prodCode}" style="text-decoration-line: none;">
	                      <img class="img_img" src="img/product/${cartItem.mainImage }">
	                    </a>
	                  </td>
	
	                  <td class="cart__list__option" style="width: 27%;">
	                  
	                    <div class="cen">
	                      <a href="productDetail.do?dduck=${cartItem.prodCode}" style="text-decoration-line: none;">
	                        <span style="font: 20px bold;">${cartItem.prodName}</span></a><br><br>
	                      <span id="prodPrice" class="price">${cartItem.prodPrice} ???</span>
	                    </div>
	                  </td>
	
	                  <td class="cart__list__option quty_fafa" style="width: 27%;">
	                    <span class="title quty_one">?????? ?????? ?????? </span>
	                    <!-- <i class="fa-solid fa-minus" onclick="minus()"></i> -->
	                    <input id="quantity" class="quantity" type="number" min="1" max="9" step="1"
	                      onchange="changeQuantity(this)" value="${cartItem.cartQuantity}">
	                    <!-- <i class="fa-solid fa-plus" onclick="plus()"></i> -->
	                    <input id="changeBtn" onclick='changePrice(this)' type="button" data-price="${cartItem.prodPrice}"
	                      data-cartId="${cartItem.cartId}" value="??????">
	                    <input type="hidden" id="prodQuantity">
	                    <input type="hidden" id="prodPrice">
	
	                  </td>
	                  
	                  <td style="width: 15%;">
	                    <span class="price" id="totalPrice">${cartItem.cartPrice}</span><span>???</span><br>
	                    	<button class="cart__list__orderbtn" type="button" onclick = "location.href = 'order.do?selectCartId=${cartItem.cartId}'" >????????????</button>
	                  </td>
	
	                  <td style="width: 15%;">??????</td>
	                </tr>
	              </c:forEach>
            	</c:otherwise>
				</c:choose>
			
            </tbody>
            <tfoot>
              <!-- <tr>
                <td colspan="3">
                  <input type="checkbox"> 
                  <button type="button" id="delBtn" class="cart__list__optionbtn">???????????? ??????</button>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr> -->
            </tfoot>

          </table>
        </form>

        <div class="cart__mainbtns align">

          <div class="alignLeft">
            <button class="cart__bigorderbtn left" onclick = "location.href ='main.do'">?????? ????????????</button>
          </div>

          <div class="alignCenter">
            <form action="order.do" method="post">
              <input type="hidden" name="selectCartId" id="selectCartId">
              <button class="cart__bigorderbtn right_2" id="orderBtn" type="submit">????????????</button>
            </form>
          </div>

          <div class="alignRight">
            <button class="cart__bigorderbtn delete" id="delBtn">???????????? ??????</button>
            <div>

            </div>
      </section>
    </body>

    <script>
      let quantity = document.getElementById('quantity');
      function minus() {
        quantity.value--;
      }
      function plus() {
        quantity.value++;
      }
      // ?????? +- ????????? ?????? ????????????
      function changeQuantity(result) {
        $('#prodQuantity').val($(result).val()); // ??????????????? ?????? ?????????
      }

      // ???????????? ?????? ???????????? ??? ??????*?????? ????????????
      function changePrice(result) {
        let cartId = $(result).attr('data-cartId'); // ??????id
        let quantity = $('#prodQuantity').val(); // ??????
        let prodPrice = $(result).attr('data-price'); // ?????? ????????? ??????
        let totalPrice = parseInt(quantity) * parseInt(prodPrice); // ????????? = ?????? * ??????

        $.ajax({
          url: 'cartUpdate.do',
          method: 'post', // get , put , post ?????????
          data: { cartId: cartId, quantity: quantity, total: totalPrice }, // ???????????????
          success: function (result) {
            if (result.retCode == 'Success') {
              alert("??????????????????!");
              window.location.assign("cart.do?id=${logId}");
            } else {
              alert("?????? ??????!!");
            }
          },
          error: function (reject) {
            console.log(reject);

          }
        })
      }

      // ?????? ????????????
      function allChk(obj) {
        let chkObj = document.getElementsByName("RowCheck"); // name ????????? RowCheck????????? ?????? ?????????
        let rowCnt = chkObj.length - 1; // ????????? ????????? ????????? -1??????
        let check = obj.checked; // ????????????????????? ????????????(true)?????? ????????? ???????????????(false) ??????
        if (check) { // ????????? ????????????
          for (let i = 0; i <= rowCnt; i++) {
            if (chkObj[i].type == "checkbox")
              chkObj[i].checked = true;
          }
        } else { // ????????? ???????????????
          for (let i = 0; i <= rowCnt; i++) {
            if (chkObj[i].type == "checkbox") {
              chkObj[i].checked = false;
            }
          }
        }
      }

      // ???????????? ?????? ????????? => ?????? ???????????? => ???????????? ?????? ?????????
      function RowChk(result) {
        let chkObj = document.getElementsByName("RowCheck"); // name ????????? RowCheck????????? ?????? ?????????
        let rowCnt = chkObj.length;
        let count = 0;
        for (let i = 0; i < rowCnt; i++) {
          if (chkObj[i].checked == true) {
            count = count + 1;
          }
        }
        if (rowCnt == count) {
          allCheck.checked = true;
        } else {
          allCheck.checked = false;
        }
      }

      // ?????? ??????
      $('#delBtn').click(() => {

        let chkObj = document.getElementsByName("RowCheck"); // name ????????? RowCheck????????? ?????? ?????????
        for (let i = 0; i < chkObj.length; i++) {
          if (chkObj[i].checked == true) {
            let cartId = chkObj[i].value;
            $.ajax({
              url: 'cartDelete.do',
              method: 'post', // get , put , post ?????????
              data: { cartId: cartId }, // ???????????????
              success: function (result) {
                if (result.retCode == 'Success') {
                  console.log(cartId);
                  //chkObj[i].parent().parent().remove();
                  $('chkObj[i]').parent().parent().remove('tr');
                  window.location.reload();

                } else {
                  alert("?????? ??????!!");
                }
              },
              error: function (reject) {
                console.log(reject);
              }
            })
          }
        }
      })

      let str = "";
	  let count = 0;
      // ???????????? ????????? ????????? ??????
      $('#orderBtn').click(() => {
        let chkObj = document.getElementsByName("RowCheck"); // name ????????? RowCheck????????? ?????? ?????????
        for (let i = 0; i < chkObj.length; i++) {
          if (chkObj[i].checked == true) {
            let cartId = chkObj[i].value;
            str = str + cartId + ",";
            $('#selectCartId').val(str);
            count = count + 1;
          }
        }
        
        if(count == 0){
        	alert("?????? ????????? ????????? ????????????. \n????????? ????????????????????? ??????????????????!");
        	return false;
        }

        /* $.ajax({
            url: "order.do", // ?????????????????? HTTP ????????? ?????? ????????? URL ??????
            method: "GET",   // HTTP ?????? ?????????(GET, POST ???)
            data: { id : '${logId}', cartId : str },  // HTTP ????????? ?????? ????????? ?????? ?????????
            success: function(result){
            if(result.retCode == 'Success'){
          	
            }else{
              alert("??????!!");
            }
          },
          error: function(reject){
            console.log(reject);
          }
        }) */
      });





    </script>