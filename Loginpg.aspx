<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Loginpg.aspx.cs" Inherits="EMS.Loginpg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: center;
            width: 1551px;
            height: 751px;
        }
        .auto-style2 {
            width: 89%;
            height: 340px;
            margin-right: 181px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style35 {
            color: #FFFFFF;
        }
        .auto-style41 {
            width: 708px;
            text-align: right;
            color: #FFFFFF;
            font-size: large;
            height: 75px;
        }
        .auto-style50 {
            text-align: left;
            height: 75px;
        }
        .auto-style52 {
            width: 708px;
            text-align: right;
            height: 70px;
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style53 {
            height: 70px;
            text-align: left;
        }
        .auto-style64 {
            font-size: x-small;
        }
        .auto-style66 {
            background-color: #FFFFFF;
        }
        .auto-style68 {
            font-weight: bold;
            background-color: #00FF00;
        }
        .auto-style71 {
            font-size: xx-large;
        }
        .auto-style72 {
            font-size: large;
            background-color: #000000;
            color: #FFFFFF;
        }
        .auto-style73 {
            margin-right: 2px;
        }
    </style>
</head>
<body style="height: 750px; width: 1546px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('BackGround/BlacK.jpeg')">
            <strong>
            <br />
            <span class="auto-style71">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" BorderColor="Black" CssClass="auto-style72" NavigateUrl="~/Admin.aspx" Height="25px" Width="70px">  Admin </asp:HyperLink>
            </span>
            <br />
            <br />
            <br />
            <span class="auto-style35"><span class="auto-style71">Login</span></span><span class="auto-style71"><br class="auto-style35" />
            </span>
</strong><span class="auto-style35">
        <table class="auto-style2">
            <tr>
                <td class="auto-style52"><strong>UserName:</strong></td>
                <td class="auto-style53">
                    <asp:TextBox ID="TextBox2Password0" runat="server" Width="200px" BorderColor="Black" Height="28px"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2Password0" ErrorMessage="Please enter Username" ForeColor="White" Enabled="False" BackColor="Black" CssClass="auto-style64"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>Password:</strong></td>
                <td class="auto-style50">
                    <asp:TextBox ID="TextBox2Password" runat="server" TextMode="Password" Width="200px" BorderColor="Black" CssClass="auto-style73" Height="28px"></asp:TextBox>
                    &nbsp;<strong><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2Password" ErrorMessage="Please enter Password" ForeColor="White" BackColor="Black" BorderColor="White" CssClass="auto-style64"></asp:RequiredFieldValidator>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style35" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" Text="Sign In " OnClick="Button1_Click" BorderColor="Black" CssClass="auto-style68" Height="40px" Width="120px" />
                    </strong>
                    <br />
&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" BackColor="#000606" BorderColor="Black" Font-Bold="False" ForeColor="White" CssClass="auto-style66">Register New Account</asp:HyperLink>
                    </strong>
                </td>
            </tr>
            </table>
            </span><br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
    </form>
</body>
</html>

