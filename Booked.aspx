<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Booked.aspx.cs" Inherits="EMS.Booked" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            font-size: large;
            text-decoration: none;
        }
        .auto-style3 {
            text-align: left;
            width: 2123px;
            height: 738px;
        }
        .auto-style4 {
            text-align: center;
        }
    </style>
</head>
<body style="width: 2165px; height: 361px">
    <form id="form1" runat="server">
        <div class="auto-style3" style="background-image: url('BackGround/cream.jpg')">
            <div class="auto-style4">
                <span class="auto-style1"><strong>Thank You, Your Order Booked Successfully!!</strong></span><strong><br class="auto-style1" />
                <br class="auto-style1" />
                </strong><span class="auto-style1"><strong>Your Order Details:<br />
                </strong></span><br />
            </div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="UserID" HeaderText="UserID" SortExpression="UserID" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                    <asp:BoundField DataField="EquipmentName" HeaderText="EquipmentName" SortExpression="EquipmentName" />
                    <asp:BoundField DataField="EquipmentCost" HeaderText="EquipmentCost" SortExpression="EquipmentCost" />
                    <asp:BoundField DataField="EventType" HeaderText="EventType" SortExpression="EventType" />
                    <asp:BoundField DataField="VenueType" HeaderText="VenueType" SortExpression="VenueType" />
                    <asp:BoundField DataField="Noofguests" HeaderText="Noofguests" SortExpression="Noofguests" />
                    <asp:BoundField DataField="VenueCost" HeaderText="VenueCost" SortExpression="VenueCost" />
                    <asp:BoundField DataField="EventDate" HeaderText="EventDate" SortExpression="EventDate" />
                    <asp:BoundField DataField="LightType" HeaderText="LightType" SortExpression="LightType" />
                    <asp:BoundField DataField="LightName" HeaderText="LightName" SortExpression="LightName" />
                    <asp:BoundField DataField="LightCost" HeaderText="LightCost" SortExpression="LightCost" />
                    <asp:BoundField DataField="FoodType" HeaderText="FoodType" SortExpression="FoodType" />
                    <asp:BoundField DataField="MealType" HeaderText="MealType" SortExpression="MealType" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                    <asp:BoundField DataField="SelectedName" HeaderText="SelectedName" SortExpression="SelectedName" />
                    <asp:BoundField DataField="DishCost" HeaderText="DishCost" SortExpression="DishCost" />
                    <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EmsConnectionString2 %>" SelectCommand="select Register1.UserID, UserName, Email, Contact, EquipmentName, EquipmentCost, EventType, VenueType, Noofguests, VenueCost, EventDate, LightType, LightName, LightCost, FoodType, MealType, Quantity, SelectedName, DishCost, EquipmentCost+LightCost+VenueCost+(Quantity*DishCost) as &quot;Total&quot;
From Register1,Equipments, Venue1, light, Food
Where Register1.UserID=Equipments.UserID And 
Register1.UserID = Venue1.UserID and
Register1.UserID = light.UserID and 
Register1.UserID=Food.UserID
and Register1.UserID = (Select max(UserID) from Register1);"></asp:SqlDataSource>
            <div class="auto-style4">
                <br />
                <br />
                <strong>
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style2" NavigateUrl="~/Master.aspx">| Home |</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="auto-style2" NavigateUrl="~/Feedback.aspx">|Feedback|</asp:HyperLink>
                </strong>
                <br />
            </div>
        </div>
    </form>
</body>
</html>
