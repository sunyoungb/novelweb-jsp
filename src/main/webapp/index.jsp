<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/bootstrap.css" />
    <title>홈 | 소설 웹</title>
  </head>
  <body>
    
    <div class="container">
      <nav class="navbar navbar-expand-lg bg-black">
        <div class="container-fluid">
          <a class="navbar-brand text-white" href="">소설 웹</a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link active text-white" aria-current="page" href="">내 정보</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="write">글쓰기</a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="login">로그인</a>
              </li>
            </ul>
          </div>
        </div>
      </nav>

      <main>
          <h4>TOP 4(추천순)</h4>
          <div class="row row-cols-4 row-cols-md2 g-1">
            <% String[][] novel = { 
              {"소설1", "소설1에 대한 설명입니다.", "https://placeimg.com/640/480/animals/grayscale"}, 
              {"소설2", "소설2에 대한 설명입니다.", "https://placeimg.com/640/480/animals/grayscale"}, 
              {"소설3", "소설3에 대한 설명입니다.", "https://placeimg.com/640/480/animals/grayscale"},
              {"소설4", "소설4에 대한 설명입니다.", "https://placeimg.com/640/480/animals/grayscale"} 
            }; %>

            <% for (int i = 0; i < novel.length; i++) { %>
              <a href="#" style="text-decoration: none; color:black;">
                <div class="col">
                  <div class="card">
                    <img
                      src="<%=novel[i][2]%>"
                      class="card-img-top"
                      alt="<%=novel[i][0]%> 사진"
                    />
                    <div class="card-body">
                      <h5 class="card-title"><%= novel[i][0] %></h5>
                      <p class="card-text"><%= novel[i][1] %></p>
                    </div>
                  </div>
                </div>
              </a>
            <% } %>
      </div>
      <hr>

      <h4>소설 게시판(업데이트 순)</h4>
      <div class="card mb-3">
        <% for (int i = 0; i < novel.length; i++) { %>
        <a href="#" style="text-decoration: none; color:black;">
          <div class="row g-0">
            <div class="col-md-2">
              <img src="<%= novel[i][2] %>" class="img-fluid rounded-start" alt="<%=novel[i][0]%> 사진">
            </div>
            <div class="col-md-10 border border-secondary border-opacity-25">
              <div class="card-body">
                <h5 class="card-title"><%= novel[i][0] %></h5>
                <p class="card-text"><%= novel[i][1] %></p>
                <p class="card-text"><small class="text-muted">업데이트 일시 : OOOO OO OO OO:OO:OO</small></p>
              </div>
            </div>
          </div>
        </a>
        <% } %>
      </div>

      </main>
    </div>
    
    <script src="js/bootstrap.js"></script>
  </body>
</html>
