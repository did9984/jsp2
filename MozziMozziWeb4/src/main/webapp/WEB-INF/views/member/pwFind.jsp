<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/sign-in/">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
      integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./bootstrap/css/log_find.css">


    <body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%" align="center">
      <div class="card align-middle" style="width:25rem;">

        <div class="card-title" style="margin-top:30px;">
          <span class="card-title"
            style="color:#f58b34; font:50px bold; font-family: 'Shadows Into Light', cursive;">MozziMozzi</span>
          <br>
          <span class="hangle" style="color:#f58b34; font:50px bold; font-family: 'Dongle', sans-serif;">비밀번호 찾기</span>
        </div>

        <div class="card-body form-floating">
          <form action="pwFind.do" class="form-signin" method="POST">
            <div class="form-floating">
              <input type="text" name="user_id" id="user_id floatingId" class="form-control" required autofocus><br>
              <label for="floatingId">아이디</label>
            </div>
            <div class="form-floating">
              <input type="text" name="user_name" id="user_name floatingName" class="form-control" required><BR>
              <label for="floatingName">이름</label>
            </div>
            <div class="form-floating">
              <input type="email" name="user_email" id="user_email floatingEmail" class="form-control" required><br>
              <label for="floatingEmail">이메일</label>
            </div>
            <button id="btn_yes" class="btn btn-lg btn-warning btn-block" type="submit">비밀번호 찾기</button>
          </form>

        </div>
        <div class="links">
          <a id="a_tag" href="idFind.do">아이디 찾기</a> |
          <a id="a_tag" href="login.do">로그인</a> |
          <a id="a_tag" href="signUpForm.do">회원가입</a>

        </div>
      </div>