<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>
      
        活動管理 &middot; 
      
    </title>

    <link href="http://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic" rel="stylesheet">
    
      <link href="../admin/assets/css/toolkit-light.css" rel="stylesheet">
    
    
    <link href="../admin/assets/css/application.css" rel="stylesheet">

    <style>
      /* note: this is a hack for ios iframe for bootstrap themes shopify page */
      /* this chunk of css is not part of the toolkit :) */
      body {
        width: 1px;
        min-width: 100%;
        *width: 100%;
      }
    </style>
  </head>


<body>
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar">
        <nav class="sidebar-nav">
          <div class="sidebar-header">
            <button class="nav-toggler nav-toggler-md sidebar-toggler" type="button" data-toggle="collapse" data-target="#nav-toggleable-md">
              <span class="sr-only">Toggle nav</span>
            </button>
             <a class="navbar-brand" href="/">
                                <img style="position: left" src="/images/logo.png" alt="">
                            </a>
          </div>

          <div class="collapse nav-toggleable-md" id="nav-toggleable-md">
            <form class="sidebar-form">
              <input class="form-control" type="text" placeholder="站內搜尋...">
              <button type="submit" class="btn-link">
                <span class="icon icon-magnifying-glass"></span>
              </button>
            </form>
            <ul class="nav nav-pills nav-stacked flex-column">
              <li class="nav-header">活動管理</li>
              <li class="nav-item">
                <a class="nav-link " href="#">活動總覽</a>
              </li>
              <li class="nav-item">
                <a class="nav-link active" href="#">活動紀錄</a>
              </li>
              <li class="nav-item">
                <a class="nav-link "href="#">活動統計</a>
              </li>
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link " href="#">Icon圖示</a> -->
<!--               <li class="nav-item"> -->
<!--                 <a class="nav-link" href="#docsModal" data-toggle="modal"> -->
<!--                   	樣板示意 -->
<!--                 </a> -->
              </li>
            </ul>
            <hr class="visible-xs mt-3">
          </div>
        </nav>
      </div>
      <div class="col-md-9 content">
        <div class="dashhead">
  <div class="dashhead-titles">
    <h2 class="dashhead-title">活動紀錄</h2>
  </div>

  <div class="btn-toolbar dashhead-toolbar">
    <div class="btn-toolbar-item input-with-icon">
      <input type="text" value="01/01/15 - 01/08/15" class="form-control" data-provide="datepicker">
      <span class="icon icon-calendar"></span>
    </div>
  </div>
</div>

<div class="flextable table-actions">
  <div class="flextable-item flextable-primary">
    <div class="btn-toolbar-item input-with-icon">
      <input type="text" class="form-control input-block" placeholder="搜尋活動">
      <span class="icon icon-magnifying-glass"></span>
    </div>
  </div>
  <div class="flextable-item">
    <div class="btn-group">
      <button type="button" class="btn btn-outline-primary">
        <span class="icon icon-pencil"></span>
      </button>
      <button type="button" class="btn btn-outline-primary">
        <span class="icon icon-erase"></span>
      </button>
    </div>
  </div>
</div>

