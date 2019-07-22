<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: nguyenxuanhoang
  Date: 2019-07-22
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="Customer.Customer" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <% ArrayList<Customer> customers = new ArrayList<>();
  customers.add(new Customer("Mai Van Hoan","Ha Noi", "1983-08-20"));
  customers.add(new Customer("Nguyen Van Nam","Hai Phong", "1986-09-24"));
  customers.add(new Customer("Dao Huy Duc","Bac Giang","09/09/2000"));
  pageContext.setAttribute("customers",customers);
  %>
  <h2>Danh sach khach hang</h2>
 <table border= "1 px solid black" width="600 px">
  <tr>
    <th>
      Ho ten
    </th>
    <th>
      Ngay sinh
    </th>
    <th>
      Dia chi
    </th>
  </tr>
   <c:forEach var="customer" items="#{customers}">
     <tr>
       <td>
         <c:out value="${customer.name}"/>
       </td>
       <td>
         <c:out value="${customer.dateOfBirth}"/>
       </td>
       <td>
         <c:out value="${customer.address}"/>
       </td>
     </tr>

   </c:forEach>
 </table>
  </body>
</html>
