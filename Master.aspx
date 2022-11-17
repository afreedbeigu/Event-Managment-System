
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Master.aspx.cs" Inherits="EMS.Master1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style27 {
            width: 1504px;
            height: 725px;
        }
        .auto-style45 {
            text-align: center;
            font-size: xx-large;
            height: 52px;
            width: 1495px;
        }
        .auto-style46 {
            width: 100%;
            height: 597px;
        }
        .auto-style48 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style53 {
            background-color: #FFFFFF;
        }
        .auto-style54 {
            text-align: center;
            font-size: xx-large;
            height: 0px;
            width: 1498px;
        }
        .auto-style55 {
            text-align: center;
            font-size: xx-large;
            height: 52px;
            width: 1495px;
            color: #000000;
        }
        .auto-style56 {
            text-align: center;
        }
        .auto-style58 {
            color: #FFFFFF;
            font-size: x-large;
            text-decoration: none;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style27" style="background-image: url('BackGround/HomePage.jpg')">
        <p class="auto-style45">
            &nbsp;<p class="auto-style55" style="font-size: 45px">
            <strong><span class="auto-style53">Event Management System </span></strong>
        <p class="auto-style54">
            <table align="center" class="auto-style46">
                <tr>
                    <td class="auto-style56"><strong>
                        <asp:HyperLink ID="HyperLink5" runat="server" CssClass="auto-style58" NavigateUrl="~/Book Event.aspx">Book Event</asp:HyperLink>
                        <br />
                        <br />
                        <br />
                        <asp:HyperLink ID="HyperLink4" runat="server" CssClass="auto-style58" NavigateUrl="~/Feedback.aspx">Feed Back</asp:HyperLink>
                        <br />
                        <br />
                    <br />
                        <asp:HyperLink ID="HyperLink3" runat="server" CssClass="auto-style58" NavigateUrl="~/AboutUs.aspx">About Us</asp:HyperLink>
                    <br />
                        <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="Lime" BorderColor="Black" CssClass="auto-style48" ForeColor="Black" Height="40px" OnClick="Button1_Click" Text="Logout" Width="120px" />
                        </strong></td>
                </tr>
            </table>
    </form>
</body>
</html>
