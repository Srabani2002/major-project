<%@ page language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta http-equiv="X-UA-Compatible" content="ie=edge" />
  <title>Admin - Add Blogs</title>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700" />
  <!-- https://fonts.google.com/specimen/Roboto -->
  <link rel="stylesheet" href="ad-css/fontawesome.min.css" />
  <!-- https://fontawesome.com/ -->
  <link rel="stylesheet" href="ad-jquery-ui-datepicker/jquery-ui.min.css" type="text/css" />
  <!-- http://api.jqueryui.com/datepicker/ -->
  <link rel="stylesheet" href="ad-css/bootstrap.min.css" />
  <!-- https://getbootstrap.com/ -->
  <link rel="stylesheet" href="ad-css/templatemo-style.css">
  <link rel="shortcut icon" href="ad-img/favicon.ico" />
  <!--
	Product Admin CSS Template
	https://templatemo.com/tm-524-product-admin
	-->
</head>

<body>
  <nav class="navbar navbar-expand-xl">
    <div class="container h-100">
      <a class="navbar-brand" href="#">
        <img src="ad-img/logo.png" alt="LOGO" width="230vw">
      </a>
      <button class="navbar-toggler ml-auto mr-0" type="button" data-toggle="collapse"
        data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
        aria-label="Toggle navigation">
        <i class="fas fa-bars tm-nav-icon"></i>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mx-auto h-100">
          <li class="nav-item">
            <a class="nav-link" href="dashboard.html">
               Dashboard
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="/add-product">
              Products
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="/admin-products">
              Refurbs
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link" href="/admin-products">
              Services
            </a>
          </li>
  
          <li class="nav-item">
            <a class="nav-link" href="/orders">
                Orders
            </a>
        </li>
  
        <li class="nav-item">
            <a class="nav-link" href="/add-blogs">
              
              Blogs
            </a>
        </li>
  
          <li class="nav-item">
            <a class="nav-link" href="/admin">
              Accounts
            </a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>
  <div class="container tm-mt-big tm-mb-big">
    <div class="row">
      <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
        <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
          <div class="row">
            <div class="col-12">
              <h2 class="tm-block-title d-inline-block">Add Blog</h2>
            </div>
          </div>
          <div class="row tm-edit-product-row">
            <div class="col-xl-6 col-lg-6 col-md-12">
              <form action="#" action="@{/admin-add-blogs}" method="post" class="tm-edit-product-form" object="${blogs}">
                <div class="form-group mb-3">
                    <label for="name">Blog Name</label>
                    <input id="name" name="name" type="text" class="form-control validate" field="*{name}" required />
                </div>
                <div class="form-group mb-3">
                    <label for="desc">Blog Description</label>
                    <input id="desc" name="description" type="text" class="form-control validate" field="*{description}" required />
                </div>
                <div class="form-group mb-3">
                    <label for="content">Content</label>
                    <textarea id="content" name="content" class="form-control validate" rows="5" field="*{content}" required></textarea>
                </div>
                <div class="form-group mb-3">
                    <label for="category">Category</label>
                    <select id="category" name="category" class="custom-select tm-select-accounts" field="*{category}">
                        <!-- <option selected>Select category</option> -->
                        <option value="New Arrival">New Arrival</option>
                        <option value="Most Popular">Most Popular</option>
                        <option value="Trending">Trending</option>
                    </select>
                </div>
                <div class="row">
                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                        <label for="post_date">Post Date</label>
                        <input id="post_date" name="postDate" type="text" class="form-control validate" data-large-mode="true" field="*{postDate}" />
                    </div>
                    <div class="form-group mb-3 col-xs-12 col-sm-6">
                        <label for="author">Author</label>
                        <input id="author" name="author" type="text" class="form-control validate" data-large-mode="true" field="*{author}" />
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-12 mx-auto mb-4">
                    <div class="tm-product-img-dummy mx-auto">
                        <i class="fas fa-cloud-upload-alt tm-upload-icon" onclick="document.getElementById('fileInput').click();"></i>
                    </div>
                    <div class="custom-file mt-3 mb-3">
                        <input id="fileInput" type="file" style="display:none;" />
                        <input type="button" class="btn btn-primary btn-block mx-auto" value="UPLOAD CONTENT IMAGE" onclick="document.getElementById('fileInput').click();" />
                    </div>
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary btn-block text-uppercase">Add Blog Now</button>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>

  <script src="ad-js/jquery-3.3.1.min.js"></script>
  <!-- https://jquery.com/download/ -->
  <script src="ad-jquery-ui-datepicker/jquery-ui.min.js"></script>
  <!-- https://jqueryui.com/download/ -->
  <script src="ad-js/bootstrap.min.js"></script>
  <!-- https://getbootstrap.com/ -->
  <script>
    $(function () {
      $("#expire_date").datepicker();
    });
  </script>
</body>

</html>