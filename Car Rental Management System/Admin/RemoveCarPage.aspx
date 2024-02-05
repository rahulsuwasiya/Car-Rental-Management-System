<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RemoveCarPage.aspx.cs" Inherits="Car_Rental_Management_System.Admin.RemoveCarPage" %>

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
 <asp:TextBox ID="txtCarId" runat="server"  placeholder="Enter Car ID"></asp:TextBox>
<asp:RequiredFieldValidator ID="RequiredCarIdValidator" runat="server" ControlToValidate="txtCarId"
    Display="Dynamic" ForeColor="Red" ErrorMessage="Car ID is required"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="NumericValidator" runat="server" ControlToValidate="txtCarId"
        Display="Dynamic" ForeColor="Red" ErrorMessage="Please enter a valid numeric value" ValidationExpression="^\d+$"
        CssClass="validation-message"></asp:RegularExpressionValidator>

                        <br />
<br />
<asp:Button ID="RemoveCarButton" runat="server" CssClass="outer-button" Font-Bold="true" Text="REMOVE" OnClick="RemoveCarButton_Click"  />
        </div>
    </form>
</body>
</html>
