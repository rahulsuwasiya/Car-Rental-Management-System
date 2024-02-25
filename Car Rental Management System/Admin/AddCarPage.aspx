<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCarPage.aspx.cs" Inherits="Car_Rental_Management_System.Admin.AddCarPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../StyleSheets/Style.css" rel="stylesheet" />
<style type="text/css">
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    .container {
        max-width: 400px;
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        box-sizing: border-box;
    }

    .form-group {
        margin-bottom: 15px;
        position: relative;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        box-sizing: border-box;
        border: 1px solid #ccc;
        border-radius: 4px;
        margin-bottom: 8px;
    }

    .validation-message {
        color: #ff0000;
        position: absolute;
        bottom: -20px;
        left: 0;
    }

    input[type="button"] {
        background-color: #4caf50;
        color: #fff;
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
    }

    input[type="button"]:hover {
        background-color: #45a049;
    }

    
</style>





</head>
<body>
    <form id="form1" runat="server">
        <div>
            

<asp:TextBox ID="txtCarName" runat="server"  placeholder="Enter Car Name"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredCarNameValidator" runat="server" ControlToValidate="txtCarName"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Car Name is required"></asp:RequiredFieldValidator>

<asp:TextBox ID="txtCarCategory" runat="server"  placeholder="Enter Car Category"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredCarCategoryValidator" runat="server" ControlToValidate="txtCarCategory"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Car Category is required"></asp:RequiredFieldValidator>

            <asp:TextBox ID="txtCarCapacity" runat="server"  placeholder="Enter Car Capacity(Seats)"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCarCapacity"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Car Capacity is required"></asp:RequiredFieldValidator>

<asp:TextBox ID="txtCarKmpL" runat="server"  placeholder="Enter Car Kmp/L"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCarKmpL"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Car Kmp/L is required"></asp:RequiredFieldValidator>

<asp:TextBox ID="txtPricePerDay" runat="server"  placeholder="Enter Price Per Day"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredPricePerDayValidator" runat="server" ControlToValidate="txtPricePerDay"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Price Per Day is required"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="PriceFormatValidator" runat="server" ControlToValidate="txtPricePerDay"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Invalid Price Format"
    ValidationExpression="^\d+(\.\d{1,2})?$"></asp:RegularExpressionValidator>

<asp:TextBox ID="txtCarInfo" runat="server"  placeholder="Enter Car information"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCarInfo"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Car Information is required"></asp:RequiredFieldValidator>
<asp:FileUpload ID="CarImageUpload" runat="server" />

            <br />
<br />
<asp:Button ID="addCarButton" runat="server" CssClass="outer-button" Text="ADD" OnClick="AddCarButton_Click" />
        </div>
    </form>
</body>
</html>
