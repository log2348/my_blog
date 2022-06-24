<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ include file="layout/header.jsp" %>

<div class="container">
  <br />
  <br />
  <head>
    <title>My Blog</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style>
      .fakeimg {
        height: 200px;
        background: #aaa;
      }
      .multiLine {
        width: 250px;
        overflow: hidden;
        text-overflow: ellipsis;
        display: -webkit-box;
        -webkit-line-clamp: 1;
        -webkit-box-orient: vertical;
      }
    </style>
  </head>

  <div class="container" style="margin-top: 30px">
    <div class="row">
      <div class="col-sm-4">
        <h3>Jihyeon Park</h3>
        <br />
        <img class="img-fluid" src="profile.png" alt="Chania" width="300" height="300" />
        <h6>Introduce myself...</h6>
        <hr class="d-sm-none" />
      </div>

      <div class="col-sm-8">
        <c:forEach var="board" items="${boards.content}">
          <h3>${board.title}</h3>
          <hr />
          <h6 id="date" style="float: left">Date : ${board.createDate}</h6>
          <a type="button" class="btn btn-secondary" href="/myblog/showDetail/${board.id}" style="float: right">Detail</a>
          <br />
          <br />
          <div class="fakeimg">Preview Image..</div>
          <h7 type="text" class="multiLine">${board.content}</h7>
          <br />
        </c:forEach>
        <ul class="pagination">
          <c:choose>
            <c:when test="${boards.first}">
              <li class="page-item disabled"><a class="page-link" href="/myblog/list?page=${boards.pageable.pageNumber - 1}">Prev</a></li>
            </c:when>
            <c:otherwise>
              <li class="page-item"><a class="page-link" href="/myblog/list?page=${boards.pageable.pageNumber - 1}">Prev</a></li>
            </c:otherwise>
          </c:choose>

          <c:choose>
            <c:when test="${boards.last}">
              <li class="page-item disabled"><a class="page-link" href="/myblog/list?page=${boards.pageable.pageNumber + 1}">Next</a></li>
            </c:when>
            <c:otherwise>
              <li class="page-item"><a class="page-link" href="/myblog/list?page=${boards.pageable.pageNumber + 1}">Next</a></li>
            </c:otherwise>
          </c:choose>
        </ul>
      </div>
    </div>
  </div>

  <br />
  <br />
</div>
<br />

<%@ include file="layout/footer.jsp" %>
