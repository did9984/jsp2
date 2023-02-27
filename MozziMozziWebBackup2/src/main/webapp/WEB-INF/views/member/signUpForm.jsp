<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <link rel="stylesheet" href="bootstrap/css/signin.css">

  <style>
    .fa-search {
      position: relative;
      left: 140px;
    }
  </style>

  <body>
    <div class="member">
      <form action="signUp.do" method="POST" id="signUpForm" onsubmit="return validate()">
        <div class="field"><b style="text-align: center; font-size: 30px; margin-bottom: 30px;">회 원 가 입</b></div>

        <div class="field input_id">
          <b>아이디</b>
          <span class="placehold-text"><input type="text" id="user_id" name="user_id"></span>
          <input type="button" value="중복확인" id="idCheck_btn">
        </div>
        <div class="field">
          <b>비밀번호</b>
          <input class="userpw" id="user_pw" name="user_pw" type="password">
        </div>
        <div class="field">
          <b>비밀번호 재확인</b>
          <input class="userpw-confirm" type="password" id="user_pw_re" name="user_pw_re">
        </div>
        <div class="field">
          <b>이름</b>
          <input type="text" id="user_name" name="user_name">
        </div>

        <div class="field">
          <b>생년월일</b>
          <div>
            <input type="date" id="user_birth" name="user_birth" placeholder="생년월일 앞 8글자">

          </div>
        </div>
        <div class="field">
          <b>휴대전화</b>
          <input type="tel" id="user_phone" name="user_phone" placeholder="전화번호 입력">
        </div>
        <div class="field">
          <b>이메일</b>
          <input type="email" id="user_email" name="user_email" placeholder="mozzi@mozzi.com">
        </div>
        <div class="field f_r" style="width: 150px;">
          <b><input type="button" id="addr_btn" style="color: black;" value="주소찾기"></b>
        </div>
        <div class="field" style="width: 200px;">
          <b>주소</b>
          <input type="text" id="user_addr" name="user_addr" readonly>
        </div>
        <div class="field">
          <b>상세 주소</b>
          <input type="text" id="address_detail" name="address_detail" />
        </div>
        <button id="sign_btn" type="submit">가입하기</button>

        <input id="reset_btn" type="reset" value="취소">

        <div class="member-footer">
          <div>
            <a href="#none">고객센터</a>
          </div>
          <span><a href="main.do">MOZZI Corp.</a></span>
        </div>
    </div>
    </form>
  </body>

  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
    var width = 500; //팝업의 너비
    var height = 500; //팝업의 높이
    window.onload = function () {
      document.getElementById("addr_btn").addEventListener("click", function () { //주소입력칸을 클릭하면
        //카카오 지도 발생
        new daum.Postcode({

          oncomplete: function (data) { //선택시 입력값 세팅
            document.getElementById("user_addr").value = data.address; // 주소 넣기
            document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
          },
          width: width, //생성자에 크기 값을 명시적으로 지정해야 합니다.
          height: height
        }).open({
          // 창이 뜰때의 위치를 중앙으로 맞춘다
          left: (window.screen.width / 2) - (width / 2),
          top: (window.screen.height / 2) - (height / 2)
        });
      });
    }
  </script>
  <script>
    $('#sign_btn').click(function () {
      // 간단한 유효성 검사
      var userPwd = $('input[name=user_pw]').val(); // 위의 pw값과 pw_re값을 변수에 넣는다
      var userPwd_re = $('input[name=user_pw_re]').val();

      if (userPwd != userPwd_re) { // 같지 않다면 실패 창 뜨게
        alert('비밀번호가 서로 다릅니다.');
        return false
      }

      return true;
    });
    var userId = document.getElementById('user_id');
    $('#idCheck_btn').click(() => {
      console.log(userId.value);
      $.ajax({
        url: 'idCheck.do',
        method: 'post',
        data: { userId: userId.value },
        success: function (result) {
          console.log(result);
          if (result.retCode == 'Success') {
            alert("사용하실 수 없는 아이디입니다.")
            userId.value = "";
          } else {
            alert("사용하실 수 있는 아이디입니다.")
          }
        },
        error: function (reject) {
          console.log(reject);
        }
      });

    })
  </script>