<div class="table-responsive">
  <table class="table" data-sort="table">
    <thead>
      <tr>
        <th><input type="checkbox" class="select-all" id="selectAll"></th>
        <th>活動編號</th>
        <th>活動名稱</th>
        <th>活動介紹</th>
        <th>活動日期</th>
        <th>報名費用</th>
        <th>報名人數</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10001</a></td>
        <td>First Last</td>
        <td>Admin theme, marketing theme</td>
        <td>01/01/2015</td>
        <td>$200.00</td>
        <td>70</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10002</a></td>
        <td>Firstname Last</td>
        <td>Admin theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>20</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10003</a></td>
        <td>Name Another</td>
        <td>Personal blog theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>55</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10004</a></td>
        <td>One More</td>
        <td>Marketing theme, personal blog theme, admin theme</td>
        <td>01/01/2015</td>
        <td>$300.00</td>
        <td>30</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10005</a></td>
        <td>Name Right Here</td>
        <td>Personal blog theme, admin theme</td>
        <td>01/02/2015</td>
        <td>$200.00</td>
        <td>30</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10006</a></td>
        <td>First Last</td>
        <td>Admin theme, marketing theme</td>
        <td>01/01/2015</td>
        <td>$200.00</td>
        <td>25</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10007</a></td>
        <td>Firstname Last</td>
        <td>Admin theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>200</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10008</a></td>
        <td>Name Another</td>
        <td>Personal blog theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>250</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10009</a></td>
        <td>One More</td>
        <td>Marketing theme, personal blog theme, admin theme</td>
        <td>01/01/2015</td>
        <td>$300.00</td>
        <td>300</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10010</a></td>
        <td>Name Right Here</td>
        <td>Personal blog theme, admin theme</td>
        <td>01/02/2015</td>
        <td>$200.00</td>
        <td>90</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10011</a></td>
        <td>First Last</td>
        <td>Admin theme, marketing theme</td>
        <td>01/01/2015</td>
        <td>$200.00</td>
        <td>60</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10012</a></td>
        <td>Firstname Last</td>
        <td>Admin theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>80</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10013</a></td>
        <td>Name Another</td>
        <td>Personal blog theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>120</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10014</a></td>
        <td>One More</td>
        <td>Marketing theme, personal blog theme, admin theme</td>
        <td>01/01/2015</td>
        <td>$300.00</td>
        <td>60</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10015</a></td>
        <td>Name Right Here</td>
        <td>Personal blog theme, admin theme</td>
        <td>01/02/2015</td>
        <td>$200.00</td>
        <td>45</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10016</a></td>
        <td>First Last</td>
        <td>Admin theme, marketing theme</td>
        <td>01/01/2015</td>
        <td>$200.00</td>
        <td>60</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10017</a></td>
        <td>Firstname Last</td>
        <td>Admin theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>20</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10018</a></td>
        <td>Name Another</td>
        <td>Personal blog theme</td>
        <td>01/01/2015</td>
        <td>$100.00</td>
        <td>35</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10019</a></td>
        <td>One More</td>
        <td>Marketing theme, personal blog theme, admin theme</td>
        <td>01/01/2015</td>
        <td>$300.00</td>
        <td>60</td>
      </tr>
      <tr>
        <td><input type="checkbox" class="select-row"></td>
        <td><a href="#">#10020</a></td>
        <td>Name Right Here</td>
        <td>Personal blog theme, admin theme</td>
        <td>01/02/2015</td>
        <td>$200.00</td>
        <td>40</td>
    </tbody>
  </table>
</div>

<div class="text-center">
  <nav>
    <ul class="pagination">
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Previous">
          <span aria-hidden="true">&laquo;</span>
          <span class="sr-only">上一頁</span>
        </a>
      </li>
      <li class="page-item active"><a class="page-link" href="#">1</a></li>
      <li class="page-item"><a class="page-link" href="#">2</a></li>
      <li class="page-item"><a class="page-link" href="#">3</a></li>
      <li class="page-item"><a class="page-link" href="#">4</a></li>
      <li class="page-item"><a class="page-link" href="#">5</a></li>
      <li class="page-item">
        <a class="page-link" href="#" aria-label="Next">
          <span aria-hidden="true">&raquo;</span>
          <span class="sr-only">下一頁</span>
        </a>
      </li>
    </ul>
  </nav>
</div>

      </div>
    </div>
  </div>

  <div id="docsModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog">
    <div class="modal-content">

      <div class="modal-header">
        <h4 class="modal-title" id="myModalLabel">樣板示意</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
      </div>
      <div class="modal-body">
        <p>您已經位於樣板頁面</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">好的，了解</button>
      </div>
    </div>
  </div>
</div>


    <script src="../admin/assets/js/jquery.min.js"></script>
    <script src="../admin/assets/js/tether.min.js"></script>
    <script src="../admin/assets/js/chart.js"></script>
    <script src="../admin/assets/js/tablesorter.min.js"></script>
    <script src="../admin/assets/js/toolkit.js"></script>
    <script src="../admin/assets/js/application.js"></script>
    <script>
      // execute/clear BS loaders for docs
      $(function(){while(window.BS&&window.BS.loader&&window.BS.loader.length){(window.BS.loader.pop())()}})
    </script>
  </body>
</html>