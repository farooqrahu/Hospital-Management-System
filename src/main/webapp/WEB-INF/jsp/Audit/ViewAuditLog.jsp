<%-- 
    Document   : ViewAuditLog
    Created on : Aug 29, 2020, 9:46:49 PM
    Author     : Asus
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Audit LOg View</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
         <link rel="stylesheet" href="/assets/test/styles.css" />
        
          <!--         for delete & Update icon-->
         <script src='https://kit.fontawesome.com/a076d05399.js'></script>
         
         <!--                for datatable-->
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.21/datatables.min.css"/>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.21/datatables.min.js"></script>
        
            <!--         for delete & Update icon-->
         <script src='https://kit.fontawesome.com/a076d05399.js'></script>
         
          <!--                medical icon-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         
         
        
    </head>
    <body>
        
        <%@include file="/assets/test/header.html"%>
        
        
        
        <nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
<!--      <a class="navbar-brand" href="#">Hospital Management System</a>-->
      <a class="navbar-brand" href="#">Welcome to Admin Panel</a>
      <a href="/index"><i class="fa fa-plus-square" style="font-size:48px;color:red"></i></a> 
    </div>
      
    <ul class="nav navbar-nav navbar-right">
      <li class="active"><a href="/admin">Home</a></li>
      <li><a href="/user/adminProfile/${user.code}">Profile</a></li>
      <li><a href="/Audit/view">Audit Log</a></li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">User<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/user/create">Add User</a></li>
          <li><a href="/user/view">User List</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Doctor<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/doctor/create">Add Doctor</a></li>
          <li><a href="/doctor/view">Doctor List</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Patient<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">Add Patient</a></li>
          <li><a href="/appoin/PatientList">Patient List</a></li>
        </ul>
      </li>
      
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Receptionist<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/rec/create">Add Receptionist</a></li>
          <li><a href="/rec/view">Receptionist List</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Appointment<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/appoin/create">Make Appointment</a></li>
          <li><a href="/appoin/view">Appointment List</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Service<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/addService/create">Add Service</a></li>
          <li><a href="/addService/view">Service List</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Invoice<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="/invoice/create">Create Invoice</a></li>
          <li><a href="/invoice/view">Doctor done Patient List</a></li>
        </ul>
      </li>
      
      
      <li><a href="/user/login">Logout</a></li>
      
    </ul>
         
  </div>
</nav>
<!--            End nav-->
        
        
        
        
         <div class="row">
                        <div class="col-md-12"> 
                            <div class="col-md-1"></div> 
                            <div class="col-md-10">






                             



                                   
                               
                                <span></span><br>
                                <span></span><br>
                               


                                  

                                <div style="text-align: center">
                                    <h1 style="color: #008CBA">List of Auditlog</h1>
                                     <span></span><br>
                                    <table class="table table-hover" id="myTable">
                                        <thead>
                                            <tr>
                                                
                                                <th style="color: #0056b3">Action</th>
                                                <th style="color: #0056b3">Username</th>

                                                <th style="color: #0056b3">Email</th>
                                                <th style="color: #0056b3">Role</th>
                                             
                                               
                                                <th style="color: #0056b3">Time</th>
                                                <th style="color: #0056b3">Date</th>
                                                <th style="color: #0056b3">Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${auditList}" var="doc">
                                                <tr>
                          
                                                    <td style="color: #777777">${doc.action}</td>
                                                    <td style="color: #777777">${doc.username}</td>

                                                    <td style="color: #777777">${doc.email}</td>
                                                    <td style="color: #777777">${doc.role}</td>
                   
                                                    <td style="color: #777777">${doc.time}</td>
                                                    <td style="color: #777777">${doc.date}</td>
                                                    
                                                    <td>
                                                        <a href="#/doctor/edit/${doc.id}">
                                                        <i class='fas fa-edit' style='font-size:30px;color:#194b4d'></i>
                                                        </a>
                                                        
                                                        
                                                        <a href="/Audit/delete/${doc.id}">
                                                        <i class='fas fa-trash-alt' style='font-size:30px;color:darkcyan'></i>
                                                        </a>
                                                    </td>

                                                </tr>
                                            </c:forEach>


                                        </tbody>
                                    </table>
                                </div>
                                   
                                    </div>
                                   
                                   <div class="col-md-1"></div>
                                   
                                    </div>
                                   
                                                     

                            </div>
                           
                        </div>
                    </div>

        <script>
            $(document).ready(function () {
                $('#myTable').DataTable();
            });

        </script>
        
        
    </body>
</html>
