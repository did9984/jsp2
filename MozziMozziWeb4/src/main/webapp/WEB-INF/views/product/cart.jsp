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
            <li>장바구니 상품은 최대 30일간 저장됩니다.</li>
            <li>가격, 옵션 등 정보가 변경된 경우 주문이 불가할 수 있습니다.</li>
            <li>오늘출발 상품은 판매자 설정 시점에 따라 오늘출발 여부가 변경될 수 있으니 주문 시 꼭 다시 확인해 주시기 바랍니다.</li>
          </ul>
        </div>
        <form>
          <table class="cart__list">

            <thead style="border-bottom: 1px solid rgb(136, 135, 135);">
              <tr style="font-size: 25px;">
                <th><input id="allCheck" type="checkbox" onclick="allChk(this)"></th>
                <th colspan="2">상품정보</th>
                <th>수량</th>
                <th>상품금액</th>
                <th>배송비</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="cartItem" items="${cartList}">

                <tr class="cart__list__detail cart_img">
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
                      <span id="prodPrice" class="price">${cartItem.prodPrice} 원</span>
                    </div>
                  </td>

                  <td class="cart__list__option quty_fafa" style="width: 27%;">
                    <span class="title quty_one">상품 주문 수량 </span>
                    <i class="fa-solid fa-minus" onclick="minus()"></i>
                    <input id="quantity" class="quantity" type="number" min="1" max="9" step="1"
                      onchange="changeQuantity(this)" value="${cartItem.cartQuantity}">
                    <i class="fa-solid fa-plus" onclick="plus()"></i>
                    <input id="changeBtn" onclick='changePrice(this)' type="button" data-price="${cartItem.prodPrice}"
                      data-cartId="${cartItem.cartId}" value="변경">
                    <input type="hidden" id="prodQuantity">
                    <input type="hidden" id="prodPrice">

                  </td>


                  <td style="width: 15%;">
                    <span class="price" id="totalPrice">${cartItem.cartPrice}</span><span>원</span><br>

                    <button class="cart__list__orderbtn">주문하기</button>
                  </td>

                  <td style="width: 15%;">무료</td>
                </tr>
              </c:forEach>
            </tbody>
            <tfoot>
              <tr>
                <td colspan="3">
                  <!-- <input type="checkbox">  -->
                  <button type="button" id="delBtn" class="cart__list__optionbtn">선택상품 삭제</button>
                </td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
              </tr>
            </tfoot>

          </table>
        </form>

        <div class="cart__mainbtns align">

          <div class="alignLeft">
            <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
          </div>

          <div class="alignCenter">
            <form action="order.do" method="post">
              <input type="hidden" name="selectCartId" id="selectCartId">
              <button class="cart__bigorderbtn right_2" id="orderBtn" type="submit">주문하기</button>
            </form>
          </div>

          <div class="alignRight">
            <button class="cart__bigorderbtn delete">장바구니 비우기</button>
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
      // 수량 +- 버튼을 통해 수량변경
      function changeQuantity(result) {
        $('#prodQuantity').val($(result).val()); // 수량변경시 값을 넣어줌
      }

      // 장바구니 수량 업데이트 및 상품*가격 업데이트
      function changePrice(result) {
        let cartId = $(result).attr('data-cartId'); // 카트id
        let quantity = $('#prodQuantity').val(); // 수량
        let prodPrice = $(result).attr('data-price'); // 상품 하나의 가격
        let totalPrice = parseInt(quantity) * parseInt(prodPrice); // 총가격 = 수량 * 가격

        $.ajax({
          url: 'cartUpdate.do',
          method: 'post', // get , put , post 가능함
          data: { cartId: cartId, quantity: quantity, total: totalPrice }, // 쿼리스트링
          success: function (result) {
            if (result.retCode == 'Success') {
              alert("수량변경완료!");
              window.location.assign("cart.do?id=${logId}");
            } else {
              alert("수정 오류!!");
            }
          },
          error: function (reject) {
            console.log(reject);

          }
        })
      }

      // 전체 선택박스
      function allChk(obj) {
        let chkObj = document.getElementsByName("RowCheck"); // name 속성이 RowCheck인것을 모두 가져옴
        let rowCnt = chkObj.length - 1; // 가져온 노드의 갯수를 -1해줌
        let check = obj.checked; // 전체선택박스가 체크상태(true)인지 체크가 안되었는지(false) 반환
        if (check) { // 체크가 되었다면
          for (let i = 0; i <= rowCnt; i++) {
            if (chkObj[i].type == "checkbox")
              chkObj[i].checked = true;
          }
        } else { // 체크가 안되었다면
          for (let i = 0; i <= rowCnt; i++) {
            if (chkObj[i].type == "checkbox") {
              chkObj[i].checked = false;
            }
          }
        }
      }

      // 체크박스 개별 선택후 => 모두 선택되면 => 전체선택 버튼 활성화
      function RowChk(result) {
        let chkObj = document.getElementsByName("RowCheck"); // name 속성이 RowCheck인것을 모두 가져옴
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

      // 선택 삭제
      $('#delBtn').click(() => {

        let chkObj = document.getElementsByName("RowCheck"); // name 속성이 RowCheck인것을 모두 가져옴
        for (let i = 0; i < chkObj.length; i++) {
          if (chkObj[i].checked == true) {
            let cartId = chkObj[i].value;
            $.ajax({
              url: 'cartDelete.do',
              method: 'post', // get , put , post 가능함
              data: { cartId: cartId }, // 쿼리스트링
              success: function (result) {
                if (result.retCode == 'Success') {
                  console.log(cartId);
                  //chkObj[i].parent().parent().remove();
                  $('chkObj[i]').parent().parent().remove('tr');
                  window.location.reload();

                } else {
                  alert("삭제 오류!!");
                }
              },
              error: function (reject) {
                console.log(reject);
              }
            })
          }
        }
      })

      let str = "${logId},";

      // 주문하기 버튼을 누를때 실행
      $('#orderBtn').click(() => {
        let chkObj = document.getElementsByName("RowCheck"); // name 속성이 RowCheck인것을 모두 가져옴
        for (let i = 0; i < chkObj.length; i++) {
          if (chkObj[i].checked == true) {
            let cartId = chkObj[i].value;
            str = str + cartId + ",";
            $('#selectCartId').val(str);
          }
        }

        /* $.ajax({
            url: "order.do", // 클라이언트가 HTTP 요청을 보낼 서버의 URL 주소
            method: "GET",   // HTTP 요청 메소드(GET, POST 등)
            data: { id : '${logId}', cartId : str },  // HTTP 요청과 함께 서버로 보낼 데이터
            success: function(result){
            if(result.retCode == 'Success'){
          	
            }else{
              alert("오류!!");
            }
          },
          error: function(reject){
            console.log(reject);
          }
        }) */
      });





    </script>