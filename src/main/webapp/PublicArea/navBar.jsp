<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="utf-8">
   <meta http-equiv="x-ua-compatible" content="ie=edge">
   <title>Mega City Cab</title>
   <meta name="description" content="">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
   <link rel="apple-touch-icon" href="images/favicon.png">
   <link rel="shortcut icon" href="images/favicon.ico">
   <link href="https://fonts.googleapis.com/css2?family=Epilogue:wght@600;700&family=Sora:wght@400;500;700&display=swap" rel="stylesheet">
   <script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/11.0.5/swiper-bundle.min.js" integrity="sha512-Ysw1DcK1P+uYLqprEAzNQJP+J4hTx4t/3X2nbVwszao8wD+9afLjBQYjz7Uk4ADP+Er++mJoScI42ueGtQOzEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
   <link rel="icon" type="image/x-icon" href="images/MegacabLogo.png">
   <!-- Font Awesome CSS -->
   <link rel="stylesheet" href="font-awesome/css/all.min.css">
   <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

   <!-- Bootstrap CSS -->
   <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

   <!-- Style CSS -->
   <link rel="stylesheet" href="css/swiper-bundle.min.css">
   <link rel="stylesheet" href="css/nice-select2.css">
   <link rel="stylesheet" href="css/style.css">

</head>

<body>

   <!-- Header Start -->
   <header class="header header-white">
      <br>
      <jsp:include page="./toastr-config.jsp" />
      <nav class="navbar navbar-expand-lg">
         <div class="container rounded-4 bg-info">
       <a class="navbar-brand" href="#" style="font-weight: bold; font-family: 'Arial', sans-serif; font-size: 26px; color: #000;">
    <img src="" alt=""> Mega City Cab
</a>
       
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="toggle-inner"></span>
            </button>
            <div class="nav-cta d-none d-sm-block order-lg-3">
               <div class="d-flex align-items-center">
                  
                  <a href="./bookRide.jsp" class="btn btn-outline-dark d-none d-md-block me-2">Book Now</a>

                  <c:choose>
                     <c:when test="${not empty sessionScope.customer}">
                        <!-- Display customer's first name as a link to logout -->
                        <a href="#" class="btn btn-outline-dark" onclick="confirmLogout()">
                           <i class="fas fa-user"></i> ${sessionScope.customer.firstName}
                        </a>
                     </c:when>
                     <c:otherwise>
                        <!-- Display "Get Started" button for non-logged-in users -->
                        <a href="./signUp.jsp" class="btn btn-primary ms-2">Get Started</a>
                     </c:otherwise>
                  </c:choose>
               </div>
            </div>
            <!-- Nav CTA End -->

            <div class="collapse navbar-collapse order-lg-2" id="navbarSupportedContent">
               <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                  <li class="nav-item">
                     <a class="nav-link" href="./index.jsp">Home</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="./service.jsp">Services</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="./cab.jsp">Cabs</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="./driver.jsp">Riders</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="./blog.jsp">Blog</a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="./aboutUs.jsp">About </a>
                  </li>
                  <li class="nav-item">
                     <a class="nav-link" href="./contactUs.jsp">Contact</a>
                  </li>
                     <c:if test="${not empty sessionScope.customer}">
                     <li class="nav-item">
                        <a class="nav-link" href="./bookingInfo.jsp">Orders </a>
                     </li>
                  </c:if>
               </ul>
            </div>
         </div>
      </nav>
   </header>
   
   <!-- Logout Confirmation Modal -->
   <script type="text/javascript">
      function confirmLogout() {
         if (confirm("Are you sure you want to log out?")) {
            window.location.href = "${pageContext.request.contextPath}/customerLogout";
         }
      }
   </script>

   <!-- Bootstrap JS (with Popper.js) -->
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
