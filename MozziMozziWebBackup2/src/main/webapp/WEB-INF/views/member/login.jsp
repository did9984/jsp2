<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">



    <link rel="stylesheet" href="../bootstrap/css/login.css">
    <style>
      @import url("https://fonts.googleapis.com/css2?family=Dongle:wght@700&family=Shadows+Into+Light&display=swap");

      .fa-search {
        position: relative;
        left: 100px;
      }

      #a_tag {
        color: #f58b34;
        text-decoration: none;
      }

      .mar_top {
        padding-top: 30px;
        padding-bottom: 30px;
        margin: 0 auto;
        text-align: center;
      }

      .span_style {
        color: #f58b34;
        font: 60px bold;
        font-family: "Dongle", sans-serif;
      }
    </style>

    <body class="text-center">
      <main class="form-signin w-100 m-auto">
        <form action="login.do" method="post">
          <div class="mar_top">

            <span class="mb-3 fw-normal span_style">로그인</span>
          </div>

          <div class="form-floating">
            <input style="width:300px; margin-bottom:5px" type="text" class="form-control" name="uid"
              id="uid floatingInput">
            <label for="floatingInput">아이디</label>
          </div>
          <div class="form-floating">
            <input type="password" class="form-control" name="upw" id="floatingPassword upw">
            <label for="floatingPassword">비밀번호</label>
          </div>

          <div>
            <button class="w-100 btn btn-lg btn-warning" style="margin-top: 10px;
                    margin-bottom: 20px;
                    color: white;
                    background-color: orange;" type="submit">로그인</button>
          </div>
          <div class="sub_area">
            <div class="look_box">
              <a href="idFind.do" id="a_tag" class="link_look" data-clk="log_off.searchid">아이디찾기</a> |
              <a href="pwFind.do" id="a_tag" class="link_look" data-clk="log_off.searchpass">비밀번호찾기</a> |
              <a href="signUpForm.do" id="a_tag" class="link_look" data-clk="log_off.registration">회원가입</a>

        </form>
      </main>