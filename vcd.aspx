<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vcd.aspx.cs" Inherits="EMS.vcd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title></title>
</head>
<body>
    <asp:Repeater ID="Repeater1" runat="server"></asp:Repeater>
    <form id="form1" runat="server">
        <div>
                <table border="1">
                <tr>
                    <td>Id</td>
                    <td>UserName</td>
                    <td>Email</td>
                    <td>contact</td>
                    <td>view full order</td>
                </tr>
                <tr>
                    <td><%#Eval("UserID") %></td>
                    <td><%#Eval("UserName") %></td>
                    <td><%#Eval("Email") %></td>
                    <td><%#Eval("Contact") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/ViewDetails.aspx">View Full Details</asp:HyperLink>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
