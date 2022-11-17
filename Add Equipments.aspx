<%--  --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Equipments.aspx.cs" Inherits="EMS.Add_Equipments" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            width: 1500px;
            height: 878px;
        }
        .auto-style8 {
            width: 1505px;
            height: 881px;
        }
        .auto-style11 {
            width: 88%;
            height: 385px;
            margin-top: 0px;
            margin-bottom: 0px;
        }
        .auto-style13 {
            height: 477px;
            width: 988px;
        }
        .auto-style14 {
            height: 477px;
            width: 2792px;
            text-align: left;
        }
        .auto-style15 {
            font-size: medium;
        }
        .auto-style18 {
            font-weight: bold;
            background-color: #00FF00;
            font-size: medium;
        }
        .auto-style24 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style25 {
            font-size: large;
        }
        .auto-style26 {
            color: #FFFFFF;
        }
        .auto-style27 {
            color: #FFFFFF;
            text-decoration: underline;
        }
        .auto-style28 {
            color: #00FFFF;
            font-size: medium;
        }
        </style>
</head>
<body style="height: 887px; width: 1503px">
    <form id="form1" runat="server" class="auto-style8">
        <div class="auto-style1" style="font-size: 45px; background-image: url('BackGround/BookEvent.png');">
            <br />
            <strong><span class="auto-style27">Book Equipments</span><br class="auto-style27" />
            </strong>
            <br />
            <strong>
                        <span class="auto-style25"><span class="auto-style26">Enter your UserID: </span>
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black" Height="30px" Width="120px"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required UserID" CssClass="auto-style28"></asp:RequiredFieldValidator>
            <br />
            <br />
                        </span></strong>
            <br />
            <table class="auto-style11">
                <tr>
                    <td class="auto-style13"></td>
                    <td class="auto-style14"><strong>
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="auto-style24" Height="225px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="453px"
                            AutoPostBack="true">
                            <asp:ListItem Text ="DJ" Value="1500"></asp:ListItem>
                            <asp:ListItem Text ="Drone Camera" Value="2500"></asp:ListItem>
                            <asp:ListItem Text ="Videography" Value="2345"></asp:ListItem>
                            <asp:ListItem Text="Fog Machine " Value=" 1245"></asp:ListItem>
                            <asp:ListItem Text="Speakers " Value="1500"></asp:ListItem>
                            <asp:ListItem Text="Projector and Screen " Value="1300"></asp:ListItem>
                        </asp:CheckBoxList>
                        <span class="auto-style15">
                        <br />
                        </span>
                        <br />
                        <span class="auto-style24">Total cost:
                        <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="150px"></asp:TextBox>
                        <br />
                        </span></strong> 
                        <br />
                        <asp:Button ID="Button2" runat="server" BorderColor="Black" CssClass="auto-style18" Height="40px" Text="Book Eqipments" Width="180px" OnClick="Button2_Click" />
                    &nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" BorderColor="Black" CssClass="auto-style18" Height="40px" Text="Next" Width="130px" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
             </div>
    </form>
   
</body>
</html>
