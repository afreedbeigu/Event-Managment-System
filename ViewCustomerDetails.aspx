<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewCustomerDetails.aspx.cs" Inherits="EMS.ViewCustomerDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1531px;
            height: 912px;
        }
        .auto-style2 {
            font-weight: bold;
            background-color: #66FF33;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('BackGround/cream.jpg')">
            <div class="auto-style3">
            <asp:GridView ID="GridView1" runat="server"  AutoGenerateColumns="False" AutoGenerateEditButton="True" DataSourceID="SqlDataSource1" Height="347px" Width="1519px">
                 <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                   
                    
                   
                     <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                   
                    
                   
                </Columns>
                <EditRowStyle BackColor="#2461BF" />  
     <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />  
     <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />  
     <RowStyle BackColor="#EFF3FB" />  
     <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />  
     <SortedAscendingCellStyle BackColor="#F5F7FB" />  
     <SortedAscendingHeaderStyle BackColor="#6D95E1" />  
     <SortedDescendingCellStyle BackColor="#E9EBEF" />  
     <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"  ConnectionString="<%$ ConnectionStrings:EmsConnectionString2 %>" SelectCommand="SELECT * FROM [Register1]" InsertCommand="INSERT INTO [Register1] ([UserID], [UserName], [Email], [Contact], [Address], [Gender], [Password]) VALUES (@UserID, @UserName, @Email, @Contact, @Address, @Gender, @Password)">
                <InsertParameters>
                    <asp:Parameter Name="UserID" Type="Int32" />
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Contact" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>
            <asp:Button ID="Button1" runat="server" BorderColor="Black" CssClass="auto-style2" Height="30px" OnClick="Button1_Click" Text="Back" Width="100px" />
            </strong>
        </div>
    </form>
</body>
</html>
