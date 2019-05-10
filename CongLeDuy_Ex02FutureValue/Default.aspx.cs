using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
            for (int i = 0; i <= 500; i += 100)
                drlInvest.Items.Add(i.ToString());
    }

    protected void btnCal_Click(object sender, EventArgs e)
    {
        if (IsValid)
        {
            int monthInvest = Convert.ToInt32(drlInvest.SelectedValue);
            decimal yearRate = Convert.ToDecimal(txtRate.Text);
            int year = Convert.ToInt32(txtYear.Text);

            decimal monthRate = yearRate / 12 / 100;
            decimal futureValue = 0;
            int months = year * 12;


            for (int i = 0; i < months; i++)
            {
                futureValue = (futureValue + monthInvest) * (1 + monthRate);
            }

            lblFutureValue.Text = futureValue.ToString("c");
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        drlInvest.SelectedIndex = -1;
        txtRate.Text = "";
        txtYear.Text = "";
        lblFutureValue.Text = "";
    }
}