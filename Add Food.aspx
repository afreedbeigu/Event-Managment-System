<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Food.aspx.cs" Inherits="EMS.Add_Food" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 91%;
            height: 621px;
        }
        .auto-style5 {
            text-align: center;
            width: 1497px;
            height: 898px;
        }
        .auto-style39 {
            font-size: x-large;
            text-align: left;
        }
        .auto-style59 {
            font-weight: bold;
            background-color: #00FF00;
            font-size: large;
        }
        .auto-style65 {
            background-color: #00FFFF;
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style70 {
            font-size: x-large;
            text-align: left;
            height: 73px;
            color: #000000;
            width: 42px;
        }
        .auto-style71 {
            font-size: x-large;
            text-align: left;
            height: 53px;
            width: 42px;
        }
        .auto-style76 {
            color: #FFFFFF;
        }
        .auto-style77 {
            font-weight: bold;
            background-color: #00FF00;
            font-size: medium;
        }
        .auto-style79 {
            color: #66FFFF;
            font-size: x-small;
        }
        .auto-style80 {
            font-size: large;
        }
        .auto-style82 {
            font-size: small;
            color: #00FFFF;
        }
        .auto-style83 {
            font-size: medium;
            color: #00FFFF;
        }
        .auto-style87 {
            font-size: x-large;
            text-align: left;
            height: 73px;
            color: #FFFFFF;
            width: 224px;
        }
        .auto-style88 {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style84 {
            font-size: large;
            text-align: left;
            height: 106px;
            color: #FFFFFF;
            width: 197px;
        }
        .auto-style92 {
            font-size: x-large;
            text-align: left;
            height: 73px;
            color: #FFFFFF;
            width: 200px;
        }
        .auto-style98 {
            font-size: x-large;
            text-align: left;
            height: 84px;
            color: #FFFFFF;
            width: 700px;
        }
        .auto-style99 {
            font-size: x-large;
            text-align: left;
            height: 84px;
            color: #000000;
            width: 42px;
        }
        .auto-style100 {
            font-size: x-large;
            text-align: left;
            height: 84px;
            color: #FFFFFF;
            width: 200px;
        }
        .auto-style102 {
            font-size: x-large;
            text-align: left;
            height: 160px;
            width: 42px;
        }
        .auto-style104 {
            font-size: x-large;
            text-align: left;
            height: 53px;
            color: #FFFFFF;
            width: 700px;
        }
        .auto-style105 {
            font-size: x-large;
            text-align: left;
            height: 53px;
            color: #FFFFFF;
            width: 200px;
        }
        .auto-style107 {
            font-size: x-large;
            text-align: left;
            width: 200px;
            height: 81px;
        }
        .auto-style108 {
            font-size: x-large;
            text-align: left;
            height: 81px;
        }
        .auto-style61 {
            font-size: medium;
            margin-left: 4px;
            color: #FFFFFF;
        }
        .auto-style110 {
            font-size: x-large;
            text-align: left;
            height: 45px;
        }
        .auto-style111 {
            font-size: x-large;
            text-align: left;
            height: 45px;
            color: #FFFFFF;
            width: 200px;
        }
        .auto-style112 {
            color: #FFFFFF;
            font-size: large;
            background-color: #000000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style5" style="border-style: groove; font-size: 45px; background-image: url('BackGround/BookEvent.png');">
            <br />
            <strong><span class="auto-style88">Book Food</span><br class="auto-style65" />
            </strong>
            <br />
            <span class="auto-style80"><strong><span class="auto-style76">Enter your UserID:</span> </strong>
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="Black" Height="30px" Width="120px"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style83" ErrorMessage="*Required UserID"></asp:RequiredFieldValidator>
            <br />
            </strong>
            </span>
        <table class="auto-style1">
            <tr>
                <td class="auto-style99">
                    </td>
                <td class="auto-style100">
                    <strong>Food Type:</strong></td>
                <td class="auto-style98">
                    <strong>
                    <asp:RadioButton ID="RadioButton1" runat="server" Text="Veg" GroupName="FoodType" CssClass="auto-style112"/>
&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="RadioButton2" runat="server" Text="Non-Veg" GroupName="FoodType" CssClass="auto-style112" />
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style70">
                    </td>
                <td class="auto-style92">
                    <strong>Meal Type:</strong></td>
                <td class="auto-style87">
                    <strong>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged" Width="168px" CssClass="auto-style84" Height="62px">
                        <asp:ListItem>Lunch</asp:ListItem>
                        <asp:ListItem>Dinner</asp:ListItem>
                    </asp:CheckBoxList>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style71">
                    </td>
                <td class="auto-style105">
                    <strong>No.of Quantity:</strong></td>
                <td class="auto-style104">
                    <strong>
                    <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" BorderColor="Black" Height="28px" Width="150px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" CssClass="auto-style82" ErrorMessage="*Required" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style102" rowspan="2">
                    </td>
                <td class="auto-style107">
                    <strong>
                    <span class="auto-style76">Dish Style:</span>&nbsp;&nbsp;&nbsp;
                    </strong>
                    <br />
                    <br />
                </td>
                <td class="auto-style108">
                    <strong>
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="auto-style61" Height="222px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="218px" AutoPostBack="true">
                        <asp:ListItem Text="South-Indian Thali" Value="100"></asp:ListItem>
                        <asp:ListItem Text="North-Indian Thali" Value="130"></asp:ListItem>
                        <asp:ListItem Text="Gujarathi Thali" Value="120"></asp:ListItem>
                        <asp:ListItem Text="Punjabi Thali" Value="150"></asp:ListItem>
                    </asp:CheckBoxList>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style111">
                    <strong>Dish Cost</strong></td>
                <td class="auto-style110">
                    <strong>
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged1" BorderColor="Black" Height="28px" Width="150px"></asp:TextBox>
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style79" Text="*/ Plate"></asp:Label>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style39" colspan="3">
                    <strong>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" Text="Book Food" BorderColor="Black" CssClass="auto-style59" Height="40px" Width="150px" OnClick="Button3_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </strong>
                    <asp:Button ID="Button4" runat="server" BorderColor="Black" CssClass="auto-style77" Height="40px" OnClick="Button4_Click" Text="Next" Width="75px" />
                </td>
            </tr>
            </table>
             </div>
    </form>
   
</body>
</html>
