<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoanForm.aspx.cs" Inherits="LoanForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Loan Calculator</title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 267px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 392px;
        }
        .auto-style4 {
            width: 391px;
        }
        .auto-style8 {
            width: 68%;
        }
        .auto-style9 {
            width: 390px;
        }
        .auto-style10 {
            width: 431px;
        }
        .auto-style12 {
            width: 343px;
        }
        .auto-style13 {
            width: 349px;
        }
        .auto-style14 {
            width: 407px;
        }
        .auto-style15 {
            width: 391px;
            height: 29px;
        }
        .auto-style16 {
            width: 349px;
            height: 29px;
        }
        .auto-style17 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>
            <img alt="Calculator" class="auto-style1" src="Images/loan.jpg" /></h1>
        <h1>Loan Calculator</h1>
    <div>
    
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">First Name:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtfn" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfn" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Last Name:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtln" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtln" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Area Code:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtarea" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtarea" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtarea" ErrorMessage="Enter valid area code" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Phone Number:</td>
                <td class="auto-style12">
                    <asp:TextBox ID="txtphone" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphone" Display="Dynamic" ErrorMessage="Enter valid phone number" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
    <h2>Financial Info</h2>
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">Gross Income:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtgross" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtgross" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtgross" Display="Dynamic" ErrorMessage="Gross income must be greater than 0" Operator="GreaterThan" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Value of Assets(House, Car, Boat, etc.):</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtassetsvalue" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtassetsvalue" Display="Dynamic" ErrorMessage="Must be greater than or equal to 0" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">Investments:</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtinvestments" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtinvestments" Display="Dynamic" ErrorMessage="Must be greater than or equal to 0" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style15">Other Sources of Income:</td>
                <td class="auto-style16">
                    <asp:TextBox ID="txtothersources" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style17">
                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtothersources" Display="Dynamic" ErrorMessage="Must be greater than or equal to 0" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
            </tr>
        </table>
        <h2>Loan Info</h2>
            <table class="auto-style8">
            <tr>
                <td class="auto-style14">Total Liabilities of Applicants<br />
                    (Credit cards, other loans, etc.)</td>
                <td class="auto-style10">Amount of Loan</td>
                <td class="auto-style9">Interest Rate Requested</td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:TextBox ID="txtliabilities" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtloanamount" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style14">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtliabilities" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator5" runat="server" ControlToValidate="txtliabilities" Display="Dynamic" ErrorMessage="Must be greater than or equal to 0" Operator="GreaterThanEqual" Type="Double" ValueToCompare="0"></asp:CompareValidator>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtloanamount" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtloanamount" Display="Dynamic" EnableClientScript="False" ErrorMessage="Amount of Loan must be between 1000 and 1000000 inclusive" MaximumValue="1000000" MinimumValue="1000" Type="Double"></asp:RangeValidator>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtrate" Display="Dynamic" ErrorMessage="Field is Required"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtrate" Display="Dynamic" ErrorMessage="Interest Rate Requested must be between 2 and 20 inclusive" MaximumValue="20" MinimumValue="2" Type="Double"></asp:RangeValidator>
                </td>
            </tr>
            </table>        
        <asp:Button ID="btncalc" runat="server" OnClick="btncalc_Click" Text="Calculate" />
    </form>
</body>
</html>
