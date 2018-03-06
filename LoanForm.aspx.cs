using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoanForm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        bool result = true;
        string value = args.Value;
        if(value.Length != 6)
        {
            result = false;
        }
        else
        {
            for(int x = 0; x < value.Length; x++)
            {
                if(x%2 == 0 && !isLetter(value[x]))
                {
                    result = false;
                }
                if(x%2 != 0 && !isNumber(value[x]))
                {
                    result = false;
                }
            }
        }
        args.IsValid = result;
    }
    bool isLetter(char x)
    {
        if(x >= 'a' && x <= 'z' || x >= 'A' && x <= 'Z')
        {
            return true;
        }
        return false;
    }
    bool isNumber(int x)
    {
        if(x >= '0' && x <= '9')
        {
            return true;
        }
        return false;
    }

    protected void btncalc_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Server.Transfer("Report.aspx");
        }        
    }
}