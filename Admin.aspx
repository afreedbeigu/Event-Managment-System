<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="EMS.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            height: 745px;
            width: 1501px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style4 {
            font-size: medium;
            font-weight: bold;
            background-color: #66FF33;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6 {
            color: #FFFFFF;
        }
        .auto-style8 {
            font-size: x-large;
            color: #FFFFFF;
        }
    </style>
</head>
<body style="width: 1481px; height: 756px; margin-right: 21px; margin-bottom: 19px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('BackGround/Adminpg.jpg')">
            <br />
            <span class="auto-style5">
            <br />
            <br />
            <span class="auto-style6"><strong>Admin</strong><br />
            <br />
            </span></span><br />
            <p class="auto-style2">
                <span class="auto-style8"><strong>Username:</strong></span>
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" Height="25px" Width="160px"></asp:TextBox>
        </p>
        <p class="auto-style2">
            <span class="auto-style8"><strong>Password:</strong></span> <asp:TextBox ID="tb2" runat="server" BorderColor="Black" Height="25px" Width="160px" TextMode="Password"></asp:TextBox>
        </p>
        <p class="auto-style2">
            &nbsp;</p>
        <p class="auto-style2">
            <strong>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" BorderColor="Black" CssClass="auto-style4" Height="37px" Width="77px" />
            </strong>
        </p>
             </div>
    </form>

</body>
</html>
