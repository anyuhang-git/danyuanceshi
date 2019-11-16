<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery-1.8.2.min.js"></script>
</head>
<body>
按规模:
		<a href="list.do?vo=1">小型企业</a>
		<a href="list.do?vo=2">中型企业</a>
		<a href="list.do?vo=3">大型企业</a>
		<a href="list.do">小型企业</a><br><br>
		按类型:
		<a href="list.do?vo2=1">有限责任公司</a>
		<a href="list.do?vo2=2">股份有限公司</a>
		<a href="list.do?vo3=3">国有独资企业</a>
		<a href="list.do">其他</a>		
		<a href="list.do">全部</a><br><br>
      <table>
         <tr>
          
          <td>公司名称</td>
          <td>营业执照号</td>
          <td>法人代表</td>
          <td>注册资金</td>
          <td>公司类型</td>
          <td>成立日期</td>
          <td>操作</td>
         </tr>
      <c:forEach items="${info.list}" var="a">
      <tr>
          
          <td>${a.name }</td>
          <td>${a.regist_no }</td>
          <td>${a.corporation }</td>
          <td>${a.capital }</td>
          <td>${a.name1}</td>
          <td>${a.created }</td>
          <td>
           <input type="button" value="详情">
          </td>
         </tr>
      </c:forEach>
       <tr>
         <td colspan="11">
            当前页 ${info.pageNum}   共${info.total}条数据    总共${info.pages}
            
           <a href="list?pageNum=1">首页</a>   
           <a href="list?pageNum=${info.prePage }">上一页</a>   
           <a href="list?pageNum=${info.nextPage }">下一页</a>   
           <a href="list?pageNum=${info.pages }">尾页</a>   
         </td>
       
       </tr>
      </table>
</body>
</html>