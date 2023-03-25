<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>제재 관리</title>

    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
      integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
      crossorigin="anonymous"></script>
    <link href="../assets/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- 추가한 스크립트 -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      .container {
        max-width: 100%;
      }

      .search-wrap {
        text-align: right;
      }

      .pageNo {
        justify-content: center;
        padding-left: 310px;
        padding-top: 50px;
      }

      .btn {
        background-color: #0081f3;
        border: none;
      }

      .btn:hover {
        background-color: #FCE593;
      }
    </style>
    <style>
      .osSwitch {
        position: relative;
        display: inline-block;
        width: 34px;
        height: 15.3px
      }

      .osSwitch input {
        opacity: 0;
        width: 0;
        height: 0
      }

      .osSlider {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        border-radius: 34px;
        background-color: #93a0b5;
        transition: 0.4s
      }

      .osSlider:before {
        position: absolute;
        content: '';
        height: 13px;
        width: 13px;
        left: 2px;
        bottom: 1px;
        border-radius: 50%;
        background-color: white;
        transition: 0.4s
      }

      input:checked+.sliderGreen {
        background-color: #04d289
      }

      input:checked+.sliderRed {
        background-color: #ff3b30
      }

      input:not(:checked)+.defaultGreen {
        background-color: #04d289
      }

      input:checked+.osSlider:before {
        transform: translateX(17px)
      }
    </style>
    <style>
      @font-face {
        font-family: 'SegoeUI_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui.woff);
      }

      @font-face {
        font-family: 'SegoeUI_bold_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui-bold.woff);
      }
    </style>
    <style>
      .osSwitch {
        position: relative;
        display: inline-block;
        width: 34px;
        height: 15.3px
      }

      .osSwitch input {
        opacity: 0;
        width: 0;
        height: 0
      }

      .osSlider {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        border-radius: 34px;
        background-color: #93a0b5;
        transition: 0.4s
      }

      .osSlider:before {
        position: absolute;
        content: '';
        height: 13px;
        width: 13px;
        left: 2px;
        bottom: 1px;
        border-radius: 50%;
        background-color: white;
        transition: 0.4s
      }

      input:checked+.sliderGreen {
        background-color: #04d289
      }

      input:checked+.sliderRed {
        background-color: #ff3b30
      }

      input:not(:checked)+.defaultGreen {
        background-color: #04d289
      }

      input:checked+.osSlider:before {
        transform: translateX(17px)
      }
    </style>
    <style>
      @font-face {
        font-family: 'SegoeUI_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui.woff);
      }

      @font-face {
        font-family: 'SegoeUI_bold_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui-bold.woff);
      }
    </style>
    <style>
      .osSwitch {
        position: relative;
        display: inline-block;
        width: 34px;
        height: 15.3px
      }

      .osSwitch input {
        opacity: 0;
        width: 0;
        height: 0
      }

      .osSlider {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        border-radius: 34px;
        background-color: #93a0b5;
        transition: 0.4s
      }

      .osSlider:before {
        position: absolute;
        content: '';
        height: 13px;
        width: 13px;
        left: 2px;
        bottom: 1px;
        border-radius: 50%;
        background-color: white;
        transition: 0.4s
      }

      input:checked+.sliderGreen {
        background-color: #04d289
      }

      input:checked+.sliderRed {
        background-color: #ff3b30
      }

      input:not(:checked)+.defaultGreen {
        background-color: #04d289
      }

      input:checked+.osSlider:before {
        transform: translateX(17px)
      }
    </style>
    <style>
      @font-face {
        font-family: 'SegoeUI_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui.woff);
      }

      @font-face {
        font-family: 'SegoeUI_bold_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui-bold.woff);
      }
    </style>
    <style>
      /* css 아래 추가 */
      #paging {
        display: flex;
        justify-content: center;
      }

      /* css 위에 추가 */
    </style>
    <style>
      .osSwitch {
        position: relative;
        display: inline-block;
        width: 34px;
        height: 15.3px
      }

      .osSwitch input {
        opacity: 0;
        width: 0;
        height: 0
      }

      .osSlider {
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        border-radius: 34px;
        background-color: #93a0b5;
        transition: 0.4s
      }

      .osSlider:before {
        position: absolute;
        content: '';
        height: 13px;
        width: 13px;
        left: 2px;
        bottom: 1px;
        border-radius: 50%;
        background-color: white;
        transition: 0.4s
      }

      input:checked+.sliderGreen {
        background-color: #04d289
      }

      input:checked+.sliderRed {
        background-color: #ff3b30
      }

      input:not(:checked)+.defaultGreen {
        background-color: #04d289
      }

      input:checked+.osSlider:before {
        transform: translateX(17px)
      }
    </style>
    <style>
      @font-face {
        font-family: 'SegoeUI_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui.woff);
      }

      @font-face {
        font-family: 'SegoeUI_bold_online_security';
        src: url(chrome-extension://llbcnfanfmjhpedaedhbcnpgeepdnnok/segoe-ui-bold.woff);
      }
    </style>
  </head>

  <body>
    <form>
      <div class="container mt-5">
        <h3 class="text-center">제재 관리</h3>
        <hr><br>
        <br>
        <div id="board-list">
          <div class="container">

            <c:foreach var="vo" items="">
            </c:foreach>
            <t dclass="text-center"></t>
            <table class="table" id="user-table">
              <thead>
                <tr>
                  <th width="13%" class="text-center">이력관리번호</th>
                  <th width="12%" class="text-center">관리자번호</th>
                  <th width="12%" class="text-center">회원번호</th>
                  <th width="25%" class="text-center">제재사유</th>
                  <th width="19%" class="text-center">제재일시</th>
                  <th width="19%" class="text-center">제재기간</th>
                </tr>
              </thead>

              <tbody>
                <tr class="board_info">

                  <td class="text-center"> 7 </td>
                  <td class="text-center"> 10 </td>
                  <td class="text-center"> 비속어 사용 </td>
                  <td class="text-center"> 2023년 3월 24일 </td>
                  <td class="text-center"> 100일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 2 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 동물을 상품화하는 발언 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 동물을 상품화하는 발언 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 4 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 동물학대글 게시 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 5 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 동물학대글 게시 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 6 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 보호소 사칭 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 7 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 보호소 사칭 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 8 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 보호소 계정 도용 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 9 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 보호소 계정 도용 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

                <tr class="board_info">
                  <td class="text-center"> 10 </td>
                  <td class="text-center"> 3 </td>
                  <td class="text-center"> 58 </td>
                  <td class="text-center"> 보호소 계정 도용 </td>
                  <td class="text-center"> 2023년 3월 25일 </td>
                  <td class="text-center"> 5000000일 </td>
                </tr>

              </tbody>

            </table>

            <br>
            <br>
            <!-- 페이지 번호 -->
            <nav aria-label="Page navigation example">
              <ul class="pagination" id="paging">
                <li class="page-item"><a class="page-link" href="#">이전</a></li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item"><a class="page-link" href="#">4</a></li>
                <li class="page-item"><a class="page-link" href="#">5</a></li>
                <li class="page-item"><a class="page-link" href="#">다음</a></li>
              </ul>
            </nav>

          </div>
        </div>
      </div>



    </form>
    <!-- Code injected by live-server -->
    <script>
      // <![CDATA[  <-- For SVG support
      if ('WebSocket' in window) {
        (function () {
          function refreshCSS() {
            var sheets = [].slice.call(document.getElementsByTagName("link"));
            var head = document.getElementsByTagName("head")[0];
            for (var i = 0; i < sheets.length; ++i) {
              var elem = sheets[i];
              var parent = elem.parentElement || head;
              parent.removeChild(elem);
              var rel = elem.rel;
              if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
              }
              parent.appendChild(elem);
            }
          }
          var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
          var address = protocol + window.location.host + window.location.pathname + '/ws';
          var socket = new WebSocket(address);
          socket.onmessage = function (msg) {
            if (msg.data == 'reload') window.location.reload();
            else if (msg.data == 'refreshcss') refreshCSS();
          };
          if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
            console.log('Live reload enabled.');
            sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
          }
        })();
      }
      else {
        console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
      }
