<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8"/>
    <title>Title</title>
    <script type="text/javascript" th:src="@{/jquery-1.12.3.min.js}"></script>
    <script type="text/javascript" th:src="@{/bootstrap/js/bootstrap.min.js}"></script>
    <link type="text/css" rel="stylesheet" th:href="@{/bootstrap/css/bootstrap-theme.min.css}"/>
    <link type="text/css" rel="stylesheet" th:href="@{/bootstrap/css/bootstrap.css}"/>
</head>
<body>
<form th:action="@{/queryAnimal/findAnimalQuery}" th:object="${animalQuery}" th:method="get">
    <div class="form-group">
        <label class="col-sm-2 control-label" >name</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="name" placeholder="请输入名称" th:field="*{name}"/>
        </div>
        <label class="col-sm-2 control-label">specie</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="specie" placeholder="请输Specie" th:field="*{specie}"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-2 control-label" >color</label>
        <div class="col-sm-4">
            <input type="text" class="form-control" id="author" placeholder="请输Color" th:field="*{color}"/>
        </div>
        <div class="col-sm-4">
            <button class="btn btn-default" type="submit" placeholder="查询">查询</button>
        </div>
        這是index2
    </div>
</form>
    <table class="table table-hover">
        <thead>
        <tr>
            <th>ID</th>
            <th>name</th>
            <th>Specie</th>
            <th>Color</th>
        </tr>
        </thead>
        <tbody>
        <tr th:each="obj : ${datas}">
            <td th:text="${obj.id}">${obj.id}</td>
            <td th:text="${obj.name}">${obj.name}</td>
            <td th:text="${obj.specie}">${obj.specie}</td>
            <td th:text="${obj.color}">${obj.color}</td>
        </tr>
        </tbody>
    </table>
        <div th:include="page :: pager" th:remove="tag"></div>
</body>
</html>
            