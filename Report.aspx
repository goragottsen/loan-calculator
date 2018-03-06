<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Report.aspx.cs" Inherits="Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Report</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 234px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Report for 
            <asp:Label ID="lblfn" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblln" runat="server"></asp:Label>
        </h1>
    <div>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Total Assets:</td>
                <td>
                    <asp:Label ID="lblTotalAssest" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Total Liabilities:</td>
                <td>
                    <asp:Label ID="lblTotalLiabilities" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Amount of Loan (Requested):</td>
                <td>
                    <asp:Label ID="lblLoanAmount" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Interest Rate (Requested):</td>
                <td>
                    <asp:Label ID="lblInterestRate" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">Result:</td>
                <td>
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnback" runat="server" OnClick="btnback_Click" Text="Back to main page" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
