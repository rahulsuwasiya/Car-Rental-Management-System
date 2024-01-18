<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerSection.aspx.cs" Inherits="Car_Rental_Management_System.Admin.CustomerSection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
    <title></title>
     <link href="RentalsPage.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
    <form runat="server">
    <div class="sidebar">
       <div class="logo"></div>
       <ul class="menu">
           <li class="active">
               <a href="RentalsPage.aspx">
                   <i class="fa-solid fa-house-chimney"></i>
                   <span>Dashboard</span>
               </a>
           </li>
           <li>
               <a href="RentalsPage.aspx">
                   <i class="fa-solid fa-gear"></i>
                   <span>Rentals</span>
               </a>
           </li>
           <li>
               <a href="CarSectionPage.aspx">
                   <i class="fa-solid fa-car"></i>
                   <span>Car section</span>
               </a>
           </li>
           <li>
               <a href="#">
                   <i class="fa-solid fa-users"></i>
                   <span>Customer Section</span>
               </a>
           </li>
       
           <li class="logout">
            <a runat="server" onserverclick="Unnamed_ServerClick">
                <i class="fa-solid fa-right-from-bracket"></i>
                <span>Logout</span>
            </a>
        </li>
       </ul>
   </div>
   <div class="main--content">
       <div class="header--wrapper">
           <div class="header--title">
               <h2>Dashboard</h2>
           </div>
           <div class="user--info">
               <h4><asp:Label Text="" ID="lblAdmin" runat="server" /></h4>
               <img src="Rahul.jpg" alt="" />
           </div>


       </div>
       
       <div class="tabular--wrapper">
           <h3 class="main--title">Recent Transaction</h3>
           <div class="table-container">
               <table>
                   <thead>
                       <tr>
                           <th>Transaction Date</th>
                           <th>Customer</th>
                           <th>Car</th>
                           <th>Rent</th>
                           <th>Return</th>
                           <th>Total</th>
                           <th>Status</th>
                       </tr>
                   </thead>
                   <tbody>
                       <tr>
                           <td>
                               01/01/2024
                           </td>
                           <td>
                               Rahul S
                           </td>
                           <td>
                              Fortuner
                           </td>
                           <td>
                               01/01/2024
                           </td>
                           <td>
                               07/01/2024
                           </td>
                           <td>
                              Rs.8000/-
                           </td>
                           <td>
                               Pending
                           </td>
                       </tr>
                       <tr>
                           <td>
                               01/01/2024
                           </td>
                           <td>
                               Rahul S
                           </td>
                           <td>
                              Fortuner
                           </td>
                           <td>
                               01/01/2024
                           </td>
                           <td>
                               07/01/2024
                           </td>
                           <td>
                              Rs.8000/-
                           </td>
                           <td>
                               Pending
                           </td>
                       </tr>
                       
                       <tr>
                           <td>
                               01/01/2024
                           </td>
                           <td>
                               Rahul S
                           </td>
                           <td>
                              Fortuner
                           </td>
                           <td>
                               01/01/2024
                           </td>
                           <td>
                               07/01/2024
                           </td>
                           <td>
                              Rs.8000/-
                           </td>
                           <td>
                               Pending
                           </td>
                       </tr>
                   </tbody>
                   <tfoot>
                       <tr>
                           <td colspan="7">Total:$1000</td>
                       </tr>
                   </tfoot>

               </table>
           </div>
       </div>
   </div>
        </form>
</body>
</html>
