<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <link rel="stylesheet" href="bootstrap/css/signin.css">

  <style>
    @import url("http://fonts.googleapis.com/earlyaccess/nanumgothic.css");
    @import url("https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Shadows+Into+Light&display=swap");


    .hangle {
      padding-top: 30px;
      margin: 0 auto;
      color: #f58b34;
      margin-bottom: 30px;
      text-align: center;
      font: 50px bold;
      font-family: "Dongle", sans-serif;
    }
  </style>

  <body>
    <div class="member">
      <form action="signUp.do" method="POST" id="signUpForm" name="signUpForm" onsubmit="return check()">
        <div class="hangle">회원가입</div>
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
          <div style="float: right;">
            <b>생년월일</b>
            <input type="date" id="user_birth" name="user_birth" style="width: 175px;">
          </div>
          <b>이름</b>
          <input type="text" id="user_name" name="user_name" style="width: 180px;">

        </div>
        <div class="field">
          <b>휴대전화</b>
          <input type="text" id="user_phone" name="user_phone" style="width: 100px; text-align: center;"
            placeholder="010"> -
          <input type="text" id="user_phone_mid" name="user_phone_mid" style="width: 112px; text-align: center;"
            placeholder="1234"> -
          <input type="text" id="user_phone_end" name="user_phone_end" style="width: 112px; text-align: center;"
            placeholder="5678">
        </div>
        <div class="field">
          <b>이메일</b>
          <input type="text" id="user_email" name="user_email" style="width: 182px;" placeholder="mozzi">
          <select name="user_email_end" id="user_email_end" style="width: 172px;">
            <option value="@chol.com">@천리안</option>
            <option value="@hanmail.net">@다음</option>
            <option value="@gmail.com">@구글</option>
            <option value="@nate.com">@네이트</option>
            <option value="@naver.com">@네이버</option>
            <option value="@tistory.com">@티스토리</option>
            <option value="@yahoo.com">@야후</option>
          </select>
        </div>
        <div class="field f_r" style="width: 140px;">
          <b><input type="button" id="addr_btn" style="color: black;" value="주소찾기"></b>
        </div>
        <div class="field" style="width: 215px;">
          <b>주소</b>
          <input type="text" id="user_addr" name="user_addr" readonly>
        </div>
        <div class="field">
          <b>상세 주소</b>
          <input type="text" id="address_detail" name="address_detail" />
        </div>
        <button id="sign_btn" type="submit">가입하기</button>

        <input id="reset_btn" type="button" value="취소" onclick="loginGo()">

        <div class="member-footer">
          <div>
            <a href="customerNotice.do">고객센터</a>
          </div>
          <span><a href="main.do">MOZZI Corp.</a></span>
        </div>
    </div>
    </form>
  </body>

  <script>

    function check() {

      var f = document.signUpForm;

      if (f.user_id.value == "") {
        alert("아이디를 입력해주십시오");
        f.user_id.focus();
        return false;
      }

      if (f.user_pw.value == "") {
        alert("비밀번호를 입력해주십시오");
        f.user_pw.focus();

        return false;
      }
      if (f.user_name.value == "") {
        alert("이름을 입력해주십시오");
        f.user_name.focus();
        return false;
      }

      if (f.user_birth.value == "") {
        alert("생년월일을 입력해주십시오");
        f.user_birth.focus();
        return false;
      }

      if ((f.user_phone.value == "") || (f.user_phone_mid.value == "") || (f.user_phone_end.value == "")) {
        alert("전화번호를 입력해주십시오");
        f.user_phone.focus();
        return false;
      }

      if (f.user_addr.value == "") {
        alert("기본주소를 입력해주십시오");
        f.user_addr.focus();
        return false;
      }

      if (f.address_detail.value == "") {
        alert("상세주소를 입력해주십시오");
        f.address_detail.focus();
        return false;
      }


      if ((f.user_email.value == "") || (f.user_email_end.value == "")) {
        alert("이메일을 입력해주십시오");
        f.user_email.focus();
        return false;
      }


    }
    function loginGo() {
      location.href = 'login.do';
    }
  </script>
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