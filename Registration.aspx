<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="EMS.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            text-align: left;
            width: 1529px;
            height: 734px;
        }
        .auto-style2 {
            width: 74%;
            height: 432px;
            margin-bottom: 44px;
            margin-right: 194px;
        }
        .auto-style6 {
            width: 686px;
            height: 92px;
        }
        .auto-style9 {
            width: 126px;
            height: 38px;
            text-align: left;
        }
        .auto-style11 {
            font-size: x-small;
        }
        .auto-style14 {
            height: 46px;
            text-align: left;
        }
        .auto-style16 {
            height: 92px;
            text-align: left;
        }
        .auto-style17 {
            width: 126px;
            height: 92px;
            text-align: left;
        }
        .auto-style19 {
            width: 126px;
            height: 45px;
        }
        .auto-style22 {
            width: 126px;
            height: 56px;
        }
        .auto-style23 {
            height: 56px;
        }
        .auto-style24 {
            width: 686px;
            text-align: right;
            height: 54px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style25 {
            width: 126px;
            height: 54px;
        }
        .auto-style26 {
            height: 54px;
            text-align: left;
        }
        .auto-style30 {
            width: 686px;
            text-align: right;
            height: 47px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style31 {
            width: 126px;
            height: 47px;
        }
        .auto-style32 {
            height: 47px;
            text-align: left;
        }
        .auto-style35 {
            height: 44px;
        }
        .auto-style36 {
            font-size: xx-large;
        }
        .auto-style37 {
            color: #FFFFFF;
            background-color: #000000;
            }
        .auto-style38 {
            font-weight: bold;
            background-color: #00FF00;
        }
        .auto-style39 {
            color: #000000;
            font-size: x-large;
            background-color: #FFFFFF;
        }
        .auto-style40 {
            font-size: x-small;
            color: #FFFFFF;
            background-color: #000000;
        }
        .auto-style41 {
            width: 686px;
            text-align: right;
            height: 56px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style42 {
            width: 686px;
            text-align: right;
            height: 38px;
            /*font-size: large;*/
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style43 {
            height: 38px;
        }
        .auto-style44 {
            color: #FFFFFF;
            font-size: xx-large;
        }
        .auto-style45 {
            width: 686px;
            text-align: right;
            height: 45px;
            /*font-size: large;*/
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style46 {
            height: 45px;
        }
        .auto-style47 {
            width: 686px;
            text-align: right;
            height: 44px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style48 {
            width: 126px;
            height: 44px;
        }
        .auto-style49 {
            width: 686px;
            text-align: right;
            height: 46px;
            /*font-size: large;*/
            color: #FFFFFF;
            font-size: large;
        }
        .auto-style50 {
            width: 126px;
            height: 46px;
        }
        .auto-style51 {
            text-align: center;
        }
        .auto-style52 {
            width: 126px;
            height: 56px;
            text-align: center;
        }
    </style>
</head>
<body style="height: 715px; width: 1525px; margin-top: 12px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="background-image: url('BackGround/BlacK.jpeg')">
            <div class="auto-style51">
            <strong>
            <br />
            <br />
            <br />
                <span class="auto-style44">Create New Account</span><span class="auto-style36" style="border-color: #FFFFFF; font-variant: normal; font-style: inherit; font-weight: 900; text-transform: capitalize; letter-spacing: normal; background-image: inherit;"><br class="auto-style37" />
            </span>
            </strong>
        
            </div>
        
        <table class="auto-style2">
            <tr>
                <td class="auto-style41"><strong>UserID:</strong></td>
                <td class="auto-style52">
                    <strong>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="    Label" CssClass="auto-style39"></asp:Label>
                    </strong>
                </td>
                <td class="auto-style23">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style41"><strong>UserName:</strong></td>
                <td class="auto-style22">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" BorderColor="Black" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style23"></td>
            </tr>
            <tr>
                <td class="auto-style45"><strong>Email:</strong></td>
                <td class="auto-style19">
                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" BackColor="White" BorderColor="Black" ForeColor="#00001C" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style46"></td>
            </tr>
            <tr>
                <td class="auto-style24"><strong>Contact:</strong></td>
                <td class="auto-style25">
                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" BorderColor="Black" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style26"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style40" ErrorMessage="*Required Contact Number"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style47"><strong>Address:</strong></td>
                <td class="auto-style48">
                    <asp:TextBox ID="TextBox6" runat="server" Width="200px" BorderColor="Black" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style35"></td>
            </tr>
            <tr>
                <td class="auto-style42"><strong>Gender:</strong></td>
                <td class="auto-style9">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="100px" BackColor="White" Height="28px">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style43"></td>
            </tr>
            <tr>
                <td class="auto-style30"><strong>Password:</strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="200px" BorderColor="Black" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style32">
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style11" ErrorMessage="*Password Doesn't Match" ForeColor="White" BackColor="Black"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style49"><strong>Confirm Password:</strong></td>
                <td class="auto-style50">
                    <asp:TextBox ID="TextBox5" runat="server" TextMode="Password" Width="200px" BorderColor="Black" BorderStyle="Groove" Height="28px"></asp:TextBox>
                </td>
                <td class="auto-style14"><strong>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5" CssClass="auto-style40" ErrorMessage="*Confirm Password"></asp:RequiredFieldValidator>
                    </strong></td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style17">
                    <strong>
                    <asp:Button ID="Button2" runat="server" BorderColor="Black" Text="Register" Width="120px" OnClick="Button2_Click" CausesValidation="False" CssClass="auto-style38" Height="40px" />
                    </strong>
                </td>
                <td class="auto-style16">
                    <strong>
                    <asp:Button ID="Button1" runat="server" BorderColor="Black" Text="Cancel" Width="120px" CssClass="auto-style38" Height="40px" OnClick="Button1_Click" />
                    </strong>
                </td>
            </tr>
        </table>
            <br />
            <br />
            <br />
            <br />
            </div>
    </form>
</body>
</html>

