<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RentalsPage.aspx.cs" Inherits="Car_Rental_Management_System.Admin.RentalsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title>Dashboard Design</title>
    <link href="RentalsPage.css" rel="stylesheet" />
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
</head>
<body>
  <form runat="server" >  
    
 <div class="sidebar">
        <div class="logo"></div>
        <ul class="menu">
            <li class="active">
                <a href="#">
                    <i class="fa-solid fa-house-chimney"></i>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a href="#">
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
                <a href="CustomerSection.aspx">
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
                <img src="../Images/UserIcon.png" />
            </div>

        </div>
        <div class="card--container">

            <div class="card--wrapper">
                <div class="payment--card light-red">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Total Cars</span>
                            <span class="amount--value">
                                <asp:Literal Text="" ID="lblCarCount" runat="server" /></span>
                        </div>
                        <i class="fa-solid fa-car icon"></i>
                    </div>
                    
                </div>
                <div class="payment--card light-purple">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Users</span>
                            <span class="amount--value">
                                <asp:Literal Text="" ID="lblCustomers" runat="server" /></span>
                        </div>
                        <i class="fa-solid fa-users icon dark-purple"></i>
                    </div>
                    
                </div>
                <div class="payment--card light-green">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Transaction</span>
                            <span class="amount--value">Rs.<asp:Literal Text="" ID="lblTransaction" runat="server" />/-</span>
                        </div>
                        <i class="fa-solid fa-money-bill icon dark-green"></i>
                    </div>
                   
                </div>
                <div class="payment--card light-blue">
                    <div class="card--header">
                        <div class="amount">
                            <span class="title">
                                Rentals</span>
                            <span class="amount--value">
                                <asp:Literal ID="lblCompRent" Text="" runat="server" /></span>
                        </div>
                        <i class="fa-solid fa-check-double  icon dark-blue"></i>
                    </div>
                    
                </div>
            </div>
        </div>
       
        <div class="tabular--wrapper">
            <h3 class="main--title">Recent Transaction</h3>
            <div class="table-container">
                 <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  >
                 <Columns>
                    <asp:BoundField DataField="B_Id" HeaderText="Transaction ID"  />
                    <asp:BoundField DataField="BookingDate" HeaderText="Transaction Date"  />
                    <asp:BoundField DataField="Name" HeaderText="Customer Name"  />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile No."  />
                    <asp:BoundField DataField="Email" HeaderText="Email"  />
                    <asp:BoundField DataField="Address" HeaderText="Address"  />   
                    <asp:BoundField DataField="CarName" HeaderText="Car Name"  />
                    <asp:BoundField DataField="PricePerDay" HeaderText="Per Day(Amt)"  />   
                    <asp:BoundField DataField="FromDate" HeaderText="Rent"  />
                    <asp:BoundField DataField="ToDate" HeaderText="Return" />
                    <asp:BoundField DataField="TotalAmt" HeaderText="Total Amt"  />
                </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
   
   </form> 

</body>
</html>
