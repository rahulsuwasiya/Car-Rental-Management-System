<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentPage.aspx.cs" Inherits="Car_Rental_Management_System.Payment.PaymentPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="../StyleSheets/Style.css" rel="stylesheet" />
      <link href="PaymentPage.css" rel="stylesheet" />
</head>
<body>
    
        <div class="container"> 
  
        <form id="form1" runat="server">
  
            <div class="row"> 
  
                <div class="col"> 
                    <h3 class="title"> 
                        Billing Address 
                    </h3> 
  
                    <div class="inputBox"> 
                        <label for="name"> 
                              Full Name: 
                          </label> 
                       
                        <asp:TextBox ID="txtName" runat="server" TextMode="SingleLine" placeholder="Enter your full name" />
                         <asp:RequiredFieldValidator ID="rfvName" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
                        
                    </div> 
  
                    <div class="inputBox"> 
                        <label for="email"> 
                              Email: 
                          </label> 
                        
                        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter email address" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div> 
  
                    <div class="inputBox"> 
                        <label for="address"> 
                              Address: 
                          </label> 
                        <asp:TextBox ID="txtAddress" runat="server" TextMode="SingleLine" placeholder="Enter address" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtAddress" ErrorMessage="*"></asp:RequiredFieldValidator>
                        
                    </div> 
  
                    <div class="inputBox"> 
                        <label for="city"> 
                              Mobile No.: 
                          </label> 
                        <asp:TextBox ID="txtMobile" runat="server" TextMode="Number" placeholder="Enter mobie no"  MaxLength="10" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtMobile" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div> 
  
                    <div class="flex"> 
  
                        <div class="inputBox"> 
                            <label for="state"> 
                                  State: 
                              </label> 
                            <asp:TextBox ID="txtState" runat="server" TextMode="SingleLine" placeholder="Enter state"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtState" ErrorMessage="*"></asp:RequiredFieldValidator>
                            
                        </div> 
  
                        <div class="inputBox"> 
                            <label for="zip"> 
                                  Zip Code: 
                              </label> 
                      
                             <asp:TextBox ID="txtZipCode" runat="server" TextMode="Number" placeholder="123 456"  />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtZipCode" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div> 
  
                    </div> 
  
                </div> 
                <div class="col"> 
                    <h3 class="title">Payment (Rs.<asp:Literal ID="lblTotalAmt" Text="" runat="server" />)</h3> 
  
                    <div class="inputBox"> 
                        <label for="name"> 
                              Card Accepted: 
                          </label> 
                        <img src="../Images/cards.png" 
                             alt="credit/debit card image" /> 
                    </div> 
  
                    <div class="inputBox"> 
                        <label for="cardName"> 
                              Name On Card: 
                          </label> 
                        <asp:TextBox ID="txtCardName" runat="server" TextMode="SingleLine" placeholder="Enter card name"   />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtCardName" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div> 
  
                    <div class="inputBox"> 
                        <label for="cardNum"> 
                              Credit Card Number: 
                          </label>
                        <asp:TextBox ID="txtcardNum" runat="server" TextMode="SingleLine" MaxLength="19" placeholder="1111-2222-3333-4444"   />
                       <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtcardNum" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div> 
  
                    <div class="inputBox"> 
                        <label for="">Exp Month:</label>
                         <asp:DropDownList ID="drpMonth" runat="server">
                            <asp:ListItem Text="Month" />
                            <asp:ListItem Text="January" />
                            <asp:ListItem Text="February" />
                            <asp:ListItem Text="March" />
                            <asp:ListItem Text="April" />
                            <asp:ListItem Text="May" />
                            <asp:ListItem Text="June" />
                            <asp:ListItem Text="July" />
                            <asp:ListItem Text="August" />
                            <asp:ListItem Text="September" />
                            <asp:ListItem Text="October" />
                            <asp:ListItem Text="November" />
                            <asp:ListItem Text="December" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" InitialValue="Month" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="drpMonth" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </div> 
  
  
                    <div class="flex"> 
                        <div class="inputBox"> 
                            <label for="">Exp Year:</label> 
                           
                            <asp:DropDownList ID="drpYear" runat="server">
                                <asp:ListItem Text="Year" />
                                <asp:ListItem Text="2024" />
                                <asp:ListItem Text="2025" />
                                <asp:ListItem Text="2026" />
                                <asp:ListItem Text="2027" />
                                <asp:ListItem Text="2028" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" InitialValue="Year" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="drpYear" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div> 
  
                        <div class="inputBox"> 
                            <label for="cvv">CVV</label>
                            <asp:TextBox ID="txtCVV" runat="server" TextMode="Number" placeholder="1234"   />
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ForeColor="Red" Font-Size="Large" ControlToValidate="txtCVV" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div> 
                    </div> 
  
                </div> 
  
            </div> 
  
            <asp:Button ID="BtnPay" Text="Proceed to Pay" CssClass="submit_btn" OnClick="BtnPay_Click" runat="server" />
        </form> 
  
    </div> 
    
</body>
</html>
