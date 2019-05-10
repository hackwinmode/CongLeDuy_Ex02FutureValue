<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Chapter 2 Future Value</title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            height: 23px;
            width: 186px;
        }
        .auto-style3 {
            width: 186px;
        }
    </style>
</head>
<body>
    <img src="Image/MurachLogo.jpg" /><h1>401K FUTURE VALUE CALCULATOR</h1>
    <form id="form1" runat="server">
        <div>
            <table style="">
                <tr>
                    <td class="auto-style1">
                        <asp:Label ID="lblMonth" runat="server" Text="Monthly investment"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="drlInvest" runat="server">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblAnnual" runat="server" Text="Annual interest rate"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRate" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblYear" runat="server" Text="Number of years"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtYear" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblFuture" runat="server" Text="Future value"></asp:Label>
                    </td>
                    <td class="auto-style3">
                        <asp:Label ID="lblFutureValue" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnCal" runat="server" Text="Calculate" Width="109px" OnClick="btnCal_Click" />
                    </td>
                    <td class="auto-style3">
                        <asp:Button ID="btnClear" runat="server" Text="Clear" Width="109px" CausesValidation="False" OnClick="btnClear_Click" />
                    </td>
                </tr>
             </table>
            <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ErrorMessage="Interest Rate is required." 
                            Display ="Dynamic"
                            ControlToValidate="txtRate"
                            Forecolor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ErrorMessage="Interest Rate must from 1 to 20" 
                            ControlTovalidate="txtRate" 
                            MaximumValue="20"
                            Minimumvalue="1" Type="Double"
                            Forecolor="Red">
                        </asp:RangeValidator>
            </p>
            <p>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ErrorMessage="Number of years is required." 
                            Display ="Dynamic"
                            ControlToValidate="txtYear"
                            Forecolor="Red">
                        </asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ErrorMessage="Number of year must from 1 to 45" 
                            ControlTovalidate="txtYear" 
                            MaximumValue="45"
                            Minimumvalue="1" Type="Integer"
                            Forecolor="Red">
                        </asp:RangeValidator>
           </p>

        </div>
    </form>
</body>
</html>
