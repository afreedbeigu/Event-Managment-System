<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Add Light.aspx.cs" Inherits="EMS.Add_Light" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-align: center;
        }
        .auto-style2 {
            width: 84%;
            height: 495px;
        }
        .auto-style4 {
            width: 89px;
            }
        .auto-style6 {
            font-size: x-large;
        }
        .auto-style9 {
            height: 163px;
            width: 356px;
            color: #FFFFFF;
        }
        .auto-style12 {
            width: 1504px;
            height: 898px;
        }
        .auto-style13 {
            color: #FFFFFF;
        }
        .auto-style14 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style17 {
            font-size: medium;
            color: #00FFFF;
        }
        .auto-style18 {
            font-weight: bold;
            background-color: #00FF00;
        }
        .auto-style19 {
            font-size: large;
            text-align: center;
        }
        .auto-style20 {
            font-size: xx-large;
            text-align: center;
            height: 3px;
        }
        .auto-style21 {
            margin-left: 0px;
            background-color: #000000;
        }
        .auto-style22 {
            background-color: #000000;
        }
        .auto-style23 {
            font-size: large;
        }
        .auto-style25 {
            font-size: xx-large;
            text-align: center;
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style26 {
            width: 356px;
            color: #FFFFFF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('BackGround/BookEvent.png')" class="auto-style12">
        <p class="auto-style1">
            &nbsp;<p class="auto-style25">
            <strong>Book Lights</strong></p>
        <p class="auto-style20">
            &nbsp;</p>
        <p class="auto-style19">
            <span class="auto-style13"><strong>Enter Your UserID:</strong></span>
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="Black"></asp:TextBox>
            <strong>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2" CssClass="auto-style17" ErrorMessage="*Required UserID"></asp:RequiredFieldValidator>
            </strong>
        </p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4" rowspan="2">
                    <br />
                    <br />
                </td>
                <td class="auto-style26"><span class="auto-style14"><strong>
                    <br />
                    <br />
                    <br />
                    Light Type:&nbsp; </strong></span>
                    <br class="auto-style13" />
                    <span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><strong><asp:CheckBoxList ID="CheckBoxList3" runat="server" CssClass="auto-style21">
                        <asp:ListItem>In-door</asp:ListItem>
                        <asp:ListItem>Out-door</asp:ListItem>
                    </asp:CheckBoxList>
                    </strong>
                </td>
            </tr>
            <tr>
                <td class="auto-style9"><span class="auto-style6"><strong><span class="auto-style13">
                    <br />
                    Lights</span><br class="auto-style13" />
                    </strong></span>
                    <strong>
                    <asp:CheckBoxList ID="CheckBoxList2" runat="server" Height="180px" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged" Width="257px"  AutoPostBack="true" CssClass="auto-style22">
                        <asp:ListItem Text="String Light" Value="3000"></asp:ListItem>
                        <asp:ListItem Text="Aqualina Outdoor Lights" Value="3500"></asp:ListItem>
                        <asp:ListItem Text="LED Upights" Value="4590"></asp:ListItem>
                        <asp:ListItem Text="LED Wall Washer" Value="3450"></asp:ListItem>
                        <asp:ListItem Text="PAR Lights" Value="2490"></asp:ListItem>
                        <asp:ListItem Text="Moving Intelligent Light" Value="3050"></asp:ListItem>
                    </asp:CheckBoxList>
                    </strong>
                    <br class="auto-style13" />
                    <br class="auto-style13" />
                    <span class="auto-style13"><strong><span class="auto-style23">Total Cost:</span></strong>
                    </span>
                    <asp:TextBox ID="TextBox1" runat="server" BorderColor="Black" Height="25px" Width="150px"></asp:TextBox>
                    <br class="auto-style13" />
                    <br />
                    <br class="auto-style13" />
                    <strong>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Book Lights" BorderColor="Black" CssClass="auto-style18" Height="40px" Width="150px" />
                    </strong><span class="auto-style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                </td>
            </tr>
        </table>
            &nbsp;</p>
    </form>
    </body>
</html>
