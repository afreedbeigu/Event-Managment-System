<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewDetails.aspx.cs" Inherits="EMS.ViewDetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource4" Height="172px" Width="373px">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" ReadOnly="True" SortExpression="UserID"></asp:BoundField>
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName"></asp:BoundField>
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"></asp:BoundField>
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact"></asp:BoundField>
                    <asp:BoundField DataField="EquipmentName" HeaderText="EquipmentName" SortExpression="EquipmentName"></asp:BoundField>
                    <asp:BoundField DataField="EquipmentCost" HeaderText="EquipmentCost" SortExpression="EquipmentCost"></asp:BoundField>
                    <asp:BoundField DataField="EventType" HeaderText="EventType" SortExpression="EventType"></asp:BoundField>
                    <asp:BoundField DataField="VenueType" HeaderText="VenueType" SortExpression="VenueType"></asp:BoundField>
                    <asp:BoundField DataField="Noofguests" HeaderText="Noofguests" SortExpression="Noofguests"></asp:BoundField>
                    <asp:BoundField DataField="VenueCost" HeaderText="VenueCost" SortExpression="VenueCost"></asp:BoundField>
                    <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate"></asp:BoundField>
                    <asp:BoundField DataField="LightType" HeaderText="LightType" SortExpression="LightType"></asp:BoundField>
                    <asp:BoundField DataField="LightName" HeaderText="LightName" SortExpression="LightName"></asp:BoundField>
                    <asp:BoundField DataField="LightCost" HeaderText="LightCost" SortExpression="LightCost"></asp:BoundField>
                    <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType"></asp:BoundField>
                    <asp:BoundField DataField="MealType" HeaderText="MealType" SortExpression="MealType"></asp:BoundField>
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity"></asp:BoundField>
                    <asp:BoundField DataField="SelectedName" HeaderText="SelectedName" SortExpression="SelectedName"></asp:BoundField>
                    <asp:BoundField DataField="DishCost" HeaderText="DishCost" SortExpression="DishCost"></asp:BoundField>
                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total"></asp:BoundField>
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
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:EmsConnectionString2 %>" SelectCommand="select Register1.UserID, UserName, Email, Contact, EquipmentName, EquipmentCost, EventType, VenueType, Noofguests, VenueCost, EventDate, LightType, LightName, LightCost, FoodType, MealType, Quantity, SelectedName, DishCost, EquipmentCost+LightCost+VenueCost+(Quantity*DishCost) as Total;
From Register1,Equipments, Venue1, light, Food
Where Register1.UserName='&quot;+Session[&quot;New&quot;].ToString()+&quot;' Order by Register1.UserID  Desc;
"></asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