// ]]>
    </script>

    <!-- Code injected by live-server -->
    <script>
      // <![CDATA[  <-- For SVG support
      if ('WebSocket' in window) {
        (function () {
          function refreshCSS() {
            var sheets = [].slice.call(document.getElementsByTagName("link"));
            var head = document.getElementsByTagName("head")[0];
            for (var i = 0; i < sheets.length; ++i) {
              var elem = sheets[i];
              var parent = elem.parentElement || head;
              parent.removeChild(elem);
              var rel = elem.rel;
              if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
              }
              parent.appendChild(elem);
            }
          }
          var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
          var address = protocol + window.location.host + window.location.pathname + '/ws';
          var socket = new WebSocket(address);
          socket.onmessage = function (msg) {
            if (msg.data == 'reload') window.location.reload();
            else if (msg.data == 'refreshcss') refreshCSS();
          };
          if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
            console.log('Live reload enabled.');
            sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
          }
        })();
      }
      else {
        console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
      }
	// ]]>
    </script>
    <!-- Code injected by live-server -->
    <script>
      // <![CDATA[  <-- For SVG support
      if ('WebSocket' in window) {
        (function () {
          function refreshCSS() {
            var sheets = [].slice.call(document.getElementsByTagName("link"));
            var head = document.getElementsByTagName("head")[0];
            for (var i = 0; i < sheets.length; ++i) {
              var elem = sheets[i];
              var parent = elem.parentElement || head;
              parent.removeChild(elem);
              var rel = elem.rel;
              if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
              }
              parent.appendChild(elem);
            }
          }
          var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
          var address = protocol + window.location.host + window.location.pathname + '/ws';
          var socket = new WebSocket(address);
          socket.onmessage = function (msg) {
            if (msg.data == 'reload') window.location.reload();
            else if (msg.data == 'refreshcss') refreshCSS();
          };
          if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
            console.log('Live reload enabled.');
            sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
          }
        })();
      }
      else {
        console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
      }
	// ]]>
    </script>


    <!-- Code injected by live-server -->
    <script>
      // <![CDATA[  <-- For SVG support
      if ('WebSocket' in window) {
        (function () {
          function refreshCSS() {
            var sheets = [].slice.call(document.getElementsByTagName("link"));
            var head = document.getElementsByTagName("head")[0];
            for (var i = 0; i < sheets.length; ++i) {
              var elem = sheets[i];
              var parent = elem.parentElement || head;
              parent.removeChild(elem);
              var rel = elem.rel;
              if (elem.href && typeof rel != "string" || rel.length == 0 || rel.toLowerCase() == "stylesheet") {
                var url = elem.href.replace(/(&|\?)_cacheOverride=\d+/, '');
                elem.href = url + (url.indexOf('?') >= 0 ? '&' : '?') + '_cacheOverride=' + (new Date().valueOf());
              }
              parent.appendChild(elem);
            }
          }
          var protocol = window.location.protocol === 'http:' ? 'ws://' : 'wss://';
          var address = protocol + window.location.host + window.location.pathname + '/ws';
          var socket = new WebSocket(address);
          socket.onmessage = function (msg) {
            if (msg.data == 'reload') window.location.reload();
            else if (msg.data == 'refreshcss') refreshCSS();
          };
          if (sessionStorage && !sessionStorage.getItem('IsThisFirstTime_Log_From_LiveServer')) {
            console.log('Live reload enabled.');
            sessionStorage.setItem('IsThisFirstTime_Log_From_LiveServer', true);
          }
        })();
      }
      else {
        console.error('Upgrade your browser. This Browser is NOT supported WebSocket for Live-Reloading.');
      }
	// ]]>
    </script>


  </body>

  </html>