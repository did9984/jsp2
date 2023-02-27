<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

  <style>
    .fa-search {
      position: relative;
      left: 143px;
    }
  </style>
  
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
    width: 80%;
    height: 80px;
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

  .cart__list__detail :nth-child(3) {
    vertical-align: top;
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
    vertical-align: top;
    padding: 20px;
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
       
          <thead>
            <tr>
              <th><input type="checkbox"></th>
              <th colspan="2">상품정보</th>
              <th>수량</th>
              <th>상품금액</th>
              <th>배송비</th>
            </tr>
          </thead>
          <tbody>
          	<c:forEach var="cartItem" items="${cartList}">
	            <tr class="cart__list__detail cart_img">
	              <td style="width: 2%;"><input type="checkbox"></td>
	              <td style="width: 13%;">
	                <img class="img_img" src="${cartItem.mainImage }">
	              </td>
	              <td style="width: 27%;"><a href="#"></a><span class="cart__list__smartstore"></span>
	                <p>${cartItem.prodName}</p>
	                <span id="prodPrice" class="price">${cartItem.prodPrice}</span><span>원</span>
	              </td>
	              <td class="cart__list__option" style="width: 27%;">
	                <span class="title">상품 주문 수량 </span> 
	                <input id="quantity" class="quantity" type="number" min="1" max="9" step="1" value="${cartItem.cartQuantity}">
				          <input type="button" onclick="changeQuantity()" value="변경">
	              </td>
	              <td style="width: 15%;"><span class="price" id="totalPrice">${cartItem.cartPrice}</span><span>원</span><br>
	                <button class="cart__list__orderbtn">주문하기</button>
	              </td>
	              <td style="width: 15%;">무료</td>
	            </tr>
            </c:forEach>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="3"><input type="checkbox"> <button class="cart__list__optionbtn">선택상품 삭제</button></td>
              <td></td>
              <td></td>
              <td></td>
              <td></td>
            </tr>
          </tfoot>
        
      </table>
      </form>
      <div class="cart__mainbtns">
        <button class="cart__bigorderbtn left">쇼핑 계속하기</button>
        <button class="cart__bigorderbtn right_2">주문하기</button>
        <button class="cart__bigorderbtn delete">장바구니 비우기</button>
      </div>
    </section>
  </body>
  
  <script>
  let quantity = document.querySelector("#quantity");
  let prodPrice = document.querySelector("#prodPrice");
  let totalPrice = document.querySelector("#totalPrice");
  
  function changeQuantity(){
	  
    this.parent().parent().
	  totalPrice.innerText = quantity.value * prodPrice.innerText;
	  
  };
  
  </script>