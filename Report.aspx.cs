using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //getting data from the previous page
            double totalAssets = 0;
            TextBox asset1 = (TextBox)PreviousPage.FindControl("txtgross");
            TextBox asset2 = (TextBox)PreviousPage.FindControl("txtassetsvalue");
            TextBox asset3 = (TextBox)PreviousPage.FindControl("txtinvestments");
            TextBox asset4 = (TextBox)PreviousPage.FindControl("txtothersources");

            TextBox fn = (TextBox)PreviousPage.FindControl("txtfn");
            TextBox ln = (TextBox)PreviousPage.FindControl("txtln");

            TextBox liabilities = (TextBox)PreviousPage.FindControl("txtliabilities");
            TextBox totalLoanAmount = (TextBox)PreviousPage.FindControl("txtloanamount");
            TextBox interestRate = (TextBox)PreviousPage.FindControl("txtrate");
            //end getting data from previous page

            totalAssets = totalAssets + Convert.ToDouble("0" + asset1.Text) + Convert.ToDouble("0" + asset2.Text) +
                Convert.ToDouble(asset3.Text) + Convert.ToDouble(asset4.Text);
            lblfn.Text = fn.Text;
            lblln.Text = ln.Text;
            lblTotalAssest.Text = "" + totalAssets;
            lblTotalLiabilities.Text = liabilities.Text;
            lblLoanAmount.Text = totalLoanAmount.Text;
            lblInterestRate.Text = interestRate.Text;

            if (checkApproval(totalAssets, Convert.ToDouble("0" + liabilities.Text)))
            {
                lblResult.Text = "Approved";
            }
            else
            {
                lblResult.Text = "Denied";
            }
    }
    protected bool checkApproval(double assets, double liabilities)
    {
        if (assets < liabilities)
            return false;
        return true;
    }

    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoanForm.aspx");
    }
}