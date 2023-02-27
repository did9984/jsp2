<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <!-- tiles를 사용하고 싶다면 taglib선언해야함  -->
  <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
      <meta charset="utf-8" />
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
      <meta name="description" content="" />
      <meta name="author" content="" />
      <title>
        <tiles:getAsString name="title" />
      </title>
      <!-- Favicon-->
      <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
      <!-- Bootstrap icons-->
      <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
      <!-- Core theme CSS (includes Bootstrap)-->
      <link href="bootstrap/css/styles.css" rel="stylesheet" />
      <link rel="stylesheet" type="text/css" href="css/reset.css" />
      <link rel="stylesheet" href="bootstrap/css/bottom.css" />
      <link rel="stylesheet" href="bootstrap/css/top.css">
      <!-- 복붙 필요-->
      <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
      <script type="text/javascript" src="bootstrap/js/top.js"></script>
      <link rel="stylesheet" type="text/css" href="bootstrap/css/goodsList.css" />
      <script src="https://kit.fontawesome.com/115bcf1f34.js" crossorigin="anonymous"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
      <link rel="stylesheet"
        href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css" />
      <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
      <script src="bootstrap/js/jquery.sticky.js"></script>
      <script src="bootstrap/js/pin.js"></script>
      <script src="bootstrap/js/gulpfile.js"></script>

      <link rel="stylesheet" href="bootstrap/css/bottom.css" />
      <link rel="stylesheet" href="bootstrap/css/top.css">
      <link rel="icon" href="img/index/logo/favicon2.png">
    </head>

    <body>
      <tiles:insertAttribute name="header"></tiles:insertAttribute>
      <tiles:insertAttribute name="menu"></tiles:insertAttribute>
      <tiles:insertAttribute name="body"></tiles:insertAttribute>
      <tiles:insertAttribute name="footer"></tiles:insertAttribute>

      <!-- Bootstrap core JS-->
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
      <!-- Core theme JS-->
      <script src="bootstrap/js/scripts.js"></script>
    </body>

    </html>