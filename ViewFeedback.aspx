<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewFeedback.aspx.cs" Inherits="EMS.ViewFeedback" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1489px;
            height: 782px;
        }
        .auto-style2 {
            font-weight: bold;
            background-color: #00FF00;
        }
        .auto-style4 {
            background-color: #00FFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('BackGround/cream.jpg')">
            <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="258px" Width="1360px" CssClass="auto-style4">
                <Columns>
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Review" HeaderText="Review" SortExpression="Review" />
                    <asp:BoundField DataField="Feedback" HeaderText="Feedback" SortExpression="Feedback" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" HorizontalAlign="Left" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Left" /> 
                <RowStyle BackColor="#EFF3FB" />  
                   <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
                 <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />  
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmsConnectionString2 %>" SelectCommand="SELECT * FROM [Feedback]"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button1" runat="server" BorderColor="Black" CssClass="auto-style2" Height="30px" OnClick="Button1_Click" Text="Back" Width="100px" />
            </strong>
        </div>
    </form>
</body>
</html>
