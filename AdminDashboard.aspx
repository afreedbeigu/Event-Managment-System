<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="EMS.AdminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
            height: 734px;
            width: 1546px;
        }
        .auto-style7 {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style9 {
            color: #000066;
            text-decoration: underline;
            background-color: #FEFFFF;
        }
        .auto-style10 {
            text-decoration: underline;
        }
        .auto-style11 {
            color: #000066;
            background-color: #FEFFFF;
        }
        .auto-style12 {
            color: #000000;
            font-size: xx-large;
            background-color: #FFFFFF;
        }
        .auto-style13 {
            font-weight: bold;
            background-color: #66FF33;
        }
    </style>
</head>
<body style="width: 1556px; height: 101px">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('BackGround/Adminpg.jpg')">
            <strong style="font-size: 50px">
            <br />
            <br />
            <br />
            <span class="auto-style9">Admin DashBoard</span><span class="auto-style10"><br class="auto-style11" />
            </span><span class="auto-style7" style="font-size: 60px">
            <br />
            </span>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style12" NavigateUrl="~/ViewCustomerDetails.aspx">View Customer&#39;s Details</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style12" NavigateUrl="~/ViewFeedback.aspx">Customer&#39;s Feedback</asp:HyperLink>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style12" NavigateUrl="~/ViewDetails.aspx">View Order&#39;s View Orders</asp:HyperLink>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" BorderColor="Black" CssClass="auto-style13" OnClick="Button1_Click" Text="Logout" Height="27px" Width="64px" />
            </strong>
        </div>
    </form>
</body>
</html>